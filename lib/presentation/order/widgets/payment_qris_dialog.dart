import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:quickbill/core/components/buttons.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/order/widgets/payment_success_dialog.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:widgets_to_image/widgets_to_image.dart';

// Import your existing models and blocs
import '../../../core/constants/colors.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/datasources/checkout_local_datasource.dart';
import '../../../data/models/request/order_request_model.dart';
import '../bloc/qris/qris_bloc.dart';
import '../bloc/order/order_bloc.dart';
import '../bloc/send_order/send_order_bloc.dart';

class PaymentQrisDialog extends StatefulWidget {
  final int price;
  const PaymentQrisDialog({super.key, required this.price});

  @override
  State<PaymentQrisDialog> createState() => _PaymentQrisDialogState();
}

class _PaymentQrisDialogState extends State<PaymentQrisDialog> {
  String orderId = '';
  Timer? timer;
  bool isQrContentReady = false;
  String qrContent = '';
  String? deepLinkUrl;
  bool isPaymentProcessing = false;

  WidgetsToImageController controller = WidgetsToImageController();

  @override
  void initState() {
    super.initState();
    orderId = 'QRS-${DateTime.now().millisecondsSinceEpoch}';
    _generateQRCode();
  }

  void _generateQRCode() {
    context.read<QrisBloc>().add(
      QrisEvent.generateQRCode(orderId, widget.price),
    );
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void _startPaymentStatusCheck() {
    if (isPaymentProcessing) return;

    isPaymentProcessing = true;

    const interval = Duration(seconds: 3);
    timer = Timer.periodic(interval, (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }
      context.read<QrisBloc>().add(QrisEvent.checkPaymentStatus(orderId));
    });
  }

  Future<void> _processSuccessfulPayment(
    List<dynamic> products,
    int totalQuantity,
    int totalPrice,
    int nominalBayar,
    int idKasir,
  ) async {
    timer?.cancel();

    final validItems =
        products.where((item) => item.product.id != null).toList();

    final actualNominalBayar = widget.price;

    final kembalian = actualNominalBayar - totalPrice;

    final authData = await AuthLocalDatasource().getAuthData();

    final orderRequest = OrderRequestModel(
      paymentMethod: 'qris',
      nominalBayar: actualNominalBayar,
      totalItem: totalQuantity,
      totalPrice: totalPrice,
      kasirId: authData.user.id,
      kembalian: kembalian,
      transactionTime: DateFormat('yyyy-MM-ddTHH:mm:ss').format(DateTime.now()),
      paymentStatus: "success",
      orderItems:
          validItems.map((item) {
            return OrderItemModel(
              productId: item.product.id!,
              quantity: item.quantity,
              totalPrice: item.quantity * item.product.price,
            );
          }).toList(),
    );

    context.read<SendOrderBloc>().add(SendOrderEvent.sendOrder(orderRequest));

    CheckoutLocalDatasource.clearCheckoutItems();

    context.read<OrderBloc>().add(
      OrderEvent.addNominalBayar(actualNominalBayar),
    );
    Navigator.of(context).pop();
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => const PaymentSuccessDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        child: SingleChildScrollView(
          child: Container(
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: AppColors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.teal, AppColors.blueElectric],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'QRIS CODE',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                BlocConsumer<OrderBloc, OrderState>(
                  listener: (context, orderState) {},
                  builder: (context, orderState) {
                    return orderState.maybeWhen(
                      orElse:
                          () =>
                              const Center(child: CircularProgressIndicator()),
                      success: (
                        products,
                        totalQuantity,
                        totalPrice,
                        paymentMethod,
                        nominalBayar,
                        idKasir,
                        namaKasir,
                        customerName,
                      ) {
                        return BlocConsumer<QrisBloc, QrisState>(
                          listener: (context, qrisState) {
                            qrisState.maybeWhen(
                              qrisResponse: (data) {
                                if (data.actions != null &&
                                    data.actions!.isNotEmpty) {
                                  for (var action in data.actions!) {
                                    if (action.name == 'generate-qr-code' &&
                                        action.url != null) {
                                      setState(() {
                                        qrContent = action.url!;
                                        isQrContentReady = true;
                                      });
                                      _startPaymentStatusCheck();
                                    }

                                    if (action.name == 'deeplink-redirect' &&
                                        action.url != null) {
                                      setState(() {
                                        deepLinkUrl = action.url;
                                      });
                                    }
                                  }
                                }
                              },
                              success: (message) {
                                _processSuccessfulPayment(
                                  products,
                                  totalQuantity,
                                  totalPrice,
                                  nominalBayar,
                                  idKasir,
                                );
                              },
                              error: (message) {
                                if (message.contains('500') ||
                                    message.contains('501') ||
                                    message.contains('502') ||
                                    message.contains('503') ||
                                    message.contains('504') ||
                                    message.contains('505')) {
                                  timer?.cancel();

                                  String errorMessage = _mapErrorMessage(
                                    message,
                                  );

                                  showDialog(
                                    context: context,
                                    builder:
                                        (context) => Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            ),
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                              color: AppColors.white,
                                            ),
                                            padding: const EdgeInsets.all(20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Payment Error',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: AppColors.black,
                                                  ),
                                                ),
                                                const SizedBox(height: 16),
                                                Text(
                                                  errorMessage,
                                                  textAlign: TextAlign.center,
                                                ),
                                                const SizedBox(height: 24),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    if (message.contains(
                                                          '502',
                                                        ) ||
                                                        message.contains(
                                                          '503',
                                                        ) ||
                                                        message.contains(
                                                          '504',
                                                        ) ||
                                                        message.contains('505'))
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(
                                                            context,
                                                          ).pop();
                                                          _generateQRCode();
                                                        },
                                                        child: const Text(
                                                          'Retry',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color:
                                                                AppColors
                                                                    .blueElectric,
                                                          ),
                                                        ),
                                                      ),
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(
                                                          context,
                                                        ).pop();
                                                        Navigator.of(
                                                          context,
                                                        ).pop();
                                                      },
                                                      child: const Text(
                                                        'Cancel',
                                                        style: TextStyle(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors
                                                                  .blueElectric,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                  );
                                }
                              },

                              orElse: () {},
                            );
                          },
                          builder: (context, qrisState) {
                            return Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 24,
                                horizontal: 16,
                              ),
                              child: Column(
                                children: [
                                  if (qrisState is Loading)
                                    Container(
                                      width: 256,
                                      height: 256,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    )
                                  else if (qrisState is Error)
                                    Container(
                                      width: 256,
                                      height: 256,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Error: ${qrisState.message}',
                                              style: TextStyle(
                                                color: Colors.red,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 16),
                                            ElevatedButton(
                                              onPressed: _generateQRCode,
                                              child: Text(
                                                'Retry',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.blueElectric,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  else if (isQrContentReady)
                                    WidgetsToImage(
                                      controller: controller,
                                      child: Container(
                                        width: 256,
                                        height: 256,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                          color: Colors.white,
                                        ),
                                        child: Center(
                                          child: QrImageView(
                                            data: qrContent,
                                            version: QrVersions.auto,
                                            size: 240,
                                            backgroundColor: Colors.white,
                                            padding: EdgeInsets.all(8),
                                          ),
                                        ),
                                      ),
                                    )
                                  else
                                    Container(
                                      width: 256,
                                      height: 256,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    ),

                                  SizedBox(height: 16),
                                  Text(
                                    'Scan QRIS to make Payment',
                                    style: TextStyle(
                                      color: Color(0xFF7292AD),
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Price: ${totalPrice.currencyFormatRp}',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Transaction ID: $orderId',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  if (deepLinkUrl != null)
                                    Padding(
                                      padding: EdgeInsets.only(top: 16),
                                      child: Button(
                                        onPressed: () async {
                                          if (await canLaunch(deepLinkUrl!)) {
                                            await launch(deepLinkUrl!);
                                          }
                                        },
                                        gradientColors: [
                                          AppColors.teal,
                                          AppColors.blueElectric,
                                        ],
                                        label: 'Open in Mobile Banking',
                                      ),
                                    ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _mapErrorMessage(String code) {
    if (code.contains('500')) {
      return 'Terjadi masalah di server. Coba beberapa saat lagi.';
    }
    if (code.contains('501')) return 'Fitur pembayaran tidak tersedia.';
    if (code.contains('502')) {
      return 'Masalah koneksi dengan bank. Coba ulangi.';
    }
    if (code.contains('503')) {
      return 'Bank sedang mengalami gangguan. Silakan coba lagi.';
    }
    if (code.contains('504')) {
      return 'Sistem deteksi fraud sedang tidak tersedia.';
    }
    if (code.contains('505')) {
      return 'Gagal membuat nomor VA. Silakan coba lagi nanti.';
    }
    return 'Terjadi kesalahan. Coba lagi.';
  }
}
