import 'package:flutter/material.dart';
import 'package:quickbill/core/extensions/int_ext.dart';
import 'package:quickbill/core/extensions/string_ext.dart';

import 'package:quickbill/presentation/payments/widgets/label_value.dart';

import '../../../core/constants/colors.dart';
import '../../order/models/order_model.dart';

class HistoryItem extends StatelessWidget {
  final OrderModel data;
  const HistoryItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelValue(
              label: 'PAYMENT METHOD',
              value:
                  data.paymentMethod == 'qris'
                      ? 'QRIS'
                      : (data.paymentMethod == 'cash' ? 'Cash' : 'Debit'),
            ),
            const Divider(height: 16.0),
            LabelValue(
              label: 'TOTAL BILL',
              value: data.totalPrice.currencyFormatRp,
            ),
            const Divider(height: 16.0),
            LabelValue(
              label: 'NOMINAL PAYMENT',
              value: data.nominalBayar.currencyFormatRp,
            ),
            const Divider(height: 16.0),
            LabelValue(
              label: 'PAYMENT TIME',
              value: data.transactionTime.toFormattedTime,
            ),
            const Divider(height: 16.0),
            LabelValue(
              label: 'PAYMENT STATUS',
              value: data.paymentStatus == 'success' ? 'Success' : 'Pending',
            ),
          ],
        ),
      ),
    );
  }
}
