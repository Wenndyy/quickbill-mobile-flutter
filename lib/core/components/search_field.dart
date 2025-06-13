import 'package:flutter/material.dart';
import 'package:quickbill/core/constants/colors.dart';

class SearchField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String value)? onChanged;
  final VoidCallback? onTap;
  const SearchField({
    super.key,
    required this.controller,
    this.onChanged,
    this.onTap,
  });

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    final bool hasText = widget.controller.text.isNotEmpty;

    return Container(
      height: 39.06,

      decoration: BoxDecoration(
        color:
            _isFocused || hasText
                ? AppColors.softTeal
                : const Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: _isFocused ? AppColors.softTeal : Colors.transparent,
          width: 1.5,
        ),
        boxShadow:
            _isFocused || hasText
                ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
                : null,
      ),
      child: TextField(
        controller: widget.controller,
        onTap: widget.onTap,
        readOnly: widget.onTap != null,

        onChanged: widget.onChanged,
        // onTap: () {
        //   setState(() {
        //     _isFocused = true;
        //   });
        // },
        onEditingComplete: () {
          setState(() {
            _isFocused = false;
          });
        },
        focusNode: FocusNode(
          onKey: (node, event) {
            setState(() {
              _isFocused = node.hasFocus;
            });
            return KeyEventResult.ignored;
          },
        ),
        decoration: InputDecoration(
          hintText: 'search here',
          hintStyle: TextStyle(
            fontFamily: 'Poppins',
            color:
                _isFocused || hasText
                    ? AppColors.blueElectric
                    : Colors.grey[600],
            fontSize: 16,
          ),
          prefixIcon: Icon(
            Icons.search,
            color:
                _isFocused || hasText
                    ? AppColors.blueElectric
                    : Colors.grey[600],
            size: 23.05,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
