part of 'send_order_bloc.dart';

@freezed
class SendOrderEvent with _$SendOrderEvent {
  const factory SendOrderEvent.started() = _Started;
  //send order
  const factory SendOrderEvent.sendOrder(OrderRequestModel orderRequest) =
      _SendOrder;
  const factory SendOrderEvent.updatePayment({
    required int orderId,
    required String paymentMethod,
    required int nominalBayar,
    required int kembalian,
    required String paymentStatus,
    String? cardNumber,
    String? cardHolder,
    List<Map<String, dynamic>>? orderItems,
  }) = UpdatePayment;
  const factory SendOrderEvent.sendOrderForCloseChasier() =
      _SendOrderForCloseChasier;
}
