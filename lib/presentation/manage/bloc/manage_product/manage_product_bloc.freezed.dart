// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manage_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ManageProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) deleteProduct,
    required TResult Function(int id) getDetailProduct,
    required TResult Function(int id, Product product, XFile? image)
    updateProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(int id)? deleteProduct,
    TResult? Function(int id)? getDetailProduct,
    TResult? Function(int id, Product product, XFile? image)? updateProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? deleteProduct,
    TResult Function(int id)? getDetailProduct,
    TResult Function(int id, Product product, XFile? image)? updateProduct,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetDetailProduct value) getDetailProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetDetailProduct value)? getDetailProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetDetailProduct value)? getDetailProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageProductEventCopyWith<$Res> {
  factory $ManageProductEventCopyWith(
    ManageProductEvent value,
    $Res Function(ManageProductEvent) then,
  ) = _$ManageProductEventCopyWithImpl<$Res, ManageProductEvent>;
}

/// @nodoc
class _$ManageProductEventCopyWithImpl<$Res, $Val extends ManageProductEvent>
    implements $ManageProductEventCopyWith<$Res> {
  _$ManageProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProductsImplCopyWith<$Res> {
  factory _$$GetProductsImplCopyWith(
    _$GetProductsImpl value,
    $Res Function(_$GetProductsImpl) then,
  ) = __$$GetProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProductsImplCopyWithImpl<$Res>
    extends _$ManageProductEventCopyWithImpl<$Res, _$GetProductsImpl>
    implements _$$GetProductsImplCopyWith<$Res> {
  __$$GetProductsImplCopyWithImpl(
    _$GetProductsImpl _value,
    $Res Function(_$GetProductsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProductsImpl implements _GetProducts {
  const _$GetProductsImpl();

  @override
  String toString() {
    return 'ManageProductEvent.getProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) deleteProduct,
    required TResult Function(int id) getDetailProduct,
    required TResult Function(int id, Product product, XFile? image)
    updateProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(int id)? deleteProduct,
    TResult? Function(int id)? getDetailProduct,
    TResult? Function(int id, Product product, XFile? image)? updateProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? deleteProduct,
    TResult Function(int id)? getDetailProduct,
    TResult Function(int id, Product product, XFile? image)? updateProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetDetailProduct value) getDetailProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetDetailProduct value)? getDetailProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetDetailProduct value)? getDetailProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ManageProductEvent {
  const factory _GetProducts() = _$GetProductsImpl;
}

/// @nodoc
abstract class _$$DeleteProductImplCopyWith<$Res> {
  factory _$$DeleteProductImplCopyWith(
    _$DeleteProductImpl value,
    $Res Function(_$DeleteProductImpl) then,
  ) = __$$DeleteProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteProductImplCopyWithImpl<$Res>
    extends _$ManageProductEventCopyWithImpl<$Res, _$DeleteProductImpl>
    implements _$$DeleteProductImplCopyWith<$Res> {
  __$$DeleteProductImplCopyWithImpl(
    _$DeleteProductImpl _value,
    $Res Function(_$DeleteProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$DeleteProductImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$DeleteProductImpl implements _DeleteProduct {
  const _$DeleteProductImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ManageProductEvent.deleteProduct(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProductImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      __$$DeleteProductImplCopyWithImpl<_$DeleteProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) deleteProduct,
    required TResult Function(int id) getDetailProduct,
    required TResult Function(int id, Product product, XFile? image)
    updateProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(int id)? deleteProduct,
    TResult? Function(int id)? getDetailProduct,
    TResult? Function(int id, Product product, XFile? image)? updateProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? deleteProduct,
    TResult Function(int id)? getDetailProduct,
    TResult Function(int id, Product product, XFile? image)? updateProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetDetailProduct value) getDetailProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetDetailProduct value)? getDetailProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetDetailProduct value)? getDetailProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ManageProductEvent {
  const factory _DeleteProduct(final int id) = _$DeleteProductImpl;

  int get id;

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteProductImplCopyWith<_$DeleteProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDetailProductImplCopyWith<$Res> {
  factory _$$GetDetailProductImplCopyWith(
    _$GetDetailProductImpl value,
    $Res Function(_$GetDetailProductImpl) then,
  ) = __$$GetDetailProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetDetailProductImplCopyWithImpl<$Res>
    extends _$ManageProductEventCopyWithImpl<$Res, _$GetDetailProductImpl>
    implements _$$GetDetailProductImplCopyWith<$Res> {
  __$$GetDetailProductImplCopyWithImpl(
    _$GetDetailProductImpl _value,
    $Res Function(_$GetDetailProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null}) {
    return _then(
      _$GetDetailProductImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
      ),
    );
  }
}

/// @nodoc

class _$GetDetailProductImpl implements _GetDetailProduct {
  const _$GetDetailProductImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ManageProductEvent.getDetailProduct(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailProductImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailProductImplCopyWith<_$GetDetailProductImpl> get copyWith =>
      __$$GetDetailProductImplCopyWithImpl<_$GetDetailProductImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) deleteProduct,
    required TResult Function(int id) getDetailProduct,
    required TResult Function(int id, Product product, XFile? image)
    updateProduct,
  }) {
    return getDetailProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(int id)? deleteProduct,
    TResult? Function(int id)? getDetailProduct,
    TResult? Function(int id, Product product, XFile? image)? updateProduct,
  }) {
    return getDetailProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? deleteProduct,
    TResult Function(int id)? getDetailProduct,
    TResult Function(int id, Product product, XFile? image)? updateProduct,
    required TResult orElse(),
  }) {
    if (getDetailProduct != null) {
      return getDetailProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetDetailProduct value) getDetailProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return getDetailProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetDetailProduct value)? getDetailProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return getDetailProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetDetailProduct value)? getDetailProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (getDetailProduct != null) {
      return getDetailProduct(this);
    }
    return orElse();
  }
}

abstract class _GetDetailProduct implements ManageProductEvent {
  const factory _GetDetailProduct(final int id) = _$GetDetailProductImpl;

  int get id;

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailProductImplCopyWith<_$GetDetailProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProductImplCopyWith<$Res> {
  factory _$$UpdateProductImplCopyWith(
    _$UpdateProductImpl value,
    $Res Function(_$UpdateProductImpl) then,
  ) = __$$UpdateProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, Product product, XFile? image});
}

/// @nodoc
class __$$UpdateProductImplCopyWithImpl<$Res>
    extends _$ManageProductEventCopyWithImpl<$Res, _$UpdateProductImpl>
    implements _$$UpdateProductImplCopyWith<$Res> {
  __$$UpdateProductImplCopyWithImpl(
    _$UpdateProductImpl _value,
    $Res Function(_$UpdateProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? product = null,
    Object? image = freezed,
  }) {
    return _then(
      _$UpdateProductImpl(
        null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                as int,
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                as Product,
        freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                as XFile?,
      ),
    );
  }
}

/// @nodoc

class _$UpdateProductImpl implements _UpdateProduct {
  const _$UpdateProductImpl(this.id, this.product, this.image);

  @override
  final int id;
  @override
  final Product product;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'ManageProductEvent.updateProduct(id: $id, product: $product, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, product, image);

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      __$$UpdateProductImplCopyWithImpl<_$UpdateProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProducts,
    required TResult Function(int id) deleteProduct,
    required TResult Function(int id) getDetailProduct,
    required TResult Function(int id, Product product, XFile? image)
    updateProduct,
  }) {
    return updateProduct(id, product, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProducts,
    TResult? Function(int id)? deleteProduct,
    TResult? Function(int id)? getDetailProduct,
    TResult? Function(int id, Product product, XFile? image)? updateProduct,
  }) {
    return updateProduct?.call(id, product, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProducts,
    TResult Function(int id)? deleteProduct,
    TResult Function(int id)? getDetailProduct,
    TResult Function(int id, Product product, XFile? image)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(id, product, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_DeleteProduct value) deleteProduct,
    required TResult Function(_GetDetailProduct value) getDetailProduct,
    required TResult Function(_UpdateProduct value) updateProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProducts value)? getProducts,
    TResult? Function(_DeleteProduct value)? deleteProduct,
    TResult? Function(_GetDetailProduct value)? getDetailProduct,
    TResult? Function(_UpdateProduct value)? updateProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_DeleteProduct value)? deleteProduct,
    TResult Function(_GetDetailProduct value)? getDetailProduct,
    TResult Function(_UpdateProduct value)? updateProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdateProduct implements ManageProductEvent {
  const factory _UpdateProduct(
    final int id,
    final Product product,
    final XFile? image,
  ) = _$UpdateProductImpl;

  int get id;
  Product get product;
  XFile? get image;

  /// Create a copy of ManageProductEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProductImplCopyWith<_$UpdateProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ManageProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(ProductDetailResponseModel product) detailSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(ProductDetailResponseModel product)? detailSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(ProductDetailResponseModel product)? detailSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManageProductStateCopyWith<$Res> {
  factory $ManageProductStateCopyWith(
    ManageProductState value,
    $Res Function(ManageProductState) then,
  ) = _$ManageProductStateCopyWithImpl<$Res, ManageProductState>;
}

/// @nodoc
class _$ManageProductStateCopyWithImpl<$Res, $Val extends ManageProductState>
    implements $ManageProductStateCopyWith<$Res> {
  _$ManageProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ManageProductState
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
    extends _$ManageProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ManageProductState.initial()';
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
    required TResult Function(List<Product> products) success,
    required TResult Function(ProductDetailResponseModel product) detailSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(ProductDetailResponseModel product)? detailSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(ProductDetailResponseModel product)? detailSuccess,
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
    required TResult Function(_DetailSuccess value) detailSuccess,
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
    TResult? Function(_DetailSuccess value)? detailSuccess,
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
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ManageProductState {
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
    extends _$ManageProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ManageProductState.loading()';
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
    required TResult Function(List<Product> products) success,
    required TResult Function(ProductDetailResponseModel product) detailSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(ProductDetailResponseModel product)? detailSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(ProductDetailResponseModel product)? detailSuccess,
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
    required TResult Function(_DetailSuccess value) detailSuccess,
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
    TResult? Function(_DetailSuccess value)? detailSuccess,
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
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ManageProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
    _$SuccessImpl value,
    $Res Function(_$SuccessImpl) then,
  ) = __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$ManageProductStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
    _$SuccessImpl _value,
    $Res Function(_$SuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? products = null}) {
    return _then(
      _$SuccessImpl(
        null == products
            ? _value._products
            : products // ignore: cast_nullable_to_non_nullable
                as List<Product>,
      ),
    );
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Product> products) : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ManageProductState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ManageProductState
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
    required TResult Function(List<Product> products) success,
    required TResult Function(ProductDetailResponseModel product) detailSuccess,
    required TResult Function(String message) error,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(ProductDetailResponseModel product)? detailSuccess,
    TResult? Function(String message)? error,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(ProductDetailResponseModel product)? detailSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DetailSuccess value) detailSuccess,
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
    TResult? Function(_DetailSuccess value)? detailSuccess,
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
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ManageProductState {
  const factory _Success(final List<Product> products) = _$SuccessImpl;

  List<Product> get products;

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailSuccessImplCopyWith<$Res> {
  factory _$$DetailSuccessImplCopyWith(
    _$DetailSuccessImpl value,
    $Res Function(_$DetailSuccessImpl) then,
  ) = __$$DetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductDetailResponseModel product});
}

/// @nodoc
class __$$DetailSuccessImplCopyWithImpl<$Res>
    extends _$ManageProductStateCopyWithImpl<$Res, _$DetailSuccessImpl>
    implements _$$DetailSuccessImplCopyWith<$Res> {
  __$$DetailSuccessImplCopyWithImpl(
    _$DetailSuccessImpl _value,
    $Res Function(_$DetailSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? product = null}) {
    return _then(
      _$DetailSuccessImpl(
        null == product
            ? _value.product
            : product // ignore: cast_nullable_to_non_nullable
                as ProductDetailResponseModel,
      ),
    );
  }
}

/// @nodoc

class _$DetailSuccessImpl implements _DetailSuccess {
  const _$DetailSuccessImpl(this.product);

  @override
  final ProductDetailResponseModel product;

  @override
  String toString() {
    return 'ManageProductState.detailSuccess(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSuccessImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSuccessImplCopyWith<_$DetailSuccessImpl> get copyWith =>
      __$$DetailSuccessImplCopyWithImpl<_$DetailSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Product> products) success,
    required TResult Function(ProductDetailResponseModel product) detailSuccess,
    required TResult Function(String message) error,
  }) {
    return detailSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(ProductDetailResponseModel product)? detailSuccess,
    TResult? Function(String message)? error,
  }) {
    return detailSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(ProductDetailResponseModel product)? detailSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailSuccess != null) {
      return detailSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_DetailSuccess value) detailSuccess,
    required TResult Function(_Error value) error,
  }) {
    return detailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_DetailSuccess value)? detailSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return detailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (detailSuccess != null) {
      return detailSuccess(this);
    }
    return orElse();
  }
}

abstract class _DetailSuccess implements ManageProductState {
  const factory _DetailSuccess(final ProductDetailResponseModel product) =
      _$DetailSuccessImpl;

  ProductDetailResponseModel get product;

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailSuccessImplCopyWith<_$DetailSuccessImpl> get copyWith =>
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
    extends _$ManageProductStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ManageProductState
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
    return 'ManageProductState.error(message: $message)';
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

  /// Create a copy of ManageProductState
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
    required TResult Function(List<Product> products) success,
    required TResult Function(ProductDetailResponseModel product) detailSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Product> products)? success,
    TResult? Function(ProductDetailResponseModel product)? detailSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Product> products)? success,
    TResult Function(ProductDetailResponseModel product)? detailSuccess,
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
    required TResult Function(_DetailSuccess value) detailSuccess,
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
    TResult? Function(_DetailSuccess value)? detailSuccess,
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
    TResult Function(_DetailSuccess value)? detailSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ManageProductState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ManageProductState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
