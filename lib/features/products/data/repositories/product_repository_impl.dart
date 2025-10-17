import 'package:labonne_sante/features/products/data/datasources/product_local_data_source.dart';
import 'package:labonne_sante/features/products/data/datasources/product_remote_data_source.dart';
import 'package:labonne_sante/features/banners/data/models/banner_model.dart';
import 'package:labonne_sante/features/categories/data/models/category_model.dart';
import 'package:labonne_sante/features/products/data/models/product_model.dart';
import 'package:labonne_sante/features/banners/domain/entities/banner.dart';
import 'package:labonne_sante/features/categories/domain/entities/category.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart';
import 'package:labonne_sante/features/products/domain/repositories/product_repository.dart';
import 'package:labonne_sante/core/db/app_database.dart' as db;

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  final ProductLocalDataSource localDataSource;

  ProductRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  // Cache-first: return local if available, then refresh in background
  // Fire-and-forget background refresh and Ignore result; UI can pick up new data on next load
  // if there is no local cache: fetch from network and cache
  // if network failed and no cache available: return empty list

  @override
  Future<List<Product>> getProducts({bool forceRefresh = false}) async {
    if (!forceRefresh) {
      final localProducts = await localDataSource.getProducts();
      if (localProducts.isNotEmpty) {
        _refreshFromNetwork();
        return localProducts.map((e) => _fromDb(e)).toList();
      }
    }

    final remoteProducts = await remoteDataSource.getProducts();
    await localDataSource.cacheProducts(
      products: remoteProducts.map((e) => _toDb(e)).toList(),
    );
    return remoteProducts.map((e) => _fromModel(e)).toList();
  }

  // Background refresh method
  Future<void> _refreshFromNetwork() async {
    try {
      final remoteProducts = await remoteDataSource.getProducts();
      await localDataSource.cacheProducts(
        products: remoteProducts.map((e) => _toDb(e)).toList(),
      );
    } catch (e) {
      // Silently fail - we already have cached data
    }
  }

  @override
  Future<Product> getProductById(String id) async {
    // For simplicity, we'll fetch from remote directly.
    // A more robust implementation would check local first.
    final remoteProduct = await remoteDataSource.getProductById(id);
    return _fromModel(remoteProduct);
  }

  Product _fromModel(ProductModel model) {
    return Product(
      id: model.id,
      name: model.name,
      description: model.description,
      price: double.tryParse(model.price) ?? 0.0,
      brand: model.brand,
      categories: model.categories,
      benefits: model.benefits,
      howToUse: model.howToUse,
      ingredients: model.ingredients,
      rating: model.rating,
      reviewsCount: model.reviewsCount,
      media: model.media,
    );
  }

  db.Product _toDb(ProductModel model) {
    return db.Product(
      id: model.id,
      name: model.name,
      description: model.description,
      price: double.tryParse(model.price) ?? 0.0,
      brand: model.brand,
      categories: model.categories,
      benefits: model.benefits,
      howToUse: model.howToUse,
      ingredients: model.ingredients,
      rating: model.rating,
      reviewsCount: model.reviewsCount,
      media: model.media,
    );
  }

  Product _fromDb(db.Product dbProduct) {
    return Product(
      id: dbProduct.id,
      name: dbProduct.name,
      description: dbProduct.description,
      price: dbProduct.price,
      brand: dbProduct.brand,
      categories: dbProduct.categories,
      benefits: dbProduct.benefits,
      howToUse: dbProduct.howToUse,
      ingredients: dbProduct.ingredients,
      rating: dbProduct.rating,
      reviewsCount: dbProduct.reviewsCount,
      media: dbProduct.media,
    );
  }
}
