import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/qris_remote_datasource.dart';
import '../../../../data/models/response/qris_response_model.dart';
import '../../../../data/models/response/qris_status_response_model.dart';

part 'qris_event.dart';
part 'qris_state.dart';
part 'qris_bloc.freezed.dart';

class QrisBloc extends Bloc<QrisEvent, QrisState> {
  final QrisRemoteDatasource midtransRemoteDatasource;

  QrisBloc(this.midtransRemoteDatasource) : super(const QrisState.initial()) {
    on<_GenerateQRCode>((event, emit) async {
      emit(const QrisState.loading());

      try {
        final response = await midtransRemoteDatasource.generateQRCode(
          event.orderId,
          event.grossAmount,
        );

        // Check if it's a success status code
        final statusCodeInt = int.tryParse(response.statusCode ?? '');
        if (statusCodeInt != null &&
            statusCodeInt >= 200 &&
            statusCodeInt < 300) {
          emit(QrisState.qrisResponse(response));
        } else {
          emit(
            QrisState.error(
              '${response.statusCode}: ${response.statusMessage}',
            ),
          );
        }
      } catch (e) {
        emit(QrisState.error(e.toString()));
      }
    });

    on<_CheckPaymentStatus>((event, emit) async {
      try {
        final response = await midtransRemoteDatasource.checkPaymentStatus(
          event.orderId,
        );

        // Check if it's a success status code
        final statusCodeInt = int.tryParse(response.statusCode ?? '');
        if (statusCodeInt != null &&
            statusCodeInt >= 200 &&
            statusCodeInt < 300) {
          if (response.transactionStatus == 'settlement') {
            emit(const QrisState.success('Pembayaran Berhasil'));
          } else {
            emit(QrisState.statusCheck(response));
          }
        } else {
          emit(
            QrisState.error(
              '${response.statusCode}: ${response.statusMessage}',
            ),
          );
        }
      } catch (e) {
        emit(QrisState.error(e.toString()));
      }
    });
  }
}
