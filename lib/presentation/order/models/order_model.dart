import 'dart:convert';
import '../../home/models/order_item.dart';

class OrderModel {
  final int? id;
  final String paymentMethod;
  final int nominalBayar;
  final int kembalian;
  final List<OrderItem> orders;
  final int totalQuantity;
  final int totalPrice;
  final int idKasir;
  final String namaKasir;
  final String transactionTime;
  final bool isSync;
  final String paymentStatus;
  final String? cardNumber;
  final String? cardHolder;
  OrderModel({
    this.id,
    required this.paymentMethod,
    required this.nominalBayar,
    required this.orders,
    required this.kembalian,
    required this.totalQuantity,
    required this.totalPrice,
    required this.idKasir,
    required this.namaKasir,
    required this.isSync,
    required this.transactionTime,
    required this.paymentStatus,
    this.cardNumber,
    this.cardHolder,
  });

  Map<String, dynamic> toMap() {
    return {
      'paymentMethod': paymentMethod,
      'nominalBayar': nominalBayar,
      'kembalian': kembalian,
      'orders': orders.map((x) => x.toMap()).toList(),
      'totalQuantity': totalQuantity,
      'totalPrice': totalPrice,
      'idKasir': idKasir,
      'namaKasir': namaKasir,
      'isSync': isSync,
      'paymentStatus': paymentStatus,
      'card_number': cardNumber,
      'card_holder': cardHolder,
    };
  }

  //  mominal INTEGER,
  //       payment_method TEXT
  //       total_item INTEGER,
  //       id_kasir INTEGER,
  //       nama_kasir TEXT,
  //       is_sync INTEGER DEFAULT 0

  Map<String, dynamic> toMapForLocal() {
    return {
      'payment_method': paymentMethod,
      'total_item': totalQuantity,
      'nominal_bayar': nominalBayar,
      'kembalian': kembalian,
      'nominal': totalPrice,
      'id_kasir': idKasir,
      'nama_kasir': namaKasir,
      'is_sync': isSync ? 1 : 0,
      'transaction_time': transactionTime,
      'paymentStatus': paymentStatus,
      'card_number': cardNumber,
      'card_holder': cardHolder,
    };
  }

  factory OrderModel.fromLocalMap(Map<String, dynamic> map) {
    return OrderModel(
      paymentMethod: map['payment_method'] ?? '',
      nominalBayar: map['nominal_bayar']?.toInt() ?? 0,
      kembalian: map['kembalian']?.toInt() ?? 0,
      orders: [],
      totalQuantity: map['total_item']?.toInt() ?? 0,
      totalPrice: map['nominal']?.toInt() ?? 0,
      idKasir: map['id_kasir']?.toInt() ?? 0,
      isSync: map['is_sync'] == 1 ? true : false,
      namaKasir: map['nama_kasir'] ?? '',
      id: map['id']?.toInt() ?? 0,
      transactionTime: map['transaction_time'] ?? '',
      paymentStatus: map['payment_status'] ?? 'pending',
    );
  }

  factory OrderModel.newFromLocalMap(
    Map<String, dynamic> map,
    List<OrderItem> orders,
  ) {
    return OrderModel(
      paymentMethod: map['payment_method'] ?? '',
      nominalBayar: map['nominal_bayar']?.toInt() ?? 0,
      kembalian: map['kembalian']?.toInt() ?? 0,
      orders: orders,
      totalQuantity: map['total_item']?.toInt() ?? 0,
      totalPrice: map['nominal']?.toInt() ?? 0,
      idKasir: map['id_kasir']?.toInt() ?? 0,
      isSync: map['is_sync'] == 1 ? true : false,
      namaKasir: map['nama_kasir'] ?? '',
      id: map['id']?.toInt() ?? 0,
      transactionTime: map['transaction_time'] ?? '',
      paymentStatus: map['payment_status'] ?? 'pending',
    );
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      paymentMethod: map['payment_method'] ?? '',
      nominalBayar: map['nominal_bayar']?.toInt() ?? 0,
      kembalian: map['kembalian']?.toInt() ?? 0,
      orders:
          map['orders'] != null
              ? List<OrderItem>.from(
                map['orders']?.map((x) => OrderItem.fromMap(x)),
              )
              : <OrderItem>[],
      totalQuantity: map['total_item']?.toInt() ?? 0,
      totalPrice: map['total_price']?.toInt() ?? 0,
      idKasir: map['kasir_id']?.toInt() ?? 0,
      isSync: map['is_sync'] ?? false,
      namaKasir: map['nama_kasir'] ?? '',
      id: map['id']?.toInt() ?? 0,
      transactionTime: map['transaction_time'] ?? '',
      paymentStatus: map['payment_status'] ?? 'pending',
      cardNumber: map['card_number'],
      cardHolder: map['card_holder'],
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) =>
      OrderModel.fromMap(json.decode(source));
}
