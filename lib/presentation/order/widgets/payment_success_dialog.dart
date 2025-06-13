import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/extensions/build_context_ext.dart';
import 'package:quickbill/core/extensions/date_time_ext.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/order/widgets/label_value.dart';
import 'package:quickbill/presentation/order/widgets/phone_number_dialog.dart';
import 'package:quickbill/presentation/order/widgets/whatsApp_sender.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/constants/colors.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../home/pages/dashboard_page.dart';
import '../bloc/order/order_bloc.dart';

class PaymentSuccessDialog extends StatefulWidget {
  const PaymentSuccessDialog({super.key});

  @override
  State<PaymentSuccessDialog> createState() => _PaymentSuccessDialogState();
}

class _PaymentSuccessDialogState extends State<PaymentSuccessDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    context.read<CheckoutBloc>().add(
                      const CheckoutEvent.started(),
                    );

                    context.pushReplacement(const DashboardPage());
                  },
                  child: Container(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      Assets.icons.icClose.path,
                      width: 25,
                      height: 25,
                      color: AppColors.blueElectric,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16, bottom: 16),
                width: 80,
                height: 80,

                child: Image.asset(
                  Assets.icons.icSuccess.path,
                  width: 80,
                  height: 80,
                ),
              ),

              Text(
                'Payment has been\n successfully made',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 24),

              Column(
                children: [
                  BlocBuilder<OrderBloc, OrderState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        success: (
                          data,
                          qty,
                          total,
                          paymentType,
                          nominal,
                          idKasir,
                          nameKasir,
                          customerName,
                        ) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              LabelValue(
                                label: 'PAYMENT METHOD',
                                value: _getPaymentMethodDisplay(paymentType),
                              ),
                              const Divider(height: 16.0),
                              LabelValue(
                                label: 'TOTAL BILL',
                                value: total.currencyFormatRp,
                              ),
                              const Divider(height: 16.0),
                              LabelValue(
                                label: 'NOMINAL PAYMENT',
                                value: nominal.currencyFormatRp,
                              ),
                              const Divider(height: 16.0),

                              LabelValue(
                                label: 'PAYMENT TIME',
                                value: DateTime.now().toFormattedTime(),
                              ),
                              const SizedBox(height: 20.0),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Button(
                                    label: "Close",
                                    onPressed: () {
                                      Navigator.pop(context);
                                      context.read<CheckoutBloc>().add(
                                        const CheckoutEvent.started(),
                                      );

                                      // context.read<OrderBloc>().add(
                                      //   const OrderEvent.started(),
                                      // );
                                      context.pushReplacement(
                                        const DashboardPage(),
                                      );
                                    },
                                    gradientColors: [
                                      AppColors.teal,
                                      AppColors.blueElectric,
                                    ],
                                    width: 150,
                                    height: 45,
                                    borderRadius: 10,
                                  ),

                                  SizedBox(width: 8),
                                  Expanded(
                                    child: OutlinedButton(
                                      onPressed: () async {
                                        final orderState =
                                            context.read<OrderBloc>().state;

                                        orderState.maybeWhen(
                                          success: (
                                            data,
                                            qty,
                                            total,
                                            paymentType,
                                            nominal,
                                            idKasir,
                                            nameKasir,
                                            customerName,
                                          ) async {
                                            await WhatsAppSender.sendReceiptToWhatsApp(
                                              context: context,
                                              products: data,
                                              totalPrice: total,
                                              paymentMethod:
                                                  _getPaymentMethodDisplay(
                                                    paymentType,
                                                  ),
                                              namaKasir: nameKasir,
                                            );
                                          },
                                          orElse: () {},
                                        );
                                      },
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                          color: AppColors.blueElectric,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          vertical: 12,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Send Receipt',
                                            style: TextStyle(
                                              color: AppColors.blueElectric,
                                              fontFamily: 'Poppins',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          SizedBox(width: 4),
                                          Image.asset(
                                            Assets.icons.icPrinter.path,
                                            width: 20,
                                            height: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getPaymentMethodDisplay(String paymentType) {
    switch (paymentType.toLowerCase()) {
      case 'qris':
        return 'QRIS';
      case 'cash':
        return 'Cash';
      case 'debit':
        return 'Debit';
      default:
        return paymentType;
    }
  }
}
