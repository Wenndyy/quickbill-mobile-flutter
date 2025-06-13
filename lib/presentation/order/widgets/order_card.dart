import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/extensions/int_ext.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';
import '../../home/bloc/checkout/checkout_bloc.dart';
import '../../home/models/order_item.dart';

class OrderCard extends StatelessWidget {
  final OrderItem data;
  final VoidCallback onDeleteTap;
  final EdgeInsetsGeometry? padding;
  const OrderCard({
    super.key,
    required this.data,
    required this.onDeleteTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppColors.blueElectric),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 79,
              height: 79,
              decoration: BoxDecoration(
                color: AppColors.softTeal,
                borderRadius: BorderRadius.circular(46),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    width: 55,
                    height: 55,
                    fit: BoxFit.cover,
                    imageUrl: '${Variables.imageBaseUrl}${data.product.image}',
                    placeholder:
                        (context, url) => const CircularProgressIndicator(),
                    errorWidget:
                        (context, url, error) =>
                            const Icon(Icons.food_bank_outlined),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.product.name,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    data.product.category,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Text(
                  data.product.price.currencyFormatRp,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.blueElectric,
                  ),
                ),
                const SizedBox(height: 8),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<CheckoutBloc>().add(
                          CheckoutEvent.removeCheckout(data.product),
                        );
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Text(
                      data.quantity.toString(),
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(width: 15),
                    InkWell(
                      onTap: () {
                        context.read<CheckoutBloc>().add(
                          CheckoutEvent.addCheckout(data.product),
                        );
                      },
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.teal.shade300,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
