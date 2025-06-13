import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:quickbill/core/extensions/int_ext.dart';

import '../../home/models/order_item.dart';

class Struck extends StatelessWidget {
  final List<OrderItem> products;
  final int totalPrice;
  final String paymentMethod;
  final String namaKasir;
  const Struck({
    super.key,
    required this.products,
    required this.totalPrice,
    required this.paymentMethod,
    required this.namaKasir,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'QuickBill',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                Text(
                  'Tanggal: ${DateFormat('dd-MM-yyyy HH:mm').format(DateTime.now())}',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Divider(thickness: 1),

          Text('Pesanan:', style: TextStyle(fontWeight: FontWeight.bold)),
          ...products.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      item.product.name,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text(
                    '${item.quantity}x ${item.product.price.currencyFormatRp}',
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),

          Divider(thickness: 1),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total:', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                totalPrice.currencyFormatRp,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Metode:'), Text(paymentMethod)],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text('Kasir:'), Text(namaKasir)],
            ),
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Terima kasih telah berbelanja',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
