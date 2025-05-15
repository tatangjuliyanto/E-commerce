import 'package:winky_shop/features/product/domain/entities/product_entity.dart';

class ProductModel extends Product {
  ProductModel({
    required super.id,
    required super.name,
    required super.price,
    required super.imageUrl,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'].toString(),
      name: json['title'],
      price: (json['price'] as num).toDouble(),
      imageUrl: json['image'],
    );
  }
}
