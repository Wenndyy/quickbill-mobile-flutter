import 'package:flutter/material.dart';
import 'package:quickbill/core/constants/colors.dart';

class TabCustom extends StatelessWidget {
  final List<TabMenu> children;
  final EdgeInsetsGeometry? padding;

  const TabCustom({super.key, required this.children, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue, width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(9.0)),
      ),
      child: Row(children: children),
    );
  }
}

class TabMenu extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  const TabMenu({
    super.key,
    required this.label,
    required this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            color: isActive ? AppColors.blueElectric : Colors.white,
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: isActive ? Colors.white : AppColors.blueElectric,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
