import 'package:flutter/material.dart';
import 'package:quickbill/core/assets/assets.gen.dart';
import 'package:quickbill/core/constants/colors.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  const CustomPasswordField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: Text(
            widget.label,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: AppColors.darkBlue,
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        TextFormField(
          controller: widget.controller,
          obscureText: _obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 14,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:
                    _obscureText
                        ? Image.asset(
                          Assets.icons.icEyeOn.path,
                          width: 10,
                          height: 10,
                        )
                        : Image.asset(
                          Assets.icons.icEyeOff.path,
                          width: 10,
                          height: 10,
                        ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
