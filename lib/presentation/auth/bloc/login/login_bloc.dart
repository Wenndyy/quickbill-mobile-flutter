import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/datasources/auth_remote_datasource.dart';

import '../../../../data/models/response/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasource;
  LoginBloc(this.authRemoteDatasource) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());
      final response = await authRemoteDatasource.login(
        event.email,
        event.password,
      );
      response.fold((l) => emit(_Error(l)), (r) => emit(_Success(r)));
    });
    on<_ForgotPassword>((event, emit) async {
      emit(const _Loading());
      final response = await authRemoteDatasource.sendOtp(event.email);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_ForgotPasswordSuccess(r)),
      );
    });
    on<_VerifyOtpAndResetPassword>((event, emit) async {
      emit(const _Loading());
      final response = await authRemoteDatasource.verifyOtp(
        email: event.email,
        otp: event.otp,
      );
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_OtpVerificationSuccess(r)),
      );
    });
    on<_ResetPassword>((event, emit) async {
      emit(const _Loading());
      final response = await authRemoteDatasource.resetPassword(
        email: event.email,
        otp: event.otp,
        password: event.password,
        passwordConfirmation: event.passwordConfirmation,
      );
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_ResetPasswordSuccess(r)),
      );
    });
  }
}
