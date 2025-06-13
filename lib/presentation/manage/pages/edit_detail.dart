import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quickbill/presentation/manage/bloc/manage_product/manage_product_bloc.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/constants/colors.dart';
import '../../../core/constants/variables.dart';
import '../../../data/models/request/product_request_model.dart';
import '../../../data/models/response/category_response_model.dart';
import '../../../data/models/response/product_response_model.dart';
import '../../home/bloc/category/category_bloc.dart';
import '../../product/models/category_model.dart';
import '../../product/widgets/category_selection.dart';

class EditDetail extends StatefulWidget {
  final Product product;
  const EditDetail({super.key, required this.product});

  @override
  State<EditDetail> createState() => _EditDetailState();
}

class _EditDetailState extends State<EditDetail> {
  TextEditingController? nameController;
  TextEditingController? priceController;
  TextEditingController? stockController;
  bool? isBestSeller;
  XFile? image;
  final ImagePicker _picker = ImagePicker();
  String? _selectedCategory;
  Category? category;
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.product.name);
    priceController = TextEditingController(
      text: widget.product.price.toString(),
    );
    stockController = TextEditingController(
      text: widget.product.stock.toString(),
    );
    isBestSeller = widget.product.isBestSeller;
    _selectedCategory = widget.product.category;
  }

  final List<CategoryModel> categories = [];
  @override
  void dispose() {
    nameController?.dispose();
    priceController?.dispose();
    stockController?.dispose();
    super.dispose();
  }

  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        image = pickedFile;
      });
    }
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
            context.read<ManageProductBloc>().add(
              ManageProductEvent.getDetailProduct(widget.product.id!),
            );
          },
        ),
        centerTitle: true,
        title: Text(
          "Edit Detail",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                          image != null
                              ? Image.file(File(image!.path), fit: BoxFit.cover)
                              : widget.product.image != null
                              ? CachedNetworkImage(
                                imageUrl:
                                    '${Variables.imageBaseUrl}${widget.product.image}',
                                fit: BoxFit.cover,
                                placeholder:
                                    (context, url) => Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                errorWidget: (context, url, error) {
                                  print(
                                    'Error loading image: $error',
                                  ); // Debugging
                                  return Icon(Icons.broken_image, size: 40);
                                },
                                httpHeaders: {
                                  'keep-alive': 'true',
                                }, // Tambahkan header
                              )
                              : Icon(Icons.image, size: 40),
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
                        context.read<ManageProductBloc>().add(
                          ManageProductEvent.getDetailProduct(
                            widget.product.id!,
                          ),
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
                        "Cancel",
                        style: TextStyle(color: AppColors.blueElectric),
                      ),
                    ),
                  ),
                  BlocConsumer<ManageProductBloc, ManageProductState>(
                    listener: (context, state) {
                      state.maybeMap(
                        success: (_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Produk berhasil diperbarui'),
                            ),
                          );
                          Navigator.pop(context);
                          context.read<ManageProductBloc>().add(
                            ManageProductEvent.getDetailProduct(
                              widget.product.id!,
                            ),
                          );
                        },
                        error: (message) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message as String)),
                          );
                        },
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return Container(
                        width: 189,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [AppColors.teal, AppColors.blueElectric],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            final name =
                                nameController?.text ?? widget.product.name;
                            final price =
                                int.tryParse(priceController?.text ?? '0') ??
                                widget.product.price;
                            final stock =
                                int.tryParse(stockController?.text ?? '0') ??
                                widget.product.stock;
                            final category =
                                _selectedCategory ?? widget.product.category;
                            final categoryId =
                                this.category?.id ?? widget.product.categoryId;
                            final bestSeller =
                                isBestSeller ?? widget.product.isBestSeller;

                            final productRequest = Product(
                              name: name,
                              price: price,
                              stock: stock,
                              category: category,
                              categoryId: categoryId,
                              isBestSeller: bestSeller,
                              image: image?.path ?? widget.product.image,
                            );

                            context.read<ManageProductBloc>().add(
                              ManageProductEvent.updateProduct(
                                widget.product.id!,
                                productRequest,
                                image,
                              ),
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
                            "Save Change",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
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
