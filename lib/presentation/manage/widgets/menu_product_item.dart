import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';
import '../../../data/models/response/product_response_model.dart';
import '../bloc/manage_product/manage_product_bloc.dart';
import '../pages/change_product.dart';

class MenuProductItem extends StatelessWidget {
  final Product data;
  const MenuProductItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(color: AppColors.blueElectric, width: 1),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 79,
              height: 79,
              decoration: BoxDecoration(
                color: AppColors.softTeal,
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: CachedNetworkImage(
                    imageUrl: '${Variables.imageBaseUrl}${data.image}',
                    fit: BoxFit.contain,
                    placeholder:
                        (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                    errorWidget:
                        (context, url, error) =>
                            const Icon(Icons.broken_image, size: 40),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.name,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    data.category,
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.grey,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 95,
                          height: 22,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ChangeProduct(productId: data.id!);
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: AppColors.blueElectric,
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(color: Colors.blue),
                              ),
                            ),
                            child: Text(
                              "Change Product",
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                fontSize: 9,
                                color: AppColors.blueElectric,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder:
                                  (context) => AlertDialog(
                                    backgroundColor: AppColors.white,
                                    title: Text(
                                      'Hapus Produk',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    content: Text(
                                      'Yakin ingin menghapus produk ini?',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text(
                                          'Batal',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: AppColors.blueElectric,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                          context.read<ManageProductBloc>().add(
                                            ManageProductEvent.deleteProduct(
                                              data.id!,
                                            ),
                                          );
                                        },
                                        child: const Text(
                                          'Hapus',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: AppColors.blueElectric,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            );
                          },
                          child: Container(
                            width: 22,
                            height: 22,
                            decoration: BoxDecoration(
                              color: Color(0XFF48A6A7),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.delete,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
