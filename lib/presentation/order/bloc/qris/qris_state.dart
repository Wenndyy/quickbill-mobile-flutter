part of 'qris_bloc.dart';

@freezed
class QrisState with _$QrisState {
  const factory QrisState.initial() = Initial;
  const factory QrisState.loading() = Loading;
  const factory QrisState.qrisResponse(QrisResponseModel qrisResponseModel) =
      QrisResponse;
  const factory QrisState.success(String message) = Success;
  const factory QrisState.error(String message) = Error;
  const factory QrisState.statusCheck(
    QrisStatusResponseModel qrisStatusResponseModel,
  ) = StatusCheck;
}
