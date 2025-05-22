import 'package:winky_shop/features/product/data/repositories/product_repository.dart';
import 'package:winky_shop/features/product/data/resources/product_remote_datasource.dart';
import 'package:winky_shop/features/product/domain/entities/product_entity.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource RemoteDataSource;

  ProductRepositoryImpl(this.RemoteDataSource);

  @override
  Future<List<Product>> getProducts() async {
    return await RemoteDataSource.fetchProducts();
  }
}
