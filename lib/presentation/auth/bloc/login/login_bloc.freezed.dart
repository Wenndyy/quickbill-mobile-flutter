// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String otp) verifyOtp,
    required TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )
    resetPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String otp)? verifyOtp,
    TResult? Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String otp)? verifyOtp,
    TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_VerifyOtpAndResetPassword value) verifyOtp,
    required TResult Function(_ResetPassword value) resetPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
    LoginEvent value,
    $Res Function(LoginEvent) then,
  ) = _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LoginEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String otp) verifyOtp,
    required TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )
    resetPassword,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String otp)? verifyOtp,
    TResult? Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String otp)? verifyOtp,
    TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_VerifyOtpAndResetPassword value) verifyOtp,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LoginEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$LoginImplCopyWith<$Res> {
  factory _$$LoginImplCopyWith(
    _$LoginImpl value,
    $Res Function(_$LoginImpl) then,
  ) = __$$LoginImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginImpl>
    implements _$$LoginImplCopyWith<$Res> {
  __$$LoginImplCopyWithImpl(
    _$LoginImpl _value,
    $Res Function(_$LoginImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$LoginImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginImpl implements _Login {
  const _$LoginImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      __$$LoginImplCopyWithImpl<_$LoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String otp) verifyOtp,
    required TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )
    resetPassword,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String otp)? verifyOtp,
    TResult? Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String otp)? verifyOtp,
    TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_VerifyOtpAndResetPassword value) verifyOtp,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements LoginEvent {
  const factory _Login({
    required final String email,
    required final String password,
  }) = _$LoginImpl;

  String get email;
  String get password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginImplCopyWith<_$LoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordImplCopyWith<$Res> {
  factory _$$ForgotPasswordImplCopyWith(
    _$ForgotPasswordImpl value,
    $Res Function(_$ForgotPasswordImpl) then,
  ) = __$$ForgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ForgotPasswordImpl>
    implements _$$ForgotPasswordImplCopyWith<$Res> {
  __$$ForgotPasswordImplCopyWithImpl(
    _$ForgotPasswordImpl _value,
    $Res Function(_$ForgotPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$ForgotPasswordImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ForgotPasswordImpl implements _ForgotPassword {
  const _$ForgotPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'LoginEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      __$$ForgotPasswordImplCopyWithImpl<_$ForgotPasswordImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String otp) verifyOtp,
    required TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )
    resetPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String otp)? verifyOtp,
    TResult? Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String otp)? verifyOtp,
    TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_VerifyOtpAndResetPassword value) verifyOtp,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements LoginEvent {
  const factory _ForgotPassword({required final String email}) =
      _$ForgotPasswordImpl;

  String get email;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordImplCopyWith<_$ForgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpAndResetPasswordImplCopyWith<$Res> {
  factory _$$VerifyOtpAndResetPasswordImplCopyWith(
    _$VerifyOtpAndResetPasswordImpl value,
    $Res Function(_$VerifyOtpAndResetPasswordImpl) then,
  ) = __$$VerifyOtpAndResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String otp});
}

/// @nodoc
class __$$VerifyOtpAndResetPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$VerifyOtpAndResetPasswordImpl>
    implements _$$VerifyOtpAndResetPasswordImplCopyWith<$Res> {
  __$$VerifyOtpAndResetPasswordImplCopyWithImpl(
    _$VerifyOtpAndResetPasswordImpl _value,
    $Res Function(_$VerifyOtpAndResetPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? otp = null}) {
    return _then(
      _$VerifyOtpAndResetPasswordImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        otp:
            null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyOtpAndResetPasswordImpl implements _VerifyOtpAndResetPassword {
  const _$VerifyOtpAndResetPasswordImpl({
    required this.email,
    required this.otp,
  });

  @override
  final String email;
  @override
  final String otp;

  @override
  String toString() {
    return 'LoginEvent.verifyOtp(email: $email, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpAndResetPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otp);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpAndResetPasswordImplCopyWith<_$VerifyOtpAndResetPasswordImpl>
  get copyWith => __$$VerifyOtpAndResetPasswordImplCopyWithImpl<
    _$VerifyOtpAndResetPasswordImpl
  >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String otp) verifyOtp,
    required TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )
    resetPassword,
  }) {
    return verifyOtp(email, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String otp)? verifyOtp,
    TResult? Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
  }) {
    return verifyOtp?.call(email, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String otp)? verifyOtp,
    TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(email, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_VerifyOtpAndResetPassword value) verifyOtp,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtpAndResetPassword implements LoginEvent {
  const factory _VerifyOtpAndResetPassword({
    required final String email,
    required final String otp,
  }) = _$VerifyOtpAndResetPasswordImpl;

  String get email;
  String get otp;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpAndResetPasswordImplCopyWith<_$VerifyOtpAndResetPasswordImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordImplCopyWith<$Res> {
  factory _$$ResetPasswordImplCopyWith(
    _$ResetPasswordImpl value,
    $Res Function(_$ResetPasswordImpl) then,
  ) = __$$ResetPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String email,
    String otp,
    String password,
    String passwordConfirmation,
  });
}

/// @nodoc
class __$$ResetPasswordImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$ResetPasswordImpl>
    implements _$$ResetPasswordImplCopyWith<$Res> {
  __$$ResetPasswordImplCopyWithImpl(
    _$ResetPasswordImpl _value,
    $Res Function(_$ResetPasswordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _$ResetPasswordImpl(
        email:
            null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                    as String,
        otp:
            null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                    as String,
        password:
            null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                    as String,
        passwordConfirmation:
            null == passwordConfirmation
                ? _value.passwordConfirmation
                : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ResetPasswordImpl implements _ResetPassword {
  const _$ResetPasswordImpl({
    required this.email,
    required this.otp,
    required this.password,
    required this.passwordConfirmation,
  });

  @override
  final String email;
  @override
  final String otp;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'LoginEvent.resetPassword(email: $email, otp: $otp, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, otp, password, passwordConfirmation);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      __$$ResetPasswordImplCopyWithImpl<_$ResetPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String email, String password) login,
    required TResult Function(String email) forgotPassword,
    required TResult Function(String email, String otp) verifyOtp,
    required TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )
    resetPassword,
  }) {
    return resetPassword(email, otp, password, passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String email, String password)? login,
    TResult? Function(String email)? forgotPassword,
    TResult? Function(String email, String otp)? verifyOtp,
    TResult? Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
  }) {
    return resetPassword?.call(email, otp, password, passwordConfirmation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String email, String password)? login,
    TResult Function(String email)? forgotPassword,
    TResult Function(String email, String otp)? verifyOtp,
    TResult Function(
      String email,
      String otp,
      String password,
      String passwordConfirmation,
    )?
    resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email, otp, password, passwordConfirmation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Login value) login,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_VerifyOtpAndResetPassword value) verifyOtp,
    required TResult Function(_ResetPassword value) resetPassword,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Login value)? login,
    TResult? Function(_ForgotPassword value)? forgotPassword,
    TResult? Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult? Function(_ResetPassword value)? resetPassword,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Login value)? login,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_VerifyOtpAndResetPassword value)? verifyOtp,
    TResult Function(_ResetPassword value)? resetPassword,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class _ResetPassword implements LoginEvent {
  const factory _ResetPassword({
    required final String email,
    required final String otp,
    required final String password,
    required final String passwordConfirmation,
  }) = _$ResetPasswordImpl;

  String get email;
  String get otp;
  String get password;
  String get passwordConfirmation;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordImplCopyWith<_$ResetPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
    LoginState value,
    $Res Function(LoginState) then,
  ) = _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel authResponseModel});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? authResponseModel = null}) {
    return _then(
      _$SuccessImpl(
        null == authResponseModel
            ? _value.authResponseModel
            : authResponseModel // ignore: cast_nullable_to_non_nullable
                as AuthResponseModel,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.authResponseModel);

  @override
  final AuthResponseModel authResponseModel;

  @override
  String toString() {
    return 'LoginState.success(authResponseModel: $authResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.authResponseModel, authResponseModel) ||
                other.authResponseModel == authResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authResponseModel);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return success(authResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return success?.call(authResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(authResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success(final AuthResponseModel authResponseModel) =
      _$SuccessImpl;

  AuthResponseModel get authResponseModel;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  factory _$$ForgotPasswordSuccessImplCopyWith(
    _$ForgotPasswordSuccessImpl value,
    $Res Function(_$ForgotPasswordSuccessImpl) then,
  ) = __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ForgotPasswordSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ForgotPasswordSuccessImpl>
    implements _$$ForgotPasswordSuccessImplCopyWith<$Res> {
  __$$ForgotPasswordSuccessImplCopyWithImpl(
    _$ForgotPasswordSuccessImpl _value,
    $Res Function(_$ForgotPasswordSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ForgotPasswordSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ForgotPasswordSuccessImpl implements _ForgotPasswordSuccess {
  const _$ForgotPasswordSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.forgotPasswordSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordSuccessImplCopyWith<_$ForgotPasswordSuccessImpl>
  get copyWith =>
      __$$ForgotPasswordSuccessImplCopyWithImpl<_$ForgotPasswordSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return forgotPasswordSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return forgotPasswordSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return forgotPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return forgotPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (forgotPasswordSuccess != null) {
      return forgotPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordSuccess implements LoginState {
  const factory _ForgotPasswordSuccess(final String message) =
      _$ForgotPasswordSuccessImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordSuccessImplCopyWith<_$ForgotPasswordSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerificationSuccessImplCopyWith<$Res> {
  factory _$$OtpVerificationSuccessImplCopyWith(
    _$OtpVerificationSuccessImpl value,
    $Res Function(_$OtpVerificationSuccessImpl) then,
  ) = __$$OtpVerificationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpVerificationSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$OtpVerificationSuccessImpl>
    implements _$$OtpVerificationSuccessImplCopyWith<$Res> {
  __$$OtpVerificationSuccessImplCopyWithImpl(
    _$OtpVerificationSuccessImpl _value,
    $Res Function(_$OtpVerificationSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$OtpVerificationSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpVerificationSuccessImpl implements _OtpVerificationSuccess {
  const _$OtpVerificationSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.otpVerificationSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpVerificationSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpVerificationSuccessImplCopyWith<_$OtpVerificationSuccessImpl>
  get copyWith =>
      __$$OtpVerificationSuccessImplCopyWithImpl<_$OtpVerificationSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return otpVerificationSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return otpVerificationSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (otpVerificationSuccess != null) {
      return otpVerificationSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return otpVerificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return otpVerificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (otpVerificationSuccess != null) {
      return otpVerificationSuccess(this);
    }
    return orElse();
  }
}

abstract class _OtpVerificationSuccess implements LoginState {
  const factory _OtpVerificationSuccess(final String message) =
      _$OtpVerificationSuccessImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpVerificationSuccessImplCopyWith<_$OtpVerificationSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordSuccessImplCopyWith<$Res> {
  factory _$$ResetPasswordSuccessImplCopyWith(
    _$ResetPasswordSuccessImpl value,
    $Res Function(_$ResetPasswordSuccessImpl) then,
  ) = __$$ResetPasswordSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ResetPasswordSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$ResetPasswordSuccessImpl>
    implements _$$ResetPasswordSuccessImplCopyWith<$Res> {
  __$$ResetPasswordSuccessImplCopyWithImpl(
    _$ResetPasswordSuccessImpl _value,
    $Res Function(_$ResetPasswordSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ResetPasswordSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$ResetPasswordSuccessImpl implements _ResetPasswordSuccess {
  const _$ResetPasswordSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.resetPasswordSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordSuccessImplCopyWith<_$ResetPasswordSuccessImpl>
  get copyWith =>
      __$$ResetPasswordSuccessImplCopyWithImpl<_$ResetPasswordSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AuthResponseModel authResponseModel) success,
    required TResult Function(String message) error,
    required TResult Function(String message) forgotPasswordSuccess,
    required TResult Function(String message) otpVerificationSuccess,
    required TResult Function(String message) resetPasswordSuccess,
  }) {
    return resetPasswordSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AuthResponseModel authResponseModel)? success,
    TResult? Function(String message)? error,
    TResult? Function(String message)? forgotPasswordSuccess,
    TResult? Function(String message)? otpVerificationSuccess,
    TResult? Function(String message)? resetPasswordSuccess,
  }) {
    return resetPasswordSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AuthResponseModel authResponseModel)? success,
    TResult Function(String message)? error,
    TResult Function(String message)? forgotPasswordSuccess,
    TResult Function(String message)? otpVerificationSuccess,
    TResult Function(String message)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_ForgotPasswordSuccess value)
    forgotPasswordSuccess,
    required TResult Function(_OtpVerificationSuccess value)
    otpVerificationSuccess,
    required TResult Function(_ResetPasswordSuccess value) resetPasswordSuccess,
  }) {
    return resetPasswordSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult? Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult? Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
  }) {
    return resetPasswordSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_ForgotPasswordSuccess value)? forgotPasswordSuccess,
    TResult Function(_OtpVerificationSuccess value)? otpVerificationSuccess,
    TResult Function(_ResetPasswordSuccess value)? resetPasswordSuccess,
    required TResult orElse(),
  }) {
    if (resetPasswordSuccess != null) {
      return resetPasswordSuccess(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordSuccess implements LoginState {
  const factory _ResetPasswordSuccess(final String message) =
      _$ResetPasswordSuccessImpl;

  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordSuccessImplCopyWith<_$ResetPasswordSuccessImpl>
  get copyWith => throw _privateConstructorUsedError;
}
