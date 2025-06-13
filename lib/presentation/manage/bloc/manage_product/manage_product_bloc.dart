import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../data/datasources/product_remote_datasource.dart';
import '../../../../data/models/request/product_request_model.dart';
import '../../../../data/models/response/product_response_model.dart';

part 'manage_product_event.dart';
part 'manage_product_state.dart';
part 'manage_product_bloc.freezed.dart';

class ManageProductBloc extends Bloc<ManageProductEvent, ManageProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  List<Product> products = [];

  ManageProductBloc(this.productRemoteDatasource)
    : super(const ManageProductState.initial()) {
    on<_GetProducts>((event, emit) async {
      try {
        emit(const ManageProductState.loading());
        final response = await productRemoteDatasource.getProducts();

        await response.fold(
          (failure) {
            emit(ManageProductState.error(failure));
            return Future.value();
          },
          (success) async {
            products = success.data;

            emit(ManageProductState.success(products));
          },
        );
      } catch (e) {
        emit(ManageProductState.error(e.toString()));
      }
    });

    on<_DeleteProduct>((event, emit) async {
      emit(const ManageProductState.loading());
      final result = await productRemoteDatasource.deleteProduct(event.id);
      result.fold((error) => emit(ManageProductState.error(error)), (_) {
        add(const ManageProductEvent.getProducts());
      });
    });
    on<_GetDetailProduct>((event, emit) async {
      emit(const ManageProductState.loading());

      final result = await productRemoteDatasource.getDetailProduct(event.id);

      result.fold(
        (error) => emit(ManageProductState.error(error)),
        (product) => emit(ManageProductState.detailSuccess(product)),
      );
    });
    on<_UpdateProduct>((event, emit) async {
      emit(const ManageProductState.loading());

      final requestData = ProductRequestModel(
        name: event.product.name,
        price: event.product.price,
        stock: event.product.stock,
        category: event.product.category,
        categoryId: event.product.categoryId,
        isBestSeller: event.product.isBestSeller ? 1 : 0,
        image: event.image,
      );

      final result = await productRemoteDatasource.updateProduct(
        event.id,
        requestData,
      );

      result.fold((error) => emit(ManageProductState.error(error)), (_) {
        add(const ManageProductEvent.getProducts());
      });
    });
  }
}
