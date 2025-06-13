import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../data/datasources/product_remote_datasource.dart';
import '../../../../data/models/request/product_request_model.dart';
import '../../../../data/models/response/product_response_model.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDatasource productRemoteDatasource;
  List<Product> products = [];

  ProductBloc(this.productRemoteDatasource)
    : super(const ProductState.initial()) {
    on<_Fetch>((event, emit) async {
      try {
        emit(const ProductState.loading());
        final response = await productRemoteDatasource.getProducts();

        await response.fold(
          (failure) {
            emit(ProductState.error(failure));
            return Future.value();
          },
          (success) async {
            products = success.data;

            emit(ProductState.success(products));
          },
        );
      } catch (e) {
        emit(ProductState.error(e.toString()));
      }
    });

    on<_FetchByCategory>((event, emit) {
      try {
        emit(const ProductState.loading());
        final newProducts =
            event.category == 'all'
                ? products
                : products
                    .where((element) => element.category == event.category)
                    .toList();
        emit(ProductState.success(newProducts));
      } catch (e) {
        emit(ProductState.error(e.toString()));
      }
    });

    on<_AddProduct>((event, emit) async {
      try {
        emit(const ProductState.loading());
        final requestData = ProductRequestModel(
          name: event.product.name,
          price: event.product.price,
          stock: event.product.stock,
          category: event.product.category,
          categoryId: event.product.categoryId,
          isBestSeller: event.product.isBestSeller ? 1 : 0,
          image: event.image,
        );

        final response = await productRemoteDatasource.addProduct(requestData);

        response.fold((failure) => emit(ProductState.error(failure)), (
          success,
        ) {
          products.add(success.data);
          emit(ProductState.success(products));
        });
      } catch (e) {
        emit(ProductState.error(e.toString()));
      }
    });

    on<_SearchProduct>((event, emit) {
      try {
        emit(const ProductState.loading());
        final newProducts =
            products
                .where(
                  (element) => element.name.toLowerCase().contains(
                    event.query.toLowerCase(),
                  ),
                )
                .toList();
        emit(ProductState.success(newProducts));
      } catch (e) {
        emit(ProductState.error(e.toString()));
      }
    });

    on<_FetchAllFromState>((event, emit) {
      try {
        emit(const ProductState.loading());
        emit(ProductState.success(products));
      } catch (e) {
        emit(ProductState.error(e.toString()));
      }
    });
  }
}
