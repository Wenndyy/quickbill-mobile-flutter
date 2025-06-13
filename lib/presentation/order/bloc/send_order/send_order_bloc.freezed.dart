// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SendOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderRequestModel orderRequest) sendOrder,
    required TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )
    updatePayment,
    required TResult Function() sendOrderForCloseChasier,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderRequestModel orderRequest)? sendOrder,
    TResult? Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult? Function()? sendOrderForCloseChasier,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderRequestModel orderRequest)? sendOrder,
    TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult Function()? sendOrderForCloseChasier,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(_SendOrderForCloseChasier value)
    sendOrderForCloseChasier,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(_SendOrderForCloseChasier value)?
    sendOrderForCloseChasier,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(_SendOrderForCloseChasier value)? sendOrderForCloseChasier,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOrderEventCopyWith<$Res> {
  factory $SendOrderEventCopyWith(
    SendOrderEvent value,
    $Res Function(SendOrderEvent) then,
  ) = _$SendOrderEventCopyWithImpl<$Res, SendOrderEvent>;
}

/// @nodoc
class _$SendOrderEventCopyWithImpl<$Res, $Val extends SendOrderEvent>
    implements $SendOrderEventCopyWith<$Res> {
  _$SendOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOrderEvent
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
    extends _$SendOrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SendOrderEvent.started()';
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
    required TResult Function(OrderRequestModel orderRequest) sendOrder,
    required TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )
    updatePayment,
    required TResult Function() sendOrderForCloseChasier,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderRequestModel orderRequest)? sendOrder,
    TResult? Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult? Function()? sendOrderForCloseChasier,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderRequestModel orderRequest)? sendOrder,
    TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult Function()? sendOrderForCloseChasier,
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
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(_SendOrderForCloseChasier value)
    sendOrderForCloseChasier,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(_SendOrderForCloseChasier value)?
    sendOrderForCloseChasier,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(_SendOrderForCloseChasier value)? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SendOrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendOrderImplCopyWith<$Res> {
  factory _$$SendOrderImplCopyWith(
    _$SendOrderImpl value,
    $Res Function(_$SendOrderImpl) then,
  ) = __$$SendOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderRequestModel orderRequest});
}

/// @nodoc
class __$$SendOrderImplCopyWithImpl<$Res>
    extends _$SendOrderEventCopyWithImpl<$Res, _$SendOrderImpl>
    implements _$$SendOrderImplCopyWith<$Res> {
  __$$SendOrderImplCopyWithImpl(
    _$SendOrderImpl _value,
    $Res Function(_$SendOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderRequest = null}) {
    return _then(
      _$SendOrderImpl(
        null == orderRequest
            ? _value.orderRequest
            : orderRequest // ignore: cast_nullable_to_non_nullable
                as OrderRequestModel,
      ),
    );
  }
}

/// @nodoc

class _$SendOrderImpl implements _SendOrder {
  const _$SendOrderImpl(this.orderRequest);

  @override
  final OrderRequestModel orderRequest;

  @override
  String toString() {
    return 'SendOrderEvent.sendOrder(orderRequest: $orderRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOrderImpl &&
            (identical(other.orderRequest, orderRequest) ||
                other.orderRequest == orderRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderRequest);

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOrderImplCopyWith<_$SendOrderImpl> get copyWith =>
      __$$SendOrderImplCopyWithImpl<_$SendOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderRequestModel orderRequest) sendOrder,
    required TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )
    updatePayment,
    required TResult Function() sendOrderForCloseChasier,
  }) {
    return sendOrder(orderRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderRequestModel orderRequest)? sendOrder,
    TResult? Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult? Function()? sendOrderForCloseChasier,
  }) {
    return sendOrder?.call(orderRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderRequestModel orderRequest)? sendOrder,
    TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult Function()? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(orderRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(_SendOrderForCloseChasier value)
    sendOrderForCloseChasier,
  }) {
    return sendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(_SendOrderForCloseChasier value)?
    sendOrderForCloseChasier,
  }) {
    return sendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(_SendOrderForCloseChasier value)? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(this);
    }
    return orElse();
  }
}

abstract class _SendOrder implements SendOrderEvent {
  const factory _SendOrder(final OrderRequestModel orderRequest) =
      _$SendOrderImpl;

  OrderRequestModel get orderRequest;

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOrderImplCopyWith<_$SendOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePaymentImplCopyWith<$Res> {
  factory _$$UpdatePaymentImplCopyWith(
    _$UpdatePaymentImpl value,
    $Res Function(_$UpdatePaymentImpl) then,
  ) = __$$UpdatePaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    int orderId,
    String paymentMethod,
    int nominalBayar,
    int kembalian,
    String paymentStatus,
    String? cardNumber,
    String? cardHolder,
    List<Map<String, dynamic>>? orderItems,
  });
}

/// @nodoc
class __$$UpdatePaymentImplCopyWithImpl<$Res>
    extends _$SendOrderEventCopyWithImpl<$Res, _$UpdatePaymentImpl>
    implements _$$UpdatePaymentImplCopyWith<$Res> {
  __$$UpdatePaymentImplCopyWithImpl(
    _$UpdatePaymentImpl _value,
    $Res Function(_$UpdatePaymentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? paymentMethod = null,
    Object? nominalBayar = null,
    Object? kembalian = null,
    Object? paymentStatus = null,
    Object? cardNumber = freezed,
    Object? cardHolder = freezed,
    Object? orderItems = freezed,
  }) {
    return _then(
      _$UpdatePaymentImpl(
        orderId:
            null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                    as int,
        paymentMethod:
            null == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as String,
        nominalBayar:
            null == nominalBayar
                ? _value.nominalBayar
                : nominalBayar // ignore: cast_nullable_to_non_nullable
                    as int,
        kembalian:
            null == kembalian
                ? _value.kembalian
                : kembalian // ignore: cast_nullable_to_non_nullable
                    as int,
        paymentStatus:
            null == paymentStatus
                ? _value.paymentStatus
                : paymentStatus // ignore: cast_nullable_to_non_nullable
                    as String,
        cardNumber:
            freezed == cardNumber
                ? _value.cardNumber
                : cardNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        cardHolder:
            freezed == cardHolder
                ? _value.cardHolder
                : cardHolder // ignore: cast_nullable_to_non_nullable
                    as String?,
        orderItems:
            freezed == orderItems
                ? _value._orderItems
                : orderItems // ignore: cast_nullable_to_non_nullable
                    as List<Map<String, dynamic>>?,
      ),
    );
  }
}

/// @nodoc

class _$UpdatePaymentImpl implements UpdatePayment {
  const _$UpdatePaymentImpl({
    required this.orderId,
    required this.paymentMethod,
    required this.nominalBayar,
    required this.kembalian,
    required this.paymentStatus,
    this.cardNumber,
    this.cardHolder,
    final List<Map<String, dynamic>>? orderItems,
  }) : _orderItems = orderItems;

  @override
  final int orderId;
  @override
  final String paymentMethod;
  @override
  final int nominalBayar;
  @override
  final int kembalian;
  @override
  final String paymentStatus;
  @override
  final String? cardNumber;
  @override
  final String? cardHolder;
  final List<Map<String, dynamic>>? _orderItems;
  @override
  List<Map<String, dynamic>>? get orderItems {
    final value = _orderItems;
    if (value == null) return null;
    if (_orderItems is EqualUnmodifiableListView) return _orderItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SendOrderEvent.updatePayment(orderId: $orderId, paymentMethod: $paymentMethod, nominalBayar: $nominalBayar, kembalian: $kembalian, paymentStatus: $paymentStatus, cardNumber: $cardNumber, cardHolder: $cardHolder, orderItems: $orderItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePaymentImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.nominalBayar, nominalBayar) ||
                other.nominalBayar == nominalBayar) &&
            (identical(other.kembalian, kembalian) ||
                other.kembalian == kembalian) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.cardHolder, cardHolder) ||
                other.cardHolder == cardHolder) &&
            const DeepCollectionEquality().equals(
              other._orderItems,
              _orderItems,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    orderId,
    paymentMethod,
    nominalBayar,
    kembalian,
    paymentStatus,
    cardNumber,
    cardHolder,
    const DeepCollectionEquality().hash(_orderItems),
  );

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePaymentImplCopyWith<_$UpdatePaymentImpl> get copyWith =>
      __$$UpdatePaymentImplCopyWithImpl<_$UpdatePaymentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderRequestModel orderRequest) sendOrder,
    required TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )
    updatePayment,
    required TResult Function() sendOrderForCloseChasier,
  }) {
    return updatePayment(
      orderId,
      paymentMethod,
      nominalBayar,
      kembalian,
      paymentStatus,
      cardNumber,
      cardHolder,
      orderItems,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderRequestModel orderRequest)? sendOrder,
    TResult? Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult? Function()? sendOrderForCloseChasier,
  }) {
    return updatePayment?.call(
      orderId,
      paymentMethod,
      nominalBayar,
      kembalian,
      paymentStatus,
      cardNumber,
      cardHolder,
      orderItems,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderRequestModel orderRequest)? sendOrder,
    TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult Function()? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (updatePayment != null) {
      return updatePayment(
        orderId,
        paymentMethod,
        nominalBayar,
        kembalian,
        paymentStatus,
        cardNumber,
        cardHolder,
        orderItems,
      );
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(_SendOrderForCloseChasier value)
    sendOrderForCloseChasier,
  }) {
    return updatePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(_SendOrderForCloseChasier value)?
    sendOrderForCloseChasier,
  }) {
    return updatePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(_SendOrderForCloseChasier value)? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (updatePayment != null) {
      return updatePayment(this);
    }
    return orElse();
  }
}

abstract class UpdatePayment implements SendOrderEvent {
  const factory UpdatePayment({
    required final int orderId,
    required final String paymentMethod,
    required final int nominalBayar,
    required final int kembalian,
    required final String paymentStatus,
    final String? cardNumber,
    final String? cardHolder,
    final List<Map<String, dynamic>>? orderItems,
  }) = _$UpdatePaymentImpl;

  int get orderId;
  String get paymentMethod;
  int get nominalBayar;
  int get kembalian;
  String get paymentStatus;
  String? get cardNumber;
  String? get cardHolder;
  List<Map<String, dynamic>>? get orderItems;

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdatePaymentImplCopyWith<_$UpdatePaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOrderForCloseChasierImplCopyWith<$Res> {
  factory _$$SendOrderForCloseChasierImplCopyWith(
    _$SendOrderForCloseChasierImpl value,
    $Res Function(_$SendOrderForCloseChasierImpl) then,
  ) = __$$SendOrderForCloseChasierImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendOrderForCloseChasierImplCopyWithImpl<$Res>
    extends _$SendOrderEventCopyWithImpl<$Res, _$SendOrderForCloseChasierImpl>
    implements _$$SendOrderForCloseChasierImplCopyWith<$Res> {
  __$$SendOrderForCloseChasierImplCopyWithImpl(
    _$SendOrderForCloseChasierImpl _value,
    $Res Function(_$SendOrderForCloseChasierImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendOrderForCloseChasierImpl implements _SendOrderForCloseChasier {
  const _$SendOrderForCloseChasierImpl();

  @override
  String toString() {
    return 'SendOrderEvent.sendOrderForCloseChasier()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOrderForCloseChasierImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(OrderRequestModel orderRequest) sendOrder,
    required TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )
    updatePayment,
    required TResult Function() sendOrderForCloseChasier,
  }) {
    return sendOrderForCloseChasier();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(OrderRequestModel orderRequest)? sendOrder,
    TResult? Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult? Function()? sendOrderForCloseChasier,
  }) {
    return sendOrderForCloseChasier?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(OrderRequestModel orderRequest)? sendOrder,
    TResult Function(
      int orderId,
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String paymentStatus,
      String? cardNumber,
      String? cardHolder,
      List<Map<String, dynamic>>? orderItems,
    )?
    updatePayment,
    TResult Function()? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (sendOrderForCloseChasier != null) {
      return sendOrderForCloseChasier();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(UpdatePayment value) updatePayment,
    required TResult Function(_SendOrderForCloseChasier value)
    sendOrderForCloseChasier,
  }) {
    return sendOrderForCloseChasier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(UpdatePayment value)? updatePayment,
    TResult? Function(_SendOrderForCloseChasier value)?
    sendOrderForCloseChasier,
  }) {
    return sendOrderForCloseChasier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(UpdatePayment value)? updatePayment,
    TResult Function(_SendOrderForCloseChasier value)? sendOrderForCloseChasier,
    required TResult orElse(),
  }) {
    if (sendOrderForCloseChasier != null) {
      return sendOrderForCloseChasier(this);
    }
    return orElse();
  }
}

abstract class _SendOrderForCloseChasier implements SendOrderEvent {
  const factory _SendOrderForCloseChasier() = _$SendOrderForCloseChasierImpl;
}

/// @nodoc
mixin _$SendOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendOrderStateCopyWith<$Res> {
  factory $SendOrderStateCopyWith(
    SendOrderState value,
    $Res Function(SendOrderState) then,
  ) = _$SendOrderStateCopyWithImpl<$Res, SendOrderState>;
}

/// @nodoc
class _$SendOrderStateCopyWithImpl<$Res, $Val extends SendOrderState>
    implements $SendOrderStateCopyWith<$Res> {
  _$SendOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendOrderState
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
    extends _$SendOrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SendOrderState.initial()';
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
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
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
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SendOrderState {
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
    extends _$SendOrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SendOrderState.loading()';
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
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
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
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SendOrderState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? orderId = null}) {
    return _then(
      _$SuccessImpl(
        null == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.orderId);

  @override
  final int orderId;

  @override
  String toString() {
    return 'SendOrderState.success(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  /// Create a copy of SendOrderState
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
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) {
    return success(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) {
    return success?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SendOrderState {
  const factory _Success(final int orderId) = _$SuccessImpl;

  int get orderId;

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCloseChasierImplCopyWith<$Res> {
  factory _$$SuccessCloseChasierImplCopyWith(
    _$SuccessCloseChasierImpl value,
    $Res Function(_$SuccessCloseChasierImpl) then,
  ) = __$$SuccessCloseChasierImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessCloseChasierImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$SuccessCloseChasierImpl>
    implements _$$SuccessCloseChasierImplCopyWith<$Res> {
  __$$SuccessCloseChasierImplCopyWithImpl(
    _$SuccessCloseChasierImpl _value,
    $Res Function(_$SuccessCloseChasierImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SuccessCloseChasierImpl implements _SuccessCloseChasier {
  const _$SuccessCloseChasierImpl();

  @override
  String toString() {
    return 'SendOrderState.successCloseChasier()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCloseChasierImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) {
    return successCloseChasier();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) {
    return successCloseChasier?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
    required TResult orElse(),
  }) {
    if (successCloseChasier != null) {
      return successCloseChasier();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) {
    return successCloseChasier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) {
    return successCloseChasier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) {
    if (successCloseChasier != null) {
      return successCloseChasier(this);
    }
    return orElse();
  }
}

abstract class _SuccessCloseChasier implements SendOrderState {
  const factory _SuccessCloseChasier() = _$SuccessCloseChasierImpl;
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
    extends _$SendOrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderState
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
    return 'SendOrderState.error(message: $message)';
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

  /// Create a copy of SendOrderState
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
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
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
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SendOrderState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentUpdatedImplCopyWith<$Res> {
  factory _$$PaymentUpdatedImplCopyWith(
    _$PaymentUpdatedImpl value,
    $Res Function(_$PaymentUpdatedImpl) then,
  ) = __$$PaymentUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentUpdatedImplCopyWithImpl<$Res>
    extends _$SendOrderStateCopyWithImpl<$Res, _$PaymentUpdatedImpl>
    implements _$$PaymentUpdatedImplCopyWith<$Res> {
  __$$PaymentUpdatedImplCopyWithImpl(
    _$PaymentUpdatedImpl _value,
    $Res Function(_$PaymentUpdatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendOrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentUpdatedImpl implements _PaymentUpdated {
  const _$PaymentUpdatedImpl();

  @override
  String toString() {
    return 'SendOrderState.paymentUpdated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(int orderId) success,
    required TResult Function() successCloseChasier,
    required TResult Function(String message) error,
    required TResult Function() paymentUpdated,
  }) {
    return paymentUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(int orderId)? success,
    TResult? Function()? successCloseChasier,
    TResult? Function(String message)? error,
    TResult? Function()? paymentUpdated,
  }) {
    return paymentUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int orderId)? success,
    TResult Function()? successCloseChasier,
    TResult Function(String message)? error,
    TResult Function()? paymentUpdated,
    required TResult orElse(),
  }) {
    if (paymentUpdated != null) {
      return paymentUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessCloseChasier value) successCloseChasier,
    required TResult Function(_Error value) error,
    required TResult Function(_PaymentUpdated value) paymentUpdated,
  }) {
    return paymentUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult? Function(_Error value)? error,
    TResult? Function(_PaymentUpdated value)? paymentUpdated,
  }) {
    return paymentUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessCloseChasier value)? successCloseChasier,
    TResult Function(_Error value)? error,
    TResult Function(_PaymentUpdated value)? paymentUpdated,
    required TResult orElse(),
  }) {
    if (paymentUpdated != null) {
      return paymentUpdated(this);
    }
    return orElse();
  }
}

abstract class _PaymentUpdated implements SendOrderState {
  const factory _PaymentUpdated() = _$PaymentUpdatedImpl;
}
