import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/request/product_request_model.dart';
import '../models/response/add_product_response_model.dart';
import '../models/response/category_response_model.dart';
import '../models/response/product_response_model.dart';
import 'auth_local_datasource.dart';

class ProductRemoteDatasource {
  Future<Either<String, ProductResponseModel>> getProducts() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/products'),
      headers: {'Authorization': 'Bearer ${authData.token}'},
    );

    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return right(ProductResponseModel.fromJson(jsonData));
      } catch (e) {
        return left('Error parsing JSON: $e');
      }
    } else {
      return left('Server error: ${response.statusCode} - ${response.body}');
    }
  }

  Future<Either<String, AddProductResponseModel>> addProduct(
    ProductRequestModel productRequestModel,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
    };
    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${Variables.baseUrl}/api/products'),
    );
    request.fields.addAll(productRequestModel.toMap());
    request.files.add(
      await http.MultipartFile.fromPath(
        'image',
        productRequestModel.image!.path,
      ),
    );
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    final String body = await response.stream.bytesToString();

    if (response.statusCode == 201) {
      return right(AddProductResponseModel.fromJson(body));
    } else {
      return left(body);
    }
  }

  //get categories
  Future<Either<String, CategoryResponseModel>> getCategories() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/list-categories'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        return right(CategoryResponseModel.fromJson(jsonData));
      } catch (e) {
        return left('Error parsing JSON: $e');
      }
    } else {
      return left('Server error: ${response.statusCode} - ${response.body}');
    }
  }

  Future<Either<String, String>> deleteProduct(int id) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.delete(
      Uri.parse('${Variables.baseUrl}/api/products/$id'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return right('Product deleted successfully');
    } else {
      return left(
        'Failed to delete product: ${response.statusCode} - ${response.body}',
      );
    }
  }

  Future<Either<String, ProductDetailResponseModel>> getDetailProduct(
    int id,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/api/products/$id'),
      headers: {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);

        return right(ProductDetailResponseModel.fromMap(jsonData));
      } catch (e) {
        return left('Error parsing JSON: $e');
      }
    } else {
      return left(
        'Failed to fetch product detail: ${response.statusCode} - ${response.body}',
      );
    }
  }

  Future<Either<String, AddProductResponseModel>> updateProduct(
    int id,
    ProductRequestModel productRequestModel,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    final Map<String, String> headers = {
      'Authorization': 'Bearer ${authData.token}',
    };

    var request = http.MultipartRequest(
      'POST',
      Uri.parse('${Variables.baseUrl}/api/products/$id'),
    );

   
    request.fields.addAll({...productRequestModel.toMap(), '_method': 'PUT'});

    
    if (productRequestModel.image != null) {
      request.files.add(
        await http.MultipartFile.fromPath(
          'image',
          productRequestModel.image!.path,
        ),
      );
    }

    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    final String body = await response.stream.bytesToString();

    if (response.statusCode == 200) {
      return right(AddProductResponseModel.fromJson(body));
    } else {
      return left(body);
    }
  }

  
}
