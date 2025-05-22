//event
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:winky_shop/features/product/domain/entities/product_entity.dart';
import 'package:winky_shop/features/product/domain/usecases/get_products_usecase.dart';

abstract class ProductEvent {}

class FetchProducts extends ProductEvent {}

//state
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  ProductLoaded(this.products);
}

class ProductError extends ProductState {
  final String message;

  ProductError(this.message);
}

//bloc
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProducts getProducts;

  ProductBloc({required this.getProducts}) : super(ProductInitial()) {
    on<FetchProducts>((event, emit) async {
      emit(ProductLoading());
      try {
        final products = await getProducts();
        emit(ProductLoaded(products));
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    });
  }
}
