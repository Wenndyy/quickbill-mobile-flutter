import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/presentation/auth/pages/reset_password_page.dart';

import '../../../core/assets/assets.gen.dart';
import '../../../core/components/buttons.dart';
import '../../../core/components/custom_text_field.dart';
import '../../../core/constants/colors.dart';
import '../bloc/login/login_bloc.dart';

class InputOtpPage extends StatefulWidget {
  final String email;
  const InputOtpPage({super.key, required this.email});

  @override
  State<InputOtpPage> createState() => _InputOtpPageState();
}

class _InputOtpPageState extends State<InputOtpPage> {
  final otpController = TextEditingController();
  @override
  void dispose() {
    otpController.dispose();

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
                  "Forget Password",
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
                  CustomTextField(
                    controller: otpController,
                    label: 'Code OTP',
                    keyboardType: TextInputType.number,
                  ),

                  SizedBox(height: 20),
                  BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                        otpVerificationSuccess: (message) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => ResetPasswordPage(
                                    email: widget.email,
                                    otp: otpController.text,
                                  ),
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
                                  LoginEvent.verifyOtp(
                                    otp: otpController.text,
                                    email: widget.email,
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
