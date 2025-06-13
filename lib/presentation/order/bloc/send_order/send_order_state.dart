part of 'send_order_bloc.dart';

@freezed
class SendOrderState with _$SendOrderState {
  const factory SendOrderState.initial() = _Initial;
  const factory SendOrderState.loading() = _Loading;
  const factory SendOrderState.success(int orderId) = _Success;
  const factory SendOrderState.successCloseChasier() = _SuccessCloseChasier;
  const factory SendOrderState.error(String message) = _Error;
   const factory SendOrderState.paymentUpdated() = _PaymentUpdated; 
}
