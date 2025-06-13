import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:badges/badges.dart' as badges;
import '../bloc/checkout/checkout_bloc.dart';

class NavItem extends StatelessWidget {
  final String iconPath; // Ubah dari IconData ke String
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        decoration: BoxDecoration(
          color: isActive ? AppColors.softTeal : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            label == 'Orders'
                ? BlocBuilder<CheckoutBloc, CheckoutState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: Image.asset(
                            iconPath,
                            width: 25,
                            height: 25,
                            color:
                                isActive
                                    ? AppColors.blueElectric
                                    : AppColors.disabledIcon,
                          ),
                        );
                      },
                      success: (data, qty, total, _) {
                        if (data.isEmpty) {
                          return SizedBox(
                            width: 25.0,
                            height: 25.0,
                            child: Image.asset(
                              iconPath,
                              width: 25,
                              height: 25,
                              color:
                                  isActive
                                      ? AppColors.blueElectric
                                      : AppColors.disabledIcon,
                            ),
                          );
                        } else {
                          return badges.Badge(
                            badgeContent: Text(
                              '$qty',
                              style: const TextStyle(color: Colors.white),
                            ),
                            child: SizedBox(
                              width: 25.0,
                              height: 25.0,
                              child: Image.asset(
                                iconPath,
                                width: 25,
                                height: 25,
                                color:
                                    isActive
                                        ? AppColors.blueElectric
                                        : AppColors.disabledIcon,
                              ),
                            ),
                          );
                        }
                      },
                    );
                  },
                )
                : SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image.asset(
                    iconPath,
                    width: 25,
                    height: 25,
                    color:
                        isActive
                            ? AppColors.blueElectric
                            : AppColors.disabledIcon,
                  ),
                ),

            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color:
                    isActive ? AppColors.blueElectric : AppColors.disabledIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
