import 'package:labonne_sante/features/products/domain/entities/banner.dart';
import 'package:labonne_sante/features/products/domain/entities/category.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
  Future<Product> getProductById(String id);
  Future<List<Banner>> getBanners();
  Future<List<Category>> getCategories();
}
