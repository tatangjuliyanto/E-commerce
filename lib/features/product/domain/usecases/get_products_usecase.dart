import 'package:winky_shop/features/product/data/repositories/product_repository.dart';
import 'package:winky_shop/features/product/domain/entities/product_entity.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<List<Product>> call() async {
    return await repository.getProducts();
  }
}
