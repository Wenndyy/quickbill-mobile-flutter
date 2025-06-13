import 'package:flutter/material.dart';
import 'package:quickbill/core/assets/assets.gen.dart';

import 'package:quickbill/presentation/manage/pages/manage_product_page.dart';

import '../../../core/constants/colors.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  State<ManagePage> createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Manage",
          style: TextStyle(
            color: AppColors.blueElectric,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.blueElectric),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildManageCard(
              context,
              "Manage Product",
              Assets.icons.icManageProduct.path,
              AppColors.teal,
              ManageProductPage(),
              true,
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildManageCard(
    BuildContext context,
    String title,
    String imagePath,
    Color color,
    Widget page,
    bool isManageProduct,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
        width: 150,
        height: 135,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.softTeal,
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Image.asset(imagePath, height: 40, width: 40),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color:
                    isManageProduct ? AppColors.white : AppColors.blueElectric,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
