// whatsapp_sender.dart
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';
import 'dart:typed_data';
import '../../home/models/order_item.dart';
import 'struck.dart';
import 'phone_number_dialog.dart';

class WhatsAppSender {
  static final ScreenshotController _screenshotController =
      ScreenshotController();

  static Future<void> sendReceiptToWhatsApp({
    required BuildContext context,
    required List<OrderItem> products,
    required int totalPrice,
    required String paymentMethod,
    required String namaKasir,
  }) async {
    try {
      final phoneNumber = await showDialog<String>(
        context: context,
        builder: (context) => PhoneNumberDialog(),
      );

      if (phoneNumber == null || phoneNumber.isEmpty) return;

      showDialog(
        context: context,
        barrierDismissible: false,
        builder:
            (context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text('Menyiapkan struk...'),
                  ],
                ),
              ),
            ),
      );

      String formattedPhone = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');
      if (formattedPhone.startsWith('0')) {
        formattedPhone = '62${formattedPhone.substring(1)}';
      } else if (!formattedPhone.startsWith('62')) {
        formattedPhone = '62$formattedPhone';
      }

      Widget struckWidget = Material(
        color: Colors.white,
        child: Struck(
          products: products,
          totalPrice: totalPrice,
          paymentMethod: paymentMethod,
          namaKasir: namaKasir,
        ),
      );

      Uint8List? imageBytes;
      try {
        imageBytes = await _screenshotController.captureFromWidget(
          struckWidget,
          delay: Duration(milliseconds: 300),
          pixelRatio: 3.0,
          context: context,
        );
      } catch (e) {
        print("Error capturing screenshot: $e");

        if (context.mounted) {
          Navigator.of(context).pop();
        }
        throw "Gagal membuat gambar struk: $e";
      }

      if (imageBytes == null) {
        if (context.mounted) {
          Navigator.of(context).pop();
        }
        throw "Gagal membuat gambar struk";
      }

      final tempDir = await getTemporaryDirectory();
      final file = File(
        '${tempDir.path}/receipt_${DateTime.now().millisecondsSinceEpoch}.png',
      );

      try {
        await file.writeAsBytes(imageBytes);
        print("File saved at: ${file.path}");
        print("File exists: ${await file.exists()}");
        print("File size: ${await file.length()} bytes");
      } catch (e) {
        print("Error saving file: $e");
        if (context.mounted) {
          Navigator.of(context).pop();
        }
        throw "Gagal menyimpan gambar struk: $e";
      }

      if (context.mounted) {
        Navigator.of(context).pop();
      }

      try {
        final result = await Share.shareXFiles(
          [XFile(file.path)],
          text: 'Struk pembayaran Anda',
          subject: 'Struk QuickBill',
        );

        print("Share result: ${result.status}");

        if (result.status != ShareResultStatus.success) {
          try {
            final uri = Uri.parse('https://wa.me/$formattedPhone');
            if (await canLaunchUrl(uri)) {
              await launchUrl(uri, mode: LaunchMode.externalApplication);
            }
          } catch (e) {
            print("Error launching WhatsApp: $e");
          }
        }
      } catch (e) {
        print("Error sharing file: $e");
        if (context.mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Gagal berbagi struk: $e')));
        }
      }
    } catch (e) {
      print("Main error: $e");
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Gagal mengirim struk: $e')));
      }
    }
  }
}
