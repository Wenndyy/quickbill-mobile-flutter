import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quickbill/core/constants/colors.dart';
import 'package:quickbill/core/constants/variables.dart';

class TransactionItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;
  
  const TransactionItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Center(
          child: Container(
            width: 79,
            height: 79,
            decoration: BoxDecoration(
              color: AppColors.softTeal,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: CachedNetworkImage(
                  imageUrl: '${Variables.imageBaseUrl}$imageUrl',
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Container(
                    color: AppColors.softGrey,
                    child: const Icon(Icons.shopping_bag, size: 30),
                  ),
                  errorWidget: (context, url, error) => 
                      const Icon(Icons.broken_image, size: 30),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins',
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  color: AppColors.grey,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: AppColors.blueElectric,
          ),
        ),
      ],
    );
  }
}