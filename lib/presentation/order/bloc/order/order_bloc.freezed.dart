// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )
    addPaymentMethod,
    required TResult Function(int nominal) addNominalBayar,
    required TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )
    processOrder,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult? Function(int nominal)? addNominalBayar,
    TResult? Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult Function(int nominal)? addNominalBayar,
    TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPaymentMethod value) addPaymentMethod,
    required TResult Function(_AddNominalBayar value) addNominalBayar,
    required TResult Function(_ProcessOrder value) processOrder,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult? Function(_AddNominalBayar value)? addNominalBayar,
    TResult? Function(_ProcessOrder value)? processOrder,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult Function(_AddNominalBayar value)? addNominalBayar,
    TResult Function(_ProcessOrder value)? processOrder,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
    OrderEvent value,
    $Res Function(OrderEvent) then,
  ) = _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEvent
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
    extends _$OrderEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'OrderEvent.started()';
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
    required TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )
    addPaymentMethod,
    required TResult Function(int nominal) addNominalBayar,
    required TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )
    processOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult? Function(int nominal)? addNominalBayar,
    TResult? Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult Function(int nominal)? addNominalBayar,
    TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
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
    required TResult Function(_AddPaymentMethod value) addPaymentMethod,
    required TResult Function(_AddNominalBayar value) addNominalBayar,
    required TResult Function(_ProcessOrder value) processOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult? Function(_AddNominalBayar value)? addNominalBayar,
    TResult? Function(_ProcessOrder value)? processOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult Function(_AddNominalBayar value)? addNominalBayar,
    TResult Function(_ProcessOrder value)? processOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddPaymentMethodImplCopyWith<$Res> {
  factory _$$AddPaymentMethodImplCopyWith(
    _$AddPaymentMethodImpl value,
    $Res Function(_$AddPaymentMethodImpl) then,
  ) = __$$AddPaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String paymentMethod,
    List<OrderItem> orders,
    String customerName,
  });
}

/// @nodoc
class __$$AddPaymentMethodImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AddPaymentMethodImpl>
    implements _$$AddPaymentMethodImplCopyWith<$Res> {
  __$$AddPaymentMethodImplCopyWithImpl(
    _$AddPaymentMethodImpl _value,
    $Res Function(_$AddPaymentMethodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
    Object? orders = null,
    Object? customerName = null,
  }) {
    return _then(
      _$AddPaymentMethodImpl(
        null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                as String,
        null == orders
            ? _value._orders
            : orders // ignore: cast_nullable_to_non_nullable
                as List<OrderItem>,
        null == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$AddPaymentMethodImpl implements _AddPaymentMethod {
  const _$AddPaymentMethodImpl(
    this.paymentMethod,
    final List<OrderItem> orders,
    this.customerName,
  ) : _orders = orders;

  @override
  final String paymentMethod;
  final List<OrderItem> _orders;
  @override
  List<OrderItem> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final String customerName;

  @override
  String toString() {
    return 'OrderEvent.addPaymentMethod(paymentMethod: $paymentMethod, orders: $orders, customerName: $customerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPaymentMethodImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    paymentMethod,
    const DeepCollectionEquality().hash(_orders),
    customerName,
  );

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPaymentMethodImplCopyWith<_$AddPaymentMethodImpl> get copyWith =>
      __$$AddPaymentMethodImplCopyWithImpl<_$AddPaymentMethodImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )
    addPaymentMethod,
    required TResult Function(int nominal) addNominalBayar,
    required TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )
    processOrder,
  }) {
    return addPaymentMethod(paymentMethod, orders, customerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult? Function(int nominal)? addNominalBayar,
    TResult? Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
  }) {
    return addPaymentMethod?.call(paymentMethod, orders, customerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult Function(int nominal)? addNominalBayar,
    TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
    required TResult orElse(),
  }) {
    if (addPaymentMethod != null) {
      return addPaymentMethod(paymentMethod, orders, customerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPaymentMethod value) addPaymentMethod,
    required TResult Function(_AddNominalBayar value) addNominalBayar,
    required TResult Function(_ProcessOrder value) processOrder,
  }) {
    return addPaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult? Function(_AddNominalBayar value)? addNominalBayar,
    TResult? Function(_ProcessOrder value)? processOrder,
  }) {
    return addPaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult Function(_AddNominalBayar value)? addNominalBayar,
    TResult Function(_ProcessOrder value)? processOrder,
    required TResult orElse(),
  }) {
    if (addPaymentMethod != null) {
      return addPaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _AddPaymentMethod implements OrderEvent {
  const factory _AddPaymentMethod(
    final String paymentMethod,
    final List<OrderItem> orders,
    final String customerName,
  ) = _$AddPaymentMethodImpl;

  String get paymentMethod;
  List<OrderItem> get orders;
  String get customerName;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPaymentMethodImplCopyWith<_$AddPaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNominalBayarImplCopyWith<$Res> {
  factory _$$AddNominalBayarImplCopyWith(
    _$AddNominalBayarImpl value,
    $Res Function(_$AddNominalBayarImpl) then,
  ) = __$$AddNominalBayarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int nominal});
}

/// @nodoc
class __$$AddNominalBayarImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AddNominalBayarImpl>
    implements _$$AddNominalBayarImplCopyWith<$Res> {
  __$$AddNominalBayarImplCopyWithImpl(
    _$AddNominalBayarImpl _value,
    $Res Function(_$AddNominalBayarImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nominal = null}) {
    return _then(
      _$AddNominalBayarImpl(
        null == nominal
            ? _value.nominal
            : nominal // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$AddNominalBayarImpl implements _AddNominalBayar {
  const _$AddNominalBayarImpl(this.nominal);

  @override
  final int nominal;

  @override
  String toString() {
    return 'OrderEvent.addNominalBayar(nominal: $nominal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNominalBayarImpl &&
            (identical(other.nominal, nominal) || other.nominal == nominal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nominal);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNominalBayarImplCopyWith<_$AddNominalBayarImpl> get copyWith =>
      __$$AddNominalBayarImplCopyWithImpl<_$AddNominalBayarImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )
    addPaymentMethod,
    required TResult Function(int nominal) addNominalBayar,
    required TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )
    processOrder,
  }) {
    return addNominalBayar(nominal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult? Function(int nominal)? addNominalBayar,
    TResult? Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
  }) {
    return addNominalBayar?.call(nominal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult Function(int nominal)? addNominalBayar,
    TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
    required TResult orElse(),
  }) {
    if (addNominalBayar != null) {
      return addNominalBayar(nominal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPaymentMethod value) addPaymentMethod,
    required TResult Function(_AddNominalBayar value) addNominalBayar,
    required TResult Function(_ProcessOrder value) processOrder,
  }) {
    return addNominalBayar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult? Function(_AddNominalBayar value)? addNominalBayar,
    TResult? Function(_ProcessOrder value)? processOrder,
  }) {
    return addNominalBayar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult Function(_AddNominalBayar value)? addNominalBayar,
    TResult Function(_ProcessOrder value)? processOrder,
    required TResult orElse(),
  }) {
    if (addNominalBayar != null) {
      return addNominalBayar(this);
    }
    return orElse();
  }
}

abstract class _AddNominalBayar implements OrderEvent {
  const factory _AddNominalBayar(final int nominal) = _$AddNominalBayarImpl;

  int get nominal;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddNominalBayarImplCopyWith<_$AddNominalBayarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProcessOrderImplCopyWith<$Res> {
  factory _$$ProcessOrderImplCopyWith(
    _$ProcessOrderImpl value,
    $Res Function(_$ProcessOrderImpl) then,
  ) = __$$ProcessOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    String paymentMethod,
    int nominalBayar,
    int kembalian,
    String customerName,
  });
}

/// @nodoc
class __$$ProcessOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$ProcessOrderImpl>
    implements _$$ProcessOrderImplCopyWith<$Res> {
  __$$ProcessOrderImplCopyWithImpl(
    _$ProcessOrderImpl _value,
    $Res Function(_$ProcessOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
    Object? nominalBayar = null,
    Object? kembalian = null,
    Object? customerName = null,
  }) {
    return _then(
      _$ProcessOrderImpl(
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
        customerName:
            null == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ProcessOrderImpl implements _ProcessOrder {
  const _$ProcessOrderImpl({
    required this.paymentMethod,
    required this.nominalBayar,
    required this.kembalian,
    required this.customerName,
  });

  @override
  final String paymentMethod;
  @override
  final int nominalBayar;
  @override
  final int kembalian;
  @override
  final String customerName;

  @override
  String toString() {
    return 'OrderEvent.processOrder(paymentMethod: $paymentMethod, nominalBayar: $nominalBayar, kembalian: $kembalian, customerName: $customerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessOrderImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.nominalBayar, nominalBayar) ||
                other.nominalBayar == nominalBayar) &&
            (identical(other.kembalian, kembalian) ||
                other.kembalian == kembalian) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    paymentMethod,
    nominalBayar,
    kembalian,
    customerName,
  );

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessOrderImplCopyWith<_$ProcessOrderImpl> get copyWith =>
      __$$ProcessOrderImplCopyWithImpl<_$ProcessOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )
    addPaymentMethod,
    required TResult Function(int nominal) addNominalBayar,
    required TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )
    processOrder,
  }) {
    return processOrder(paymentMethod, nominalBayar, kembalian, customerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult? Function(int nominal)? addNominalBayar,
    TResult? Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
  }) {
    return processOrder?.call(
      paymentMethod,
      nominalBayar,
      kembalian,
      customerName,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
      String paymentMethod,
      List<OrderItem> orders,
      String customerName,
    )?
    addPaymentMethod,
    TResult Function(int nominal)? addNominalBayar,
    TResult Function(
      String paymentMethod,
      int nominalBayar,
      int kembalian,
      String customerName,
    )?
    processOrder,
    required TResult orElse(),
  }) {
    if (processOrder != null) {
      return processOrder(paymentMethod, nominalBayar, kembalian, customerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddPaymentMethod value) addPaymentMethod,
    required TResult Function(_AddNominalBayar value) addNominalBayar,
    required TResult Function(_ProcessOrder value) processOrder,
  }) {
    return processOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult? Function(_AddNominalBayar value)? addNominalBayar,
    TResult? Function(_ProcessOrder value)? processOrder,
  }) {
    return processOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddPaymentMethod value)? addPaymentMethod,
    TResult Function(_AddNominalBayar value)? addNominalBayar,
    TResult Function(_ProcessOrder value)? processOrder,
    required TResult orElse(),
  }) {
    if (processOrder != null) {
      return processOrder(this);
    }
    return orElse();
  }
}

abstract class _ProcessOrder implements OrderEvent {
  const factory _ProcessOrder({
    required final String paymentMethod,
    required final int nominalBayar,
    required final int kembalian,
    required final String customerName,
  }) = _$ProcessOrderImpl;

  String get paymentMethod;
  int get nominalBayar;
  int get kembalian;
  String get customerName;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProcessOrderImplCopyWith<_$ProcessOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )
    success,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
    OrderState value,
    $Res Function(OrderState) then,
  ) = _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderState
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
    extends _$OrderStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'OrderState.initial()';
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
    required TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult Function(String message)? error,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OrderState {
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
    extends _$OrderStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
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
    required TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult Function(String message)? error,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OrderState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({
    List<OrderItem> products,
    int totalQuantity,
    int totalPrice,
    String paymentMethod,
    int nominalBayar,
    int idKasir,
    String namaKasir,
    String customerName,
  });
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? totalQuantity = null,
    Object? totalPrice = null,
    Object? paymentMethod = null,
    Object? nominalBayar = null,
    Object? idKasir = null,
    Object? namaKasir = null,
    Object? customerName = null,
  }) {
    return _then(
      _$SuccessImpl(
        null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                as List<OrderItem>,
        null == totalQuantity
            ? _value.totalQuantity
            : totalQuantity // ignore: cast_nullable_to_non_nullable
                as int,
        null == totalPrice
            ? _value.totalPrice
            : totalPrice // ignore: cast_nullable_to_non_nullable
                as int,
        null == paymentMethod
            ? _value.paymentMethod
            : paymentMethod // ignore: cast_nullable_to_non_nullable
                as String,
        null == nominalBayar
            ? _value.nominalBayar
            : nominalBayar // ignore: cast_nullable_to_non_nullable
                as int,
        null == idKasir
            ? _value.idKasir
            : idKasir // ignore: cast_nullable_to_non_nullable
                as int,
        null == namaKasir
            ? _value.namaKasir
            : namaKasir // ignore: cast_nullable_to_non_nullable
                as String,
        null == customerName
            ? _value.customerName
            : customerName // ignore: cast_nullable_to_non_nullable
                as String,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
    final List<OrderItem> products,
    this.totalQuantity,
    this.totalPrice,
    this.paymentMethod,
    this.nominalBayar,
    this.idKasir,
    this.namaKasir,
    this.customerName,
  ) : _products = products;

  final List<OrderItem> _products;
  @override
  List<OrderItem> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final int totalQuantity;
  @override
  final int totalPrice;
  @override
  final String paymentMethod;
  @override
  final int nominalBayar;
  @override
  final int idKasir;
  @override
  final String namaKasir;
  @override
  final String customerName;

  @override
  String toString() {
    return 'OrderState.success(products: $products, totalQuantity: $totalQuantity, totalPrice: $totalPrice, paymentMethod: $paymentMethod, nominalBayar: $nominalBayar, idKasir: $idKasir, namaKasir: $namaKasir, customerName: $customerName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.totalQuantity, totalQuantity) ||
                other.totalQuantity == totalQuantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.nominalBayar, nominalBayar) ||
                other.nominalBayar == nominalBayar) &&
            (identical(other.idKasir, idKasir) || other.idKasir == idKasir) &&
            (identical(other.namaKasir, namaKasir) ||
                other.namaKasir == namaKasir) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_products),
    totalQuantity,
    totalPrice,
    paymentMethod,
    nominalBayar,
    idKasir,
    namaKasir,
    customerName,
  );

  /// Create a copy of OrderState
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
    required TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return success(
      products,
      totalQuantity,
      totalPrice,
      paymentMethod,
      nominalBayar,
      idKasir,
      namaKasir,
      customerName,
    );
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(
      products,
      totalQuantity,
      totalPrice,
      paymentMethod,
      nominalBayar,
      idKasir,
      namaKasir,
      customerName,
    );
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
        products,
        totalQuantity,
        totalPrice,
        paymentMethod,
        nominalBayar,
        idKasir,
        namaKasir,
        customerName,
      );
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
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements OrderState {
  const factory _Success(
    final List<OrderItem> products,
    final int totalQuantity,
    final int totalPrice,
    final String paymentMethod,
    final int nominalBayar,
    final int idKasir,
    final String namaKasir,
    final String customerName,
  ) = _$SuccessImpl;

  List<OrderItem> get products;
  int get totalQuantity;
  int get totalPrice;
  String get paymentMethod;
  int get nominalBayar;
  int get idKasir;
  String get namaKasir;
  String get customerName;

  /// Create a copy of OrderState
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
    extends _$OrderStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderState
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
    return 'OrderState.error(message: $message)';
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

  /// Create a copy of OrderState
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
    required TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )
    success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
      List<OrderItem> products,
      int totalQuantity,
      int totalPrice,
      String paymentMethod,
      int nominalBayar,
      int idKasir,
      String namaKasir,
      String customerName,
    )?
    success,
    TResult Function(String message)? error,
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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements OrderState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
