// phone_number_dialog.dart
import 'package:flutter/material.dart';
import 'package:quickbill/core/components/buttons.dart';

import '../../../core/constants/colors.dart';

class PhoneNumberDialog extends StatefulWidget {
  const PhoneNumberDialog({super.key});

  @override
  State<PhoneNumberDialog> createState() => _PhoneNumberDialogState();
}

class _PhoneNumberDialogState extends State<PhoneNumberDialog> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: AppColors.white,
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Send Receipt to WhatsApp',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.blueElectric),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: AppColors.blueElectric),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: AppColors.blueElectric,
                    width: 2,
                  ),
                ),
                hintText: 'Enter Phone Number',
                prefixText: '+62 ',
                hintStyle: TextStyle(color: AppColors.grey),
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: AppColors.blueElectric),
                      padding: EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: AppColors.blueElectric,
                        fontFamily: 'Poppins',
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Button(
                    onPressed: () {
                      if (_phoneController.text.isNotEmpty) {
                        Navigator.pop(context, _phoneController.text);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Phone number cannot be empty'),
                          ),
                        );
                      }
                    },
                    label: 'Send',
                    gradientColors: [AppColors.teal, AppColors.blueElectric],
                    width: 150,
                    height: 45,
                    borderRadius: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
