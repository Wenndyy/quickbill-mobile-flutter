part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(AuthResponseModel authResponseModel) =
      _Success;
  const factory LoginState.error(String message) = _Error;
  const factory LoginState.forgotPasswordSuccess(String message) =
      _ForgotPasswordSuccess;
  const factory LoginState.otpVerificationSuccess(String message) =
      _OtpVerificationSuccess;
  const factory LoginState.resetPasswordSuccess(String message) = _ResetPasswordSuccess;

}
