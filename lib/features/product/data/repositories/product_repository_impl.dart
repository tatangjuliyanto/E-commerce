import 'package:winky_shop/features/product/data/models/product_model.dart';
import 'package:winky_shop/features/product/data/repositories/product_repository.dart';
import 'package:winky_shop/features/product/data/resources/product_remote_datasource.dart';
// import 'package:winky_shop/features/product/domain/entities/product_entity.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Product>> getProducts() async {
    return await remoteDataSource.fetchProducts();
  }
}
