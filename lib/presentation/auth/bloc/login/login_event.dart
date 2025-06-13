part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.started() = _Started;
  const factory LoginEvent.login({
    required String email,
    required String password,
  }) = _Login;
  const factory LoginEvent.forgotPassword({required String email}) =
      _ForgotPassword;
  const factory LoginEvent.verifyOtp({
    required String email,
    required String otp,
  }) = _VerifyOtpAndResetPassword;

  const factory LoginEvent.resetPassword({
    required String email,
    required String otp,
    required String password,
    required String passwordConfirmation,
  }) = _ResetPassword;
}
