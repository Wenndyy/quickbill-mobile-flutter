import 'package:flutter/material.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:quickbill/presentation/splash/pages/splash2_page.dart';

class Splash1Page extends StatefulWidget {
  const Splash1Page({super.key});

  @override
  State<Splash1Page> createState() => _Splash1PageState();
}

class _Splash1PageState extends State<Splash1Page> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Splash2Page()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softTeal,
      body: Center(
        child: Image.asset(Assets.logo.logo.path, width: 150, height: 150),
      ),
    );
  }
}
