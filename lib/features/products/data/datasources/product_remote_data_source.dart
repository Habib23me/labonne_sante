import 'package:dio/dio.dart';
import 'package:labonne_sante/features/products/data/models/banner_model.dart';
import 'package:labonne_sante/features/products/data/models/category_model.dart';
import 'package:labonne_sante/features/products/data/models/product_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductModel>> getProducts();
  Future<ProductModel> getProductById(String id);
  Future<List<BannerModel>> getBanners();
  Future<List<CategoryModel>> getCategories();
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSourceImpl(this.dio);

  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await dio.get('products');
    return (response.data as List)
        .map((json) => ProductModel.fromJson(json))
        .toList();
  }

  @override
  Future<ProductModel> getProductById(String id) async {
    final response = await dio.get('products/$id');
    return ProductModel.fromJson(response.data);
  }

  @override
  Future<List<BannerModel>> getBanners() async {
    // Mocked data
    return [
      const BannerModel(
        imageUrl:
            'https://www.labonnesante.ae/_vercel/image?url=https://labonnesante.sgp1.digitaloceanspaces.com/production/banner/47/IMG_5333.webp&w=1536&q=100',
      ),
      const BannerModel(
        imageUrl:
            'https://www.labonnesante.ae/_vercel/image?url=https://labonnesante.sgp1.digitaloceanspaces.com/production/banner/39/lbs-thehumble-banner.webp&w=1536&q=100',
      ),
      const BannerModel(
        imageUrl:
            'https://www.labonnesante.ae/_vercel/image?url=https://labonnesante.sgp1.digitaloceanspaces.com/production/banner/48/IMG_5334.webp&w=1536&q=100',
      ),
    ];
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    // Mocked data
    return [
      const CategoryModel(
        id: '1',
        title: 'Skin Care',
        description: 'Beauty',
        icon: 'assets/icons/skin-care-icon.png',
      ),
      const CategoryModel(
        id: '2',
        title: 'Gum Care',
        icon: 'assets/icons/gum-care-icon.png',
        description: 'Oral Care',
      ),
      const CategoryModel(
        id: '3',
        title: 'Tooth Brushes',
        description: "Oral Care",
        icon: 'assets/icons/toothbrushes-icon.png',
      ),
      const CategoryModel(
        id: '4',
        title: 'Kid\'s Skin Care',
        icon: 'assets/icons/kids-skin-icon.png',
        description: 'Kids Health',
      ),
    ];
  }
}
