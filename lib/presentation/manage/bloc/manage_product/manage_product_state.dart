part of 'manage_product_bloc.dart';

@freezed
class ManageProductState with _$ManageProductState {
  const factory ManageProductState.initial() = _Initial;
  const factory ManageProductState.loading() = _Loading;
  const factory ManageProductState.success(List<Product> products) = _Success;

  const factory ManageProductState.detailSuccess(ProductDetailResponseModel product) =
      _DetailSuccess;

  const factory ManageProductState.error(String message) = _Error;
}
