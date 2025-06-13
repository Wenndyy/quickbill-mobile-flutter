import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/components/buttons.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:quickbill/presentation/auth/pages/forget_password_page.dart';
import 'package:quickbill/presentation/home/pages/dashboard_page.dart';

import '../../../core/components/custom_password_field.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../data/datasources/auth_local_datasource.dart';

import '../bloc/login/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.teal, AppColors.blueElectric],
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Column(
              children: [
                Text(
                  "Login to QUICKBILL",
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: AppColors.softTeal,
                  ),
                ),
                Text(
                  "Welcome Back!!!!",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    color: AppColors.softTeal,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              decoration: BoxDecoration(
                color: AppColors.softTeal,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  CustomTextField(
                    controller: emailController,
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  CustomPasswordField(
                    controller: passwordController,
                    label: 'Password',
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgetPasswordPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.blueNat,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        success: (authResponseModel) {
                          AuthLocalDatasource().saveAuthData(authResponseModel);
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DashboardPage(),
                            ),
                          );
                        },
                        error: (message) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(message),
                              backgroundColor: Colors.red,
                            ),
                          );
                        },
                      );
                    },
                    child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () {
                            return Button(
                              label: "Login",
                              onPressed: () {
                                context.read<LoginBloc>().add(
                                  LoginEvent.login(
                                    email: emailController.text,
                                    password: passwordController.text,
                                  ),
                                );
                              },
                              gradientColors: [
                                AppColors.teal,
                                AppColors.blueElectric,
                              ],
                            );
                          },
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
