import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../core/constants/variables.dart';
import '../models/response/qris_response_model.dart';
import '../models/response/qris_status_response_model.dart';

class QrisRemoteDatasource {
  // Update this with your actual server key
  static const String _serverKey = 'SB-Mid-server-Y6RWUTzVt9tendFptsPFtQLK';
  static const String _baseUrl = 'https://api.sandbox.midtrans.com/v2';

  String generateBasicAuthHeader(String serverKey) {
    final base64Credentials = base64Encode(utf8.encode('$serverKey:'));
    final authHeader = 'Basic $base64Credentials';
    return authHeader;
  }

  Future<QrisResponseModel> generateQRCode(
    String orderId,
    int grossAmount,
  ) async {
    try {
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': generateBasicAuthHeader(_serverKey),
      };

      final body = jsonEncode({
        'payment_type': 'gopay',
        'transaction_details': {
          'gross_amount': grossAmount,
          'order_id': orderId,
        },
      });

      print('Sending request to: $_baseUrl/charge');
      print('Body: $body');

      final response = await http.post(
        Uri.parse('$_baseUrl/charge'),
        headers: headers,
        body: body,
      );

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        return QrisResponseModel.fromJson(response.body);
      } else {
        print(
          'Failed to generate QR Code: ${response.statusCode} - ${response.body}',
        );
        throw Exception('Failed to generate QR Code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error generating QR code: $e');
      throw Exception('Error generating QR code: $e');
    }
  }

  Future<QrisStatusResponseModel> checkPaymentStatus(String orderId) async {
    try {
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
        'Authorization': generateBasicAuthHeader(_serverKey),
      };

      final response = await http.get(
        Uri.parse('$_baseUrl/$orderId/status'),
        headers: headers,
      );

      print('Status response [${response.statusCode}]: ${response.body}');

      if (response.statusCode == 200) {
        return QrisStatusResponseModel.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to check payment status: ${response.statusCode}',
        );
      }
    } catch (e) {
      print('Error checking payment status: $e');
      throw Exception('Error checking payment status: $e');
    }
  }
}
