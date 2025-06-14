import 'dart:convert';

import 'package:image_picker/image_picker.dart';

class ProductRequestModel {
  final String name;
  final int price;
  final int stock;
  final String category;
  final int categoryId;
  final int isBestSeller;
  final XFile? image;
  ProductRequestModel({
    required this.name,
    required this.price,
    required this.stock,
    required this.category,
    required this.categoryId,
    required this.isBestSeller,
    this.image,
  });

  Map<String, String> toMap() {
    return {
      'name': name,
      'price': price.toString(),
      'stock': stock.toString(),
      'category': category,
      'category_id': categoryId.toString(),
      'is_best_seller': isBestSeller.toString(),
    };
  }
}
