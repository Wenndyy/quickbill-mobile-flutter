import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quickbill/core/extensions/build_context_ext.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/core/extensions/string_ext.dart';
import 'package:quickbill/presentation/order/bloc/send_order/send_order_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/constants/colors.dart';

import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/datasources/checkout_local_datasource.dart';
import '../../../data/models/request/order_request_model.dart';
import '../bloc/order/order_bloc.dart';
import 'payment_success_dialog.dart';

class PaymentCashDialog extends StatefulWidget {
  final int price;


  const PaymentCashDialog({
    super.key,
    required this.price,
 
  });

  @override
  State<PaymentCashDialog> createState() => _PaymentCashDialogState();
}

class _PaymentCashDialogState extends State<PaymentCashDialog> {
  TextEditingController? priceController;
  int selectedOption = 0;

  @override
  void initState() {
    priceController = TextEditingController(
      text: widget.price.currencyFormatRp,
    );
    super.initState();
  }

  @override
  void dispose() {
    priceController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset(
                      Assets.icons.icClose.path,
                      width: 25,
                      height: 25,
                      color: AppColors.blueElectric,
                    ),
                  ),
                  SizedBox(width: 30),
                  Text(
                    'Payment - Cash',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.blueElectric,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Total Bill',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.blueElectric,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.blueElectric),
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(
                  widget.price.currencyFormatRp,
                  style: TextStyle(fontSize: 16, color: AppColors.blueElectric),
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Select Nominal',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: AppColors.blueElectric,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  SizedBox(
                    width: 125,
                    height: 25,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedOption = 0;
                          priceController!.text = widget.price.currencyFormatRp;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedOption == 0
                                ? Color(0xFF2E79BA)
                                : Colors.white,
                        foregroundColor:
                            selectedOption == 0
                                ? Colors.white
                                : AppColors.blueElectric,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Color(0xFF2E79BA)),
                        ),
                        padding: EdgeInsets.zero,
                        minimumSize: Size(120, 25),
                        elevation: 0,
                      ),
                      child: Text(
                        'Exact Amount',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 7),
                  SizedBox(
                    height: 25,
                    child: OutlinedButton(
                      onPressed: () {
                        setState(() {
                          selectedOption = 1;
                          priceController!.clear();
                        });
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: AppColors.blueElectric),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        backgroundColor:
                            selectedOption == 1
                                ? AppColors.blueElectric
                                : Colors.white,
                        foregroundColor:
                            selectedOption == 1
                                ? Colors.white
                                : AppColors.blueElectric,
                      ),
                      child: Text(
                        'Change Amount',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color:
                              selectedOption == 1
                                  ? Colors.white
                                  : AppColors.blueElectric,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (selectedOption == 1) ...[
                SizedBox(height: 16),
                TextField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.blueElectric),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: AppColors.blueElectric),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: AppColors.blueElectric,
                        width: 2,
                      ),
                    ),
                    hintText: 'Enter amount',
                    hintStyle: TextStyle(color: AppColors.grey),
                  ),
                  onChanged: (value) {
                    final int priceValue = value.toIntegerFromText;
                    priceController!.text = priceValue.currencyFormatRp;
                    priceController!.selection = TextSelection.fromPosition(
                      TextPosition(offset: priceController!.text.length),
                    );
                  },
                ),
              ],
              SizedBox(height: 24),

              BlocConsumer<OrderBloc, OrderState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    loading:
                        () => showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder:
                              (context) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                        ),
                    success: (
                      data,
                      qty,
                      total,
                      payment,
                      nominal,
                      idKasir,
                      namaKasir,
                      customerName,
                    ) async {
                      // Filter item valid
                      final validItems =
                          data
                              .where((item) => item.product.id != null)
                              .toList();

                      final authData =
                          await AuthLocalDatasource().getAuthData();

                      final orderRequest = OrderRequestModel(
                        paymentMethod: payment,
                        nominalBayar: nominal,
                        totalItem: qty,
                        totalPrice: total,
                        kasirId: authData.user.id,
                        kembalian: nominal - total,
                        transactionTime: DateFormat(
                          'yyyy-MM-ddTHH:mm:ss',
                        ).format(DateTime.now()),
                        paymentStatus: "pending",
                        orderItems:
                            validItems.map((item) {
                              return OrderItemModel(
                                productId: item.product.id!,
                                quantity: item.quantity,
                                totalPrice: item.quantity * item.product.price,
                              );
                            }).toList(),
                      );

                      context.read<SendOrderBloc>().add(
                        SendOrderEvent.sendOrder(orderRequest),
                      );

                      context.pop();

                      showDialog(
                        context: context,
                        builder: (context) => const PaymentSuccessDialog(),
                      );
                    },
                  );
                },

                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    success: (
                      data,
                      qty,
                      total,
                      payment,
                      _,
                      idKasir,
                      namaKasir,
                      customerName,
                    ) {
                      return Button(
                        label: 'Proses',
                        onPressed: () {
                          if (priceController!.text.isEmpty) {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                      'Please input the price',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                            );
                            return;
                          }

                          if (priceController!.text.toIntegerFromText < total) {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                      'The nominal is less than the total price',
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: const Text('OK'),
                                      ),
                                    ],
                                  ),
                            );
                            return;
                          }
                          CheckoutLocalDatasource.clearCheckoutItems();

                          context.read<OrderBloc>().add(
                            OrderEvent.addNominalBayar(
                              priceController!.text.toIntegerFromText,
                            ),
                          );
                        },
                        gradientColors: [
                          AppColors.teal,
                          AppColors.blueElectric,
                        ],
                      );
                    },
                    error: (message) => const SizedBox(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
