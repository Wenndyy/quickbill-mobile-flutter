import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quickbill/data/datasources/checkout_local_datasource.dart';

// import '../../../../data/datasources/product_local_datasource.dart';
import '../../../../data/models/response/product_response_model.dart';
// import '../../../order/models/draft_order_model.dart';
import '../../models/order_item.dart';

part 'checkout_event.dart';
part 'checkout_state.dart';
part 'checkout_bloc.freezed.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc() : super(const _Success([], 0, 0, 'customer')) {
    on<_AddCheckout>((event, emit) async {
      var currentStates = state as _Success;
      List<OrderItem> newCheckout = [...currentStates.products];
      emit(const _Loading());

      if (newCheckout.any((element) => element.product == event.product)) {
        var index = newCheckout.indexWhere(
          (element) => element.product == event.product,
        );
        newCheckout[index].quantity++;
      } else {
        newCheckout.add(OrderItem(product: event.product, quantity: 1));
      }

      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      await CheckoutLocalDatasource.saveCheckoutItems(newCheckout);

      emit(
        _Success(
          newCheckout,
          totalQuantity,
          totalPrice,
          currentStates.draftName,
        ),
      );
    });

    on<_RemoveCheckout>((event, emit) {
      var currentStates = state as _Success;
      List<OrderItem> newCheckout = [...currentStates.products];
      emit(const _Loading());
      if (newCheckout.any((element) => element.product == event.product)) {
        var index = newCheckout.indexWhere(
          (element) => element.product == event.product,
        );
        if (newCheckout[index].quantity > 1) {
          newCheckout[index].quantity--;
        } else {
          newCheckout.removeAt(index);
        }
      }

      // int totalQuantity = newCheckout.fold(0, (previousValue, element) => previousValue + element.quantity);
      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in newCheckout) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      emit(
        _Success(
          newCheckout,
          totalQuantity,
          totalPrice,
          currentStates.draftName,
        ),
      );
    });

    on<_Started>((event, emit) async {
      emit(const _Loading());
      List<OrderItem> items = await CheckoutLocalDatasource.loadCheckoutItems();

      int totalQuantity = 0;
      int totalPrice = 0;
      for (var element in items) {
        totalQuantity += element.quantity;
        totalPrice += element.quantity * element.product.price;
      }

      emit(_Success(items, totalQuantity, totalPrice, 'customer'));
    });
  }
}
