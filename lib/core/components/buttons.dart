import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final double borderRadius;
  final List<Color> gradientColors;
  final Color textColor;
  final double fontSize;

  const Button({
    super.key,
    required this.label,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 50.0,
    this.borderRadius = 16.0,
    this.gradientColors = const [
      Color(0xFF5AC8FA),
      Color(0xFF007AFF),
    ], // Biru Gradasi
    this.textColor = Colors.white,
    this.fontSize = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColors,
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: textColor,
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
