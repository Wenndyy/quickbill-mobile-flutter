import 'package:flutter/material.dart';
import 'package:quickbill/core/constants/colors.dart';

class CategoryOption extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryOption({
    super.key,
    required this.title,
    required this.iconPath,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 100,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.blueElectric : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 40,
              height: 40,
              color: isSelected ? Colors.white : AppColors.blueElectric,
            ),
            SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : AppColors.blueElectric,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
