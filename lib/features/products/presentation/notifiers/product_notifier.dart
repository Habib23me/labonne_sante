import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:labonne_sante/core/providers.dart';
import 'package:labonne_sante/features/products/data/datasources/product_local_data_source.dart';
import 'package:labonne_sante/features/products/data/datasources/product_remote_data_source.dart';
import 'package:labonne_sante/features/products/data/repositories/product_repository_impl.dart';
import 'package:labonne_sante/features/products/domain/entities/product.dart'
    as domain;
import 'package:labonne_sante/features/products/domain/repositories/product_repository.dart';

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

  Future<void> getProducts({bool forceRefresh = false}) async {
    try {
      state = const AsyncValue.loading();
      final products = await productRepository.getProducts(
        forceRefresh: forceRefresh,
      );
      state = AsyncValue.data(products);
    } catch (e, s) {
      state = AsyncValue.error(e, s);
    }
  }
}
