import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:quickbill/core/extensions/string_ext.dart';

import '../../../data/models/response/category_response_model.dart';
import '../../../data/models/response/product_response_model.dart';
import '../../home/bloc/category/category_bloc.dart';
import '../../home/bloc/product/product_bloc.dart';
import '../models/category_model.dart';
import '../widgets/category_selection.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();
  String? _selectedCategory;

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = pickedFile;
      });
    }
  }

  TextEditingController? nameController;
  TextEditingController? priceController;
  TextEditingController? stockController;

  Category? category;

  XFile? imageFile;

  bool isBestSeller = false;

  final List<CategoryModel> categories = [];

  @override
  void initState() {
    nameController = TextEditingController();
    priceController = TextEditingController();
    stockController = TextEditingController();
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    nameController!.dispose();
    priceController!.dispose();
    stockController!.dispose();
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
          "Add Product",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 19),
                Text(
                  "Product name",
                  style: TextStyle(
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: "Eg. Potato",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Product price",
                  style: TextStyle(
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: priceController,
                  decoration: InputDecoration(
                    hintText: "Rp. 20.000",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                Text(
                  "Photo product",
                  style: TextStyle(
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 70,
                        height: 76,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child:
                            _image == null
                                ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    Assets.icons.icPhotoProduct.path,
                                    width: 40,
                                    height: 40,
                                  ),
                                )
                                : Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.file(
                                    File(_image!.path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                      ),
                      Container(
                        width: 140,
                        height: 35,
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [AppColors.teal, AppColors.blueElectric],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: _pickImage,
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: Text(
                            "Choose Photo",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Product stock",
                  style: TextStyle(
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: stockController,
                  decoration: InputDecoration(
                    hintText: "10",
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 16),
                Text(
                  "Category",
                  style: TextStyle(
                    color: AppColors.blueElectric,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 8),
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loading: () => const CircularProgressIndicator(),
                      loaded:
                          (categories) => SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children:
                                  categories.map((category) {
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 12),
                                      child: CategoryOption(
                                        title: category.name,
                                        iconPath: _getIconByCategory(
                                          category.name,
                                        ),
                                        isSelected:
                                            _selectedCategory == category.name,
                                        onTap: () {
                                          setState(() {
                                            _selectedCategory = category.name;
                                            this.category = category;
                                          });
                                        },
                                      ),
                                    );
                                  }).toList(),
                            ),
                          ),
                      error: (message) => Text(message),
                      orElse: () => const SizedBox(),
                    );
                  },
                ),

                SizedBox(height: 8),
                Row(
                  children: [
                    Checkbox(
                      activeColor: AppColors.blueElectric,
                      value: isBestSeller,
                      onChanged: (value) {
                        setState(() {
                          isBestSeller = value!;
                        });
                      },
                    ),
                    const Text(
                      'Best Seller',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: AppColors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 178,
                      height: 43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.blueElectric),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: AppColors.blueElectric),
                        ),
                      ),
                    ),
                    BlocConsumer<ProductBloc, ProductState>(
                      listener: (context, state) {
                        state.maybeMap(
                          orElse: () {},
                          success: (_) {
                            Navigator.pop(context);
                          },
                          error: (errorState) {
                            // Show error message to user
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(errorState.message)),
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Expanded(
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          loading: () {
                            return Expanded(
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                          success: (_) {
                            return Container(
                              width: 189,
                              height: 43,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  colors: [
                                    AppColors.teal,
                                    AppColors.blueElectric,
                                  ],
                                ),
                              ),
                              child: ElevatedButton(
                                onPressed: () {
                                  // Add validation
                                  if (nameController!.text.isEmpty ||
                                      priceController!.text.isEmpty ||
                                      stockController!.text.isEmpty ||
                                      _selectedCategory == null ||
                                      _image == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          "Please fill all fields and select an image",
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  final String name = nameController!.text;
                                  final int price =
                                      priceController!.text.toIntegerFromText;
                                  final int stock =
                                      stockController!.text.toIntegerFromText;
                                  final Product product = Product(
                                    name: name,
                                    price: price,
                                    stock: stock,
                                    category: _selectedCategory!,
                                    categoryId: category!.id,
                                    isBestSeller: isBestSeller,
                                    image: _image!.path,
                                  );
                                  context.read<ProductBloc>().add(
                                    ProductEvent.addProduct(product, _image!),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Text(
                                  "Save Product",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
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
        ],
      ),
    );
  }

  String _getIconByCategory(String categoryName) {
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
