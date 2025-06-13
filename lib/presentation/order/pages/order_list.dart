import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/components/buttons.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/order/widgets/payment_cash_dialog.dart';
import 'package:quickbill/presentation/order/widgets/payment_method.dart';
import 'package:quickbill/presentation/order/widgets/payment_qris_dialog.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../home/models/order_item.dart';
import '../bloc/order/order_bloc.dart';
import '../widgets/order_card.dart';
import '../widgets/payment_debit_dialog.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  List<OrderItem> orders = [];
  final indexValue = ValueNotifier(0);
  String selectedPaymentMethod = 'cash';

  int totalPrice = 0;
  int calculateTotalPrice(List<OrderItem> orders) {
    return orders.fold(
      0,
      (previousValue, element) =>
          previousValue + element.product.price * element.quantity,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            Assets.icons.icArrowBack.path,
            width: 30,
            height: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Order List",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocBuilder<CheckoutBloc, CheckoutState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () => const SizedBox(),
                            success: (data, qty, total, draftName) {
                              if (qty == 0) {
                                return const SizedBox();
                              }

                              totalPrice = total;
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.55,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemCount: data.length,
                                  separatorBuilder:
                                      (context, index) =>
                                          const SizedBox(height: 20),
                                  itemBuilder:
                                      (context, index) => OrderCard(
                                        data: data[index],
                                        onDeleteTap: () {
                                          context.read<CheckoutBloc>().add(
                                            CheckoutEvent.removeCheckout(
                                              data[index].product,
                                            ),
                                          );
                                        },
                                      ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'PAYMENT METHOD',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 8),
                      BlocBuilder<CheckoutBloc, CheckoutState>(
                        builder: (context, state) {
                          return state.maybeWhen(
                            orElse: () {
                              return const SizedBox.shrink();
                            },
                            success: (data, qty, total, draftName) {
                              return ValueListenableBuilder(
                                valueListenable: indexValue,
                                builder:
                                    (context, value, _) => Row(
                                      children: [
                                        Flexible(
                                          child: PaymentMethod(
                                            iconPath:
                                                Assets
                                                    .icons
                                                    .icDebitUnselected
                                                    .path,
                                            label: 'Debit',
                                            isActive: value == 1,
                                            onPressed: () {
                                              indexValue.value = 1;
                                              selectedPaymentMethod = 'debit';
                                              context.read<OrderBloc>().add(
                                                OrderEvent.addPaymentMethod(
                                                  'Debit',
                                                  data,
                                                  draftName,
                                                ),
                                              );
                                            },
                                            selectedPaymentMethod: 'debit',
                                          ),
                                        ),
                                        const SizedBox(width: 16.0),
                                        Flexible(
                                          child: PaymentMethod(
                                            iconPath:
                                                Assets
                                                    .icons
                                                    .icQrisUnselected
                                                    .path,
                                            label: 'Qris',
                                            isActive: value == 2,
                                            onPressed: () {
                                              selectedPaymentMethod = 'qris';
                                              indexValue.value = 2;
                                              context.read<OrderBloc>().add(
                                                OrderEvent.addPaymentMethod(
                                                  'Qris',
                                                  data,
                                                  draftName,
                                                ),
                                              );
                                            },
                                            selectedPaymentMethod: 'qris',
                                          ),
                                        ),
                                        const SizedBox(width: 16.0),
                                        Flexible(
                                          child: PaymentMethod(
                                            iconPath:
                                                Assets
                                                    .icons
                                                    .icCashUnselected
                                                    .path,
                                            label: 'CASH',
                                            isActive: value == 3,
                                            onPressed: () {
                                              indexValue.value = 3;
                                              selectedPaymentMethod = 'cash';
                                              context.read<OrderBloc>().add(
                                                OrderEvent.addPaymentMethod(
                                                  'cash',
                                                  data,
                                                  draftName,
                                                ),
                                              );
                                            },
                                            selectedPaymentMethod: 'cash',
                                          ),
                                        ),
                                      ],
                                    ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    success: (data, qty, total, draftName) {
                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.softTeal,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Bill',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.white,
                                  ),
                                ),
                                Text(
                                  total.currencyFormatRp,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.blueElectric,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => _showPaymentDialog(),
                              child: Row(
                                children: [
                                  Text(
                                    'Payment',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blueElectric,
                                    ),
                                  ),
                                  const SizedBox(width: 6),
                                  Image.asset(
                                    Assets.icons.icArrowRight.path,
                                    height: 28.13,
                                    width: 28.13,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPaymentDialog() {
    if (selectedPaymentMethod == 'debit') {
      showDialog(
        context: context,
        builder: (context) => PaymentDebitDialog(price: totalPrice),
      );
    } else if (selectedPaymentMethod == 'qris') {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => PaymentQrisDialog(price: totalPrice),
      );
    } else if (selectedPaymentMethod == 'cash') {
      showDialog(
        context: context,
        builder: (context) => PaymentCashDialog(price: totalPrice),
      );
    }
  }
}
