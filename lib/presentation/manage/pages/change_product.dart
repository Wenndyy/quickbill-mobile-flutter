import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/manage/pages/edit_detail.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/menu_button.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';
import '../../../data/models/response/category_response_model.dart';
import '../../home/bloc/category/category_bloc.dart';
import '../bloc/manage_product/manage_product_bloc.dart';

class ChangeProduct extends StatefulWidget {
  final int productId;
  const ChangeProduct({super.key, required this.productId});

  @override
  State<ChangeProduct> createState() => _ChangeProductState();
}

class _ChangeProductState extends State<ChangeProduct> {
  @override
  void initState() {
    context.read<ManageProductBloc>().add(
      ManageProductEvent.getDetailProduct(widget.productId),
    );

    super.initState();
  }

  String kategoriName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset(
            Assets.icons.icArrowBack.path,
            width: 30,
            height: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
            context.read<ManageProductBloc>().add(
              ManageProductEvent.getProducts(),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "Change Product",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlocBuilder<ManageProductBloc, ManageProductState>(
              builder: (context, state) {
                return state.maybeWhen(
                  detailSuccess: (product) {
                    final detail = product.data;
                    kategoriName = detail.category;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Let’s change your product detail",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blueElectric,
                          ),
                        ),
                        SizedBox(height: 31),
                        Text(
                          "Photo Product",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.blueElectric,
                          ),
                        ),
                        SizedBox(height: 20),
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
                                imageUrl:
                                    '${Variables.imageBaseUrl}${detail.image}',
                                fit: BoxFit.contain,
                                placeholder:
                                    (context, url) => const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                errorWidget:
                                    (context, url, error) => const Icon(
                                      Icons.broken_image,
                                      size: 40,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Detail Product",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blueElectric,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return EditDetail(product: detail);
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Edit Detail",
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.teal,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Product Name",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.disabledIcon,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          detail.name,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Product Price",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.disabledIcon,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          detail.price.currencyFormatRp,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Product Stock",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.disabledIcon,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          detail.stock.toString(),
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Category",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.disabledIcon,
                          ),
                        ),
                        SizedBox(height: 12),

                        BlocBuilder<CategoryBloc, CategoryState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () => const SizedBox(),
                              error: (message) => Center(child: Text(message)),
                              loaded:
                                  (categories) =>
                                      _buildCategoryList(categories),
                            );
                          },
                        ),
                      ],
                    );
                  },
                  loading:
                      () => Expanded(
                        child: Center(child: const CircularProgressIndicator()),
                      ),
                  error: (message) => Text(message),
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList(List<Category> categories) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...categories.map(
            (e) => SizedBox(
              width: 90,
              height: 100,

              child: MenuButton(
                iconPath: getCategoryIconPath(e.name),
                label: e.name,
                isImage: true,
                isActive: kategoriName == e.name,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getCategoryIconPath(String categoryName) {
    switch (categoryName.toLowerCase()) {
      case 'makanan':
        return Assets.icons.icFoodCategorySelected.path;
      case 'minuman':
        return Assets.icons.icDrinkCategoryUnselected.path;
      case 'snack':
        return Assets.icons.icSnackCategoryUnselected.path;
      case 'obat':
        return Assets.icons.icObatUnselected.path;
      default:
        return Assets.icons.icAllCategoryUnselected.path;
    }
  }
}
