import 'package:flutter/widgets.dart';

import '../../../core/constants/colors.dart';

class LabelValue extends StatelessWidget {
  final String label;
  final String value;
  const LabelValue({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: AppColors.disabledIcon,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 2),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Poppins',
              color: AppColors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}