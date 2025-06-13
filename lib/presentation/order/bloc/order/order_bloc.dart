import 'package:bloc/bloc.dart';
import 'package:quickbill/data/datasources/auth_local_datasource.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quickbill/data/datasources/checkout_local_datasource.dart';

import '../../../../data/datasources/order_remote_datasource.dart';
import '../../../../data/models/request/order_request_model.dart';
import '../../../home/models/order_item.dart';
import '../../models/order_model.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(const _Success([], 0, 0, '', 0, 0, '', '')) {
    on<_AddPaymentMethod>((event, emit) async {
      emit(const _Loading());
      final userData = await AuthLocalDatasource().getAuthData();
      emit(
        _Success(
          event.orders,
          event.orders.fold(
            0,
            (previousValue, element) => previousValue + element.quantity,
          ),
          event.orders.fold(
            0,
            (previousValue, element) =>
                previousValue + (element.quantity * element.product.price),
          ),
          event.paymentMethod,
          0,
          userData.user.id,
          userData.user.name,
          event.customerName,
        ),
      );
    });

    on<_AddNominalBayar>((event, emit) {
      var currentStates = state as _Success;
      emit(const _Loading());

      emit(
        _Success(
          currentStates.products,
          currentStates.totalQuantity,
          currentStates.totalPrice,
          currentStates.paymentMethod,
          event.nominal,
          currentStates.idKasir,
          currentStates.namaKasir,
          currentStates.customerName,
        ),
      );
    });

    //started
    on<_Started>((event, emit) {
      emit(const _Loading());
      emit(const _Success([], 0, 0, '', 0, 0, '', ''));
    });

    on<_ProcessOrder>((event, emit) async {
      emit(const _Loading());
      final user = await AuthLocalDatasource().getAuthData();
      final items = await CheckoutLocalDatasource.loadCheckoutItems();

      final totalQuantity = items.fold(0, (sum, item) => sum + item.quantity);
      final totalPrice = items.fold(
        0,
        (sum, item) => sum + (item.quantity * item.product.price),
      );

      final orderItems =
          items.map((item) {
            return OrderItemModel(
              productId: item.product.id!,
              quantity: item.quantity,
              totalPrice: item.quantity * item.product.price,
            );
          }).toList();

      final requestModel = OrderRequestModel(
        nominalBayar: event.nominalBayar,
        transactionTime: DateTime.now().toIso8601String(),
        kasirId: user.user.id,
        totalPrice: totalPrice,
        totalItem: totalQuantity,
        orderItems: orderItems,
        paymentMethod: event.paymentMethod,
        kembalian: event.kembalian,
      );

      try {
        final orderResponse = await OrderRemoteDatasource().sendOrder(
          requestModel,
        );

        if (orderResponse != null) {
          await CheckoutLocalDatasource.clearCheckoutItems();

          emit(
            _Success(
              items,
              totalQuantity,
              totalPrice,
              event.paymentMethod,
              event.nominalBayar,
              user.user.id,
              user.user.name,
              event.customerName,
            ),
          );
        } else {
          emit(const OrderState.error("Gagal mengirim order"));
        }
      } catch (e) {
        emit(OrderState.error("Terjadi kesalahan: $e"));
      }
    });
  }
}

