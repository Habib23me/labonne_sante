import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:labonne_sante/core/api/dio_client.dart';
import 'package:labonne_sante/core/db/app_database.dart';
import 'package:labonne_sante/features/products/data/datasources/product_local_data_source.dart';
import 'package:labonne_sante/features/products/data/datasources/product_remote_data_source.dart';
import 'package:labonne_sante/features/products/data/repositories/product_repository_impl.dart';
import 'package:labonne_sante/features/products/domain/entities/banner.dart';
import 'package:labonne_sante/features/products/domain/entities/category.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart'
    as domain;
import 'package:labonne_sante/features/products/domain/repositories/product_repository.dart';

final dioProvider = Provider((ref) => Dio());

final dioClientProvider = Provider((ref) => DioClient(ref.watch(dioProvider)));

final appDatabaseProvider = Provider((ref) => AppDatabase());

final productLocalDataSourceProvider = Provider(
  (ref) => ProductLocalDataSourceImpl(ref.watch(appDatabaseProvider)),
);

final productRemoteDataSourceProvider = Provider(
  (ref) => ProductRemoteDataSourceImpl(ref.watch(dioClientProvider).dio),
);

final productRepositoryProvider = Provider<ProductRepository>(
  (ref) => ProductRepositoryImpl(
    remoteDataSource: ref.watch(productRemoteDataSourceProvider),
    localDataSource: ref.watch(productLocalDataSourceProvider),
  ),
);

final productsProvider =
    StateNotifierProvider<ProductNotifier, AsyncValue<List<domain.Product>>>(
      (ref) => ProductNotifier(ref.watch(productRepositoryProvider)),
    );

class ProductNotifier extends StateNotifier<AsyncValue<List<domain.Product>>> {
  final ProductRepository productRepository;

  ProductNotifier(this.productRepository) : super(const AsyncValue.loading()) {
    getProducts();
  }

  Future<void> getProducts() async {
    try {
      state = const AsyncValue.loading();
      final products = await productRepository.getProducts();
      state = AsyncValue.data(products);
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }
}

final bannersProvider = FutureProvider<List<Banner>>((ref) async {
  final productRepository = ref.watch(productRepositoryProvider);
  return productRepository.getBanners();
});

final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  final productRepository = ref.watch(productRepositoryProvider);
  return productRepository.getCategories();
});
