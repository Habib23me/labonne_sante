import 'package:labonne_sante/core/db/app_database.dart';

abstract class ProductLocalDataSource {
  Future<void> cacheProducts({required List<Product> products});
  Future<List<Product>> getProducts();
}

class ProductLocalDataSourceImpl implements ProductLocalDataSource {
  final AppDatabase appDatabase;

  ProductLocalDataSourceImpl(this.appDatabase);

  @override
  Future<void> cacheProducts({required List<Product> products}) async {
    await appDatabase.insertProducts(products);
  }

  @override
  Future<List<Product>> getProducts() async {
    return await appDatabase.allProducts;
  }
}
