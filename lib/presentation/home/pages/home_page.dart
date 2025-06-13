import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/components/menu_button.dart';
import 'package:quickbill/core/components/search_field.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:quickbill/presentation/home/widgets/product_empty.dart';

import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/models/response/category_response_model.dart';
import '../../profile/pages/profile_page.dart';
import '../bloc/category/category_bloc.dart';
import '../bloc/product/product_bloc.dart';
import '../widgets/product_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  final indexValue = ValueNotifier(0);
  int currentIndex = 0;

  String name = "";

  Future<void> getUserData() async {
    final user = await AuthLocalDatasource().getAuthData();

    setState(() {
      name = user.user.name;
    });
  }

  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.fetch());
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    // context.read<ProductBloc>().add(const ProductEvent.fetchLocal());
    // context.read<CategoryBloc>().add(const CategoryEvent.getCategoriesLocal());

    //  AuthLocalDatasource().getPrinter().then((value) async {
    //    if (value.isNotEmpty) {
    //      await PrintBluetoothThermal.connect(macPrinterAddress: value);
    //    }
    //  });
    getUserData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onCategoryTap(int index) {
    setState(() {
      searchController.clear();
      currentIndex = index;
    });
  }

  Future<void> refreshData() async {
    context.read<ProductBloc>().add(const ProductEvent.fetch());
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: RefreshIndicator(
        backgroundColor: AppColors.blueElectric,
        color: AppColors.white,
        onRefresh: refreshData,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello, $name!",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: AppColors.blueElectric,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ProfilePage();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: AppColors.teal,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(Assets.icons.icPerson.path),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  SearchField(
                    controller: searchController,
                    onChanged: (value) {
                      if (value.length >= 2) {
                        context.read<ProductBloc>().add(
                          ProductEvent.searchProduct(value),
                        );
                      }

                      if (value.isEmpty) {
                        context.read<ProductBloc>().add(
                          const ProductEvent.fetchAllFromState(),
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox(),
                        error: (message) => Center(child: Text(message)),
                        loaded: (categories) => _buildCategoryList(categories),
                      );
                    },
                  ),

                  const SizedBox(height: 16),
                  BlocBuilder<ProductBloc, ProductState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return const SizedBox();
                        },
                        loading: () {
                          return Center(
                            child: Container(
                              margin: const EdgeInsets.only(top: 150),
                              child: CircularProgressIndicator(
                                backgroundColor: AppColors.blueElectric,
                                color: AppColors.white,
                              ),
                            ),
                          );
                        },
                        error: (message) {
                          return Center(child: Text(message));
                        },
                        success: (products) {
                          final availableProducts =
                              products.where((p) => p.stock > 0).toList();

                          if (availableProducts.isEmpty) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 100),
                              child: const ProductEmpty(),
                            );
                          }
                          return Column(
                            children: [
                              GridView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: availableProducts.length,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 0.75,
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 16.0,
                                      mainAxisSpacing: 16.0,
                                    ),
                                itemBuilder:
                                    (context, index) => ProductCard(
                                      data: availableProducts[index],
                                      onCartButton: () {},
                                    ),
                              ),
                              const SizedBox(height: 100),
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

  Widget _buildCategoryList(List<Category> categories) {
    return SizedBox(
      height: 90,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            height: 80,
            width: 90,
            child: MenuButton(
              iconPath: Assets.icons.icAllCategorySelected.path,
              label: 'All',
              isImage: true,
              isActive: currentIndex == 0,
              onPressed: () {
                onCategoryTap(0);
                context.read<ProductBloc>().add(
                  const ProductEvent.fetchAllFromState(),
                );
              },
            ),
          ),
          const SizedBox(height: 10.0),
          ...categories
              .map(
                (e) => SizedBox(
                  height: 80,
                  width: 90,
                  child: MenuButton(
                    iconPath: getCategoryIconPath(e.name),
                    label: e.name,
                    isImage: true,
                    isActive: currentIndex == e.id,
                    onPressed: () {
                      onCategoryTap(e.id);
                      context.read<ProductBloc>().add(
                        ProductEvent.fetchByCategory(e.name),
                      );
                    },
                  ),
                ),
              )
              .toList(),
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
