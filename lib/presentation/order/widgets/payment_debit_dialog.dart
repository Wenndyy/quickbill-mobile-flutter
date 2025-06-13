import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quickbill/core/extensions/build_context_ext.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/order/widgets/payment_success_dialog.dart';
import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/constants/colors.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/datasources/checkout_local_datasource.dart';
import '../../../data/models/request/order_request_model.dart';
import '../bloc/order/order_bloc.dart';
import '../bloc/send_order/send_order_bloc.dart';

class PaymentDebitDialog extends StatefulWidget {
  final int price;


  const PaymentDebitDialog({super.key, required this.price});

  @override
  State<PaymentDebitDialog> createState() => _PaymentDebitDialogState();
}

class _PaymentDebitDialogState extends State<PaymentDebitDialog> {
  TextEditingController? cardNumberController;
  TextEditingController? cardHolderController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    cardNumberController = TextEditingController();
    cardHolderController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    cardNumberController?.dispose();
    cardHolderController?.dispose();
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
          child: Form(
            key: formKey,
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
                      'Payment - Debit',
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
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.blueElectric,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  'Card Number',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: cardNumberController,
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
                    hintText: 'Enter card number',
                    hintStyle: TextStyle(color: AppColors.grey),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter card number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16),
                Text(
                  'Card Holder',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: cardHolderController,
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
                    hintText: 'Enter card holder name',
                    hintStyle: TextStyle(color: AppColors.grey),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter card holder name';
                    }
                    return null;
                  },
                ),
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
                          kembalian: 0,
                          cardHolder: cardHolderController?.text,
                          cardNumber: cardNumberController?.text,
                          transactionTime: DateFormat(
                            'yyyy-MM-ddTHH:mm:ss',
                          ).format(DateTime.now()),
                          paymentStatus: "pending",
                          orderItems:
                              validItems.map((item) {
                                return OrderItemModel(
                                  productId: item.product.id!,
                                  quantity: item.quantity,
                                  totalPrice:
                                      item.quantity * item.product.price,
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
                          label: 'Process Payment',
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              CheckoutLocalDatasource.clearCheckoutItems();
                              context.read<OrderBloc>().add(
                                OrderEvent.addNominalBayar(total),
                              );
                            }
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
      ),
    );
  }
}
