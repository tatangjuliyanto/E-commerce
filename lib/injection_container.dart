import 'package:get_it/get_it.dart';
import 'package:winky_shop/features/product/data/repositories/product_repository.dart';
import 'package:winky_shop/features/product/data/repositories/product_repository_impl.dart';
import 'package:winky_shop/features/product/data/resources/product_remote_datasource.dart';
import 'package:winky_shop/features/product/domain/usecases/get_products_usecase.dart';
import 'package:winky_shop/features/product/presentation/bloc/product_bloc.dart';

final sl = GetIt.instance;

void init() {
  //Bloc
  sl.registerFactory(() => ProductBloc(getProducts: sl()));

  //Usecase
  sl.registerLazySingleton(() => GetProducts(sl()));

  // Repository
  sl.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(sl()),
  );

  // Data sources
  sl.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(sl()),
  );
}
