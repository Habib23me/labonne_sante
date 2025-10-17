import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:labonne_sante/core/providers.dart';
import 'package:labonne_sante/features/banners/data/datasources/banner_remote_data_source.dart';
import 'package:labonne_sante/features/banners/data/repositories/banner_repository_impl.dart';
import 'package:labonne_sante/features/banners/domain/entities/banner.dart';
import 'package:labonne_sante/features/banners/domain/repositories/banner_repository.dart';

final bannerRemoteDataSourceProvider = Provider(
  (ref) => BannerRemoteDataSourceImpl(ref.watch(dioClientProvider).dio),
);

final bannerRepositoryProvider = Provider<BannerRepository>(
  (ref) => BannerRepositoryImpl(
    remoteDataSource: ref.watch(bannerRemoteDataSourceProvider),
  ),
);

final bannersProvider = FutureProvider<List<Banner>>((ref) async {
  final repo = ref.watch(bannerRepositoryProvider);
  return repo.getBanners();
});
