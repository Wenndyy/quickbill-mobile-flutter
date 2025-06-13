import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../../presentation/order/models/order_model.dart';
import '../models/request/order_request_model.dart';

import 'auth_local_datasource.dart';

class OrderRemoteDatasource {
  Future<int?> sendOrder(OrderRequestModel requestModel) async {
    try {
      final url = Uri.parse('${Variables.baseUrl}/api/orders');
      final authData = await AuthLocalDatasource().getAuthData();

      final headers = {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };

      print('Sending order: ${requestModel.toJson()}');

      final response = await http.post(
        url,
        headers: headers,
        body: requestModel.toJson(),
      );

      print('Post ORDERS RESPONSE STATUS: ${response.statusCode}');
      print('Post ORDERS RESPONSE BODY: ${response.body}');
      if (response.statusCode == 201) {
        final data = json.decode(response.body);
        final orderId = data['data']['id'];
        return orderId;
      } else {
        throw Exception('Failed to send order: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in sendOrder: $e');
      throw Exception('Network error: $e');
    }
  }

  Future<List<OrderModel>> getOrders() async {
    final url = Uri.parse('${Variables.baseUrl}/api/orders');
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      return List<OrderModel>.from(
        jsonData['data'].map((x) => OrderModel.fromMap(x)),
      );
    } else if (response.statusCode == 401) {
      throw Exception('Unauthorized, token mungkin expired');
    } else {
      throw Exception('Failed to load orders from API: ${response.statusCode}');
    }
  }

  Future<bool> updatePaymentOrder({
    required int orderId,
    required String paymentMethod,
    required int nominalBayar,
    required int kembalian,
    required String paymentStatus,
    final String? cardNumber,
    final String? cardHolder,
    final List<Map<String, dynamic>>? orderItems,
  }) async {
    try {
      final url = Uri.parse(
        '${Variables.baseUrl}/api/orders/$orderId/update-payment',
      );
      final authData = await AuthLocalDatasource().getAuthData();

      final headers = {
        'Authorization': 'Bearer ${authData.token}',
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };

      final body = jsonEncode({
        'payment_method': paymentMethod,
        'nominal_bayar': nominalBayar,
        'kembalian': kembalian,
        'payment_status': paymentStatus,
        'card_number': cardNumber,
        'card_holder': cardHolder,
        'order_items': orderItems,
      });

      final response = await http.put(url, headers: headers, body: body);

      print('UPDATE PAYMENT RESPONSE STATUS: ${response.statusCode}');
      print('UPDATE PAYMENT RESPONSE BODY: ${response.body}');

      if (response.statusCode == 200) {
        return true;
      } else {
        throw Exception('Failed to update payment: ${response.statusCode}');
      }
    } catch (e) {
      print('Error in updatePaymentOrder: $e');
      throw Exception('Network error: $e');
    }
  }
}
