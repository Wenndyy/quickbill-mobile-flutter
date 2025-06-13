import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/presentation/auth/pages/login_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/custom_password_field.dart';
import '../../../core/constants/colors.dart';
import '../bloc/login/login_bloc.dart';

class ResetPasswordPage extends StatefulWidget {
  final String email;
  final String otp;
  const ResetPasswordPage({super.key, required this.email, required this.otp});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
        backgroundColor: Colors.transparent,
      ),
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
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 33,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
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
                  CustomPasswordField(
                    controller: passwordController,
                    label: 'New Password',
                  ),
                  SizedBox(height: 10),
                  CustomPasswordField(
                    controller: confirmPasswordController,
                    label: 'Confirm New Password',
                  ),
                  SizedBox(height: 20),

                  BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        resetPasswordSuccess: (message) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
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
                              label: "Forgot Password",
                              onPressed: () {
                                context.read<LoginBloc>().add(
                                  LoginEvent.resetPassword(
                                    otp: widget.otp,
                                    email: widget.email,
                                    password: passwordController.text,
                                    passwordConfirmation:
                                        confirmPasswordController.text,
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
