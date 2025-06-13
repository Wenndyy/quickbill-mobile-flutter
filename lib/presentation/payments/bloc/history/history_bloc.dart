import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/order_remote_datasource.dart';
import '../../../order/models/order_model.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const HistoryState.loading());

      try {
        final data = await OrderRemoteDatasource().getOrders();
        emit(HistoryState.success(data));
      } catch (e) {
        emit(const HistoryState.error('Gagal mengambil data riwayat pesanan'));
      }
    });
  }
}
