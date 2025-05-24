import 'package:winky_shop/features/product/data/models/product_model.dart';
// import 'package:winky_shop/features/product/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();

  //All Products if want add to below
}
