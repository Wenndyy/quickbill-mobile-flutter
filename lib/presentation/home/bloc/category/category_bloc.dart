import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:quickbill/data/datasources/product_remote_datasource.dart';

import '../../../../data/models/response/category_response_model.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ProductRemoteDatasource productRemoteDatasource;
  List<Category> categories = [];
  CategoryBloc(this.productRemoteDatasource) : super(const _Initial()) {
    on<_GetCategories>((event, emit) async {
      emit(const _Loading());
      final result = await productRemoteDatasource.getCategories();
      await result.fold(
        (l) async {
          emit(_Error(l));
        },
        (r) async {
       
          emit(_Loaded(r.data));
        },
      );
    });

  
  }
}
