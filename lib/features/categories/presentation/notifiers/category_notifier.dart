import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/core/providers.dart';
import 'package:labonne_sante/features/categories/data/datasources/category_remote_data_source.dart';
import 'package:labonne_sante/features/categories/data/repositories/category_repository_impl.dart';
import 'package:labonne_sante/features/categories/domain/entities/category.dart';
import 'package:labonne_sante/features/categories/domain/repositories/category_repository.dart';

final categoryRemoteDataSourceProvider = Provider(
  (ref) => CategoryRemoteDataSourceImpl(ref.watch(dioClientProvider).dio),
);

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) => CategoryRepositoryImpl(
    remoteDataSource: ref.watch(categoryRemoteDataSourceProvider),
  ),
);

final categoriesProvider = FutureProvider<List<Category>>((ref) async {
  final repo = ref.watch(categoryRepositoryProvider);
  return repo.getCategories();
});
