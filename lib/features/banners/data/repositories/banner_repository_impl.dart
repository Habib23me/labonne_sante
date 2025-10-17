import 'package:labonne_sante/features/banners/data/datasources/banner_remote_data_source.dart';
import 'package:labonne_sante/features/banners/data/models/banner_model.dart';
import 'package:labonne_sante/features/banners/domain/entities/banner.dart';
import 'package:labonne_sante/features/banners/domain/repositories/banner_repository.dart';

class BannerRepositoryImpl implements BannerRepository {
  final BannerRemoteDataSource remoteDataSource;

  BannerRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Banner>> getBanners() async {
    final remoteBanners = await remoteDataSource.getBanners();
    return remoteBanners.map(_fromModel).toList();
  }

  Banner _fromModel(BannerModel model) {
    return Banner(imageUrl: model.imageUrl);
  }
}
