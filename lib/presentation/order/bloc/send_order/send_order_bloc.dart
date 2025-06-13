import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/order_remote_datasource.dart';

import '../../../../data/models/request/order_request_model.dart';

part 'send_order_event.dart';
part 'send_order_state.dart';
part 'send_order_bloc.freezed.dart';

class SendOrderBloc extends Bloc<SendOrderEvent, SendOrderState> {
  final OrderRemoteDatasource orderRemoteDatasource;
  SendOrderBloc(this.orderRemoteDatasource) : super(_Initial()) {
    on<_SendOrder>((event, emit) async {
      emit(const SendOrderState.loading());

      try {
        final response = await orderRemoteDatasource.sendOrder(
          event.orderRequest,
        );

        if (response != null) {
          emit(SendOrderState.success(response));
        } else {
          emit(const SendOrderState.error('Gagal mengirim pesanan'));
        }
      } catch (e) {
        emit(SendOrderState.error('Terjadi kesalahan: $e'));
      }
    });
    on<UpdatePayment>((event, emit) async {
      emit(const _Loading());
      try {
        String? cardNumber;
        String? cardHolder;
        if (event.paymentMethod.toLowerCase() == 'debit') {
          cardNumber = event.cardNumber;
          cardHolder = event.cardHolder;
        }
        final result = await orderRemoteDatasource.updatePaymentOrder(
          orderId: event.orderId,
          paymentMethod: event.paymentMethod,
          nominalBayar: event.nominalBayar,
          kembalian: event.kembalian,
          paymentStatus: event.paymentStatus,
          cardNumber: cardNumber,
          cardHolder: cardHolder,
          orderItems: event.orderItems,
        );

        if (result) {
          emit(const _PaymentUpdated());
        } else {
          emit(const _Error('Gagal memperbarui pembayaran'));
        }
      } catch (e) {
        emit(_Error(e.toString()));
      }
    });

    // on<_SendOrderForCloseChasier>((event, emit) async {
    //   emit(const SendOrderState.loading());

    //   final ordersIsSyncZero =
    //       await ProductLocalDatasource.instance.getOrderByIsSync();

    //   for (final order in ordersIsSyncZero) {
    //     final orderItems = await ProductLocalDatasource.instance
    //         .getOrderItemByOrderIdLocal(order.id!);

    //     final orderRequest = OrderRequestModel(
    //       transactionTime: order.transactionTime,
    //       totalItem: order.totalQuantity,
    //       totalPrice: order.totalPrice,
    //       kasirId: order.idKasir,
    //       paymentMethod: order.paymentMethod,
    //       orderItems: orderItems,
    //       nominalBayar: order.nominalBayar,
    //       kembalian: order.kembalian,
    //     );
    //     final response = await orderRemoteDatasource.sendOrder(orderRequest);
    //     if (response != null) {
    //       await ProductLocalDatasource.instance.updateIsSyncOrderById(
    //         order.id!,
    //       );
    //     }
    //   }

    //   emit(const SendOrderState.successCloseChasier());
    // });
  }
}
