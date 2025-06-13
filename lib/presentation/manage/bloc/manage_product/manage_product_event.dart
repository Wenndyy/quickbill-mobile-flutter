part of 'manage_product_bloc.dart';

@freezed
class ManageProductEvent with _$ManageProductEvent {
  const factory ManageProductEvent.getProducts() = _GetProducts;
  const factory ManageProductEvent.deleteProduct(int id) = _DeleteProduct;
  const factory ManageProductEvent.getDetailProduct(int id) = _GetDetailProduct;
  const factory ManageProductEvent.updateProduct(
    int id,
    Product product,
    XFile? image,
  ) = _UpdateProduct;
}
