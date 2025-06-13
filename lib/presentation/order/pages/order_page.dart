import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/auth/bloc/login/login_bloc.dart';
import 'package:quickbill/presentation/order/pages/order_list.dart';

import '../../../core/constants/colors.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/models/request/order_request_model.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../home/models/order_item.dart';
import '../bloc/send_order/send_order_bloc.dart';
import '../widgets/order_card.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final indexValue = ValueNotifier(0);
  final TextEditingController orderNameController = TextEditingController();
  final TextEditingController tableNumberController = TextEditingController();

  List<OrderItem> orders = [];

  int totalPrice = 0;
  int calculateTotalPrice(List<OrderItem> orders) {
    return orders.fold(
      0,
      (previousValue, element) =>
          previousValue + element.product.price * element.quantity,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Order",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.blueElectric),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return const Center(child: Text('No Data'));
                      },
                      success: (data, qty, total, draftName) {
                        if (data.isEmpty) {
                          return const Center(child: Text('No Data'));
                        }

                        totalPrice = total;
                        return ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          itemCount: data.length,
                          separatorBuilder:
                              (context, index) => const SizedBox(height: 20.0),
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
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<CheckoutBloc, CheckoutState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    success: (data, qty, total, draftName) {
                      if (total == 0) {
                        return const SizedBox();
                      }
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return const OrderList();
                                    },
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'Process',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.blueElectric,
                                    ),
                                  ),
                                  SizedBox(width: 6),
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

              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
