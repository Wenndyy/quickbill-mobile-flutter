import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:quickbill/core/constants/colors.dart';

class MenuButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final bool isActive;
  final VoidCallback onPressed;
  final bool isImage;
  final double size;

  const MenuButton({
    super.key,
    required this.iconPath,
    required this.label,
    this.isActive = false,
    required this.onPressed,
    this.isImage = false,
    this.size = 90,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            height: 100,
            width: 85,
            decoration: BoxDecoration(
              color: isActive ? AppColors.blueElectric : AppColors.softGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isImage
                    ? Image.asset(
                      iconPath,
                      width: 40,
                      height: 40,
                      color: isActive ? Colors.white : AppColors.blueElectric,
                    )
                    : SvgPicture.asset(
                      iconPath,
                      colorFilter: ColorFilter.mode(
                        isActive ? AppColors.white : AppColors.blueElectric,
                        BlendMode.srcIn,
                      ),
                    ),
                const SizedBox(height: 8),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: isActive ? Colors.white : AppColors.blueElectric,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
