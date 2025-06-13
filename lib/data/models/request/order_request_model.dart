import 'package:meta/meta.dart';
import 'dart:convert';

class OrderRequestModel {
  final int? orderId;
  final String transactionTime;
  final int kasirId;
  final int totalPrice;
  final int totalItem;
  final String paymentMethod;
  final int nominalBayar;
  final List<OrderItemModel> orderItems;
  final int kembalian;
  final String? cardNumber;
  final String? cardHolder;
  final String paymentStatus;

  OrderRequestModel({
    this.orderId,
    required this.nominalBayar,
    required this.transactionTime,
    required this.kasirId,
    required this.totalPrice,
    required this.totalItem,
    required this.orderItems,
    required this.paymentMethod,
    required this.kembalian,
    this.cardNumber,
    this.cardHolder,
    this.paymentStatus = "pending",
  });

  factory OrderRequestModel.fromJson(String str) =>
      OrderRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderRequestModel.fromMap(Map<String, dynamic> json) =>
      OrderRequestModel(
        orderId: json["id"],
        transactionTime: json["transaction_time"],
        kasirId: json["kasir_id"],
        totalPrice: json["total_price"],
        totalItem: json["total_item"],
        paymentMethod: json["payment_method"],
        nominalBayar: json["nominal_bayar"],
        kembalian: json["kembalian"],
        cardNumber: json["card_number"],
        cardHolder: json["card_holder"],
        paymentStatus: json["payment_status"],
        orderItems: List<OrderItemModel>.from(
          json["order_items"].map((x) => OrderItemModel.fromMap(x)),
        ),
      );

  Map<String, dynamic> toMap() => {
    "id": orderId,
    "transaction_time": transactionTime,
    "kasir_id": kasirId,
    "total_price": totalPrice,
    "total_item": totalItem,
    "payment_method": paymentMethod,
    "nominal_bayar": nominalBayar,
    "kembalian": kembalian,
    "card_number": cardNumber,
    "card_holder": cardHolder,
    "payment_status": paymentStatus,
    "order_items": List<dynamic>.from(orderItems.map((x) => x.toMap())),
  };
}

class OrderItemModel {
  final int productId;
  final int quantity;
  final int totalPrice;

  OrderItemModel({
    required this.productId,
    required this.quantity,
    required this.totalPrice,
  });

  factory OrderItemModel.fromJson(String str) =>
      OrderItemModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderItemModel.fromMap(Map<String, dynamic> json) => OrderItemModel(
    productId: json["product_id"],
    quantity: json["quantity"],
    totalPrice: json["total_price"],
  );

  Map<String, dynamic> toMap() => {
    "product_id": productId,
    "quantity": quantity,
    "total_price": totalPrice,
  };
}
