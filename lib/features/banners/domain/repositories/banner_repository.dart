import 'package:labonne_sante/features/banners/domain/entities/banner.dart';

abstract class BannerRepository {
  Future<List<Banner>> getBanners();
}
