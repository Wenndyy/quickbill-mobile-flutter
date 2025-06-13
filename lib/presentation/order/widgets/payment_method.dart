import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class PaymentMethod extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final String selectedPaymentMethod;

  final VoidCallback onPressed;
  const PaymentMethod({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onPressed,
    required this.isActive,
    required this.selectedPaymentMethod,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: isActive ? AppColors.blueElectric : AppColors.softGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 40,
              height: 40,
              color: isActive ? Colors.white : AppColors.blueElectric,
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                color: isActive ? Colors.white : AppColors.blueElectric,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
