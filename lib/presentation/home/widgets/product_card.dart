import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/data/models/response/product_response_model.dart';

import '../../../core/constants/variables.dart';
import '../bloc/checkout/checkout_bloc.dart';

class ProductCard extends StatelessWidget {
  final Product data;
  final VoidCallback onCartButton;

  const ProductCard({
    super.key,
    required this.data,
    required this.onCartButton,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.blueElectric, width: 1.5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: AppColors.softTeal,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: CachedNetworkImage(
                          imageUrl: '${Variables.imageBaseUrl}${data.image}',
                          fit: BoxFit.cover,
                          placeholder:
                              (context, url) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                          errorWidget:
                              (context, url, error) =>
                                  const Icon(Icons.broken_image, size: 40),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  data.name,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                child: Text(
                  data.category,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0XFFBDBDBD),
                  ),
                ),
              ),
              const SizedBox(height: 7),
              // Harga & Tombol Add
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.price.currencyFormatRp,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.darkBlue,
                      ),
                    ),
                    BlocBuilder<CheckoutBloc, CheckoutState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox(),
                          success: (products, qty, price, _) {
                            final isExist = products.any(
                              (element) => element.product == data,
                            );
                            final quantity =
                                isExist
                                    ? products
                                        .firstWhere(
                                          (element) => element.product == data,
                                        )
                                        .quantity
                                    : 0;

                            return quantity > 0
                                ? GestureDetector(
                                  onTap: () {
                                    context.read<CheckoutBloc>().add(
                                      CheckoutEvent.removeCheckout(data),
                                    );
                                  },
                                  child: Container(
                                    width: 36,
                                    height: 36,
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      color: AppColors.teal,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                      Assets.icons.icMin.path,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                                : const SizedBox();
                          },
                        );
                      },
                    ),

                    GestureDetector(
                      onTap: () {
                        context.read<CheckoutBloc>().add(
                          CheckoutEvent.addCheckout(data),
                        );
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        decoration: const BoxDecoration(
                          color: AppColors.teal,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<CheckoutBloc, CheckoutState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const SizedBox(),
              success: (products, qty, price, _) {
                if (qty == 0) {
                  return const SizedBox();
                }
                return products.any((element) => element.product == data)
                    ? products
                                .firstWhere(
                                  (element) => element.product == data,
                                )
                                .quantity >
                            0
                        ? Positioned(
                          top: 8,
                          right: 8,
                          child: CircleAvatar(
                            backgroundColor: AppColors.blueElectric,
                            child: Text(
                              products
                                  .firstWhere(
                                    (element) => element.product == data,
                                  )
                                  .quantity
                                  .toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                        : const SizedBox()
                    : const SizedBox();
              },
            );
          },
        ),
      ],
    );
  }
}
