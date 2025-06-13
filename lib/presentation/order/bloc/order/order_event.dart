part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.started() = _Started;
  const factory OrderEvent.addPaymentMethod(
    String paymentMethod,
    List<OrderItem> orders,
    String customerName,
  ) = _AddPaymentMethod;
  const factory OrderEvent.addNominalBayar(int nominal) = _AddNominalBayar;
  const factory OrderEvent.processOrder({
    required String paymentMethod,
    required int nominalBayar,
    required int kembalian,
    required String customerName,
  }) = _ProcessOrder;
}
