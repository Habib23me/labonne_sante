import 'package:labonne_sante/features/products/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts({bool forceRefresh = false});
  Future<Product> getProductById(String id);
}
