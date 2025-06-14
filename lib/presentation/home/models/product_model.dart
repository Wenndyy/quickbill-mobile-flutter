import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/presentation/home/models/product_category.dart';

class ProductModel {
  final int id;
  final String image;
  final String name;
  final ProductCategory category;
  final int price;
  final int stock;

  ProductModel({
    required this.id,
    required this.image,
    required this.name,
    required this.category,
    required this.price,
    required this.stock,
  });

  String get priceFormat => price.currencyFormatRp;
}
