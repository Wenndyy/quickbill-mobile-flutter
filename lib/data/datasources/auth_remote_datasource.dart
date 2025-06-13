import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:quickbill/data/datasources/auth_local_datasource.dart';

import '../../core/constants/variables.dart';
import '../models/response/auth_response_model.dart';

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
    String email,
    String password,
  ) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/login'),
      body: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      return right(AuthResponseModel.fromJson(response.body));
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, String>> logout() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/logout'),
      headers: {'Authorization': 'Bearer ${authData.token}'},
    );
    if (response.statusCode == 200) {
      return right(response.body);
    } else {
      return left(response.body);
    }
  }

  Future<Either<String, String>> sendOtp(String email) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/password/send-otp'),
      body: {'email': email},
      headers: {'Accept': 'application/json'},
    );

    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');

    if (response.statusCode == 200) {
      return right('OTP telah dikirim ke email Anda');
    } else {
      return left('Gagal mengirim OTP: ${response.body}');
    }
  }

  Future<Either<String, String>> verifyOtp({
    required String email,
    required String otp,
  }) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/password/verify-otp'),
      body: {'email': email, 'otp': otp},
    );

    if (response.statusCode == 200) {
      return right("Kode OTP berhasil diverifikasi.");
    } else {
      return left("OTP tidak valid atau kadaluarsa: ${response.body}");
    }
  }

  Future<Either<String, String>> resetPassword({
    required String email,
    required String otp,
    required String password,
    required String passwordConfirmation,
  }) async {
    final response = await http.post(
      Uri.parse('${Variables.baseUrl}/api/password/reset'),
      body: {
        'email': email,
        'otp': otp,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
      headers: {'Accept': 'application/json'},
    );

    if (response.statusCode == 200) {
      return right("Password berhasil direset.");
    } else {
      return left("Gagal reset password: ${response.body}");
    }
  }
}
