import 'package:dio/dio.dart';
import 'package:labonne_sante/features/banners/data/models/banner_model.dart';

abstract class BannerRemoteDataSource {
  Future<List<BannerModel>> getBanners();
}

class BannerRemoteDataSourceImpl implements BannerRemoteDataSource {
  final Dio dio;
  BannerRemoteDataSourceImpl(this.dio);

  @override
  Future<List<BannerModel>> getBanners() async {
    // Mocked data (moved from products)
    return const [
      BannerModel(
        imageUrl:
            'https://www.labonnesante.ae/_vercel/image?url=https://labonnesante.sgp1.digitaloceanspaces.com/production/banner/47/IMG_5333.webp&w=1536&q=100',
      ),
      BannerModel(
        imageUrl:
            'https://www.labonnesante.ae/_vercel/image?url=https://labonnesante.sgp1.digitaloceanspaces.com/production/banner/39/lbs-thehumble-banner.webp&w=1536&q=100',
      ),
      BannerModel(
        imageUrl:
            'https://www.labonnesante.ae/_vercel/image?url=https://labonnesante.sgp1.digitaloceanspaces.com/production/banner/48/IMG_5334.webp&w=1536&q=100',
      ),
    ];
  }
}
