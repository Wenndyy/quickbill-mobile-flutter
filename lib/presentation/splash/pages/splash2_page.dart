import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/constants/colors.dart';

import '../../../core/components/buttons.dart';
import '../../auth/pages/login_page.dart';

class Splash2Page extends StatelessWidget {
  const Splash2Page({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                Image.asset(Assets.images.splash.path),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 209,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withAlpha(153),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: 27,
                width: 90,
                margin: const EdgeInsets.only(top: 26),
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: AppColors.blueElectric,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(13.5),
                    bottomLeft: Radius.circular(13.5),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Lewati",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: Container(
                height: 435,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(37),
                    topRight: Radius.circular(37),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Nge-Bill?",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 4),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "QUICKBILL",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal,
                              ),
                            ),
                            TextSpan(
                              text: "-in Aja!",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),

                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Waktu Anda Berharga – Jangan Buang-Buang di Kasir. ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: "QUICKBILL",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.teal, // Warna biru kehijauan
                              ),
                            ),
                            TextSpan(
                              text: " yang Mengurus, Anda yang Mengembangkan!",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 55),
                      Button(
                        label: "Start",
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                        gradientColors: [
                          AppColors.teal,
                          AppColors.blueElectric,
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
