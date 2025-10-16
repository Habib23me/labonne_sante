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
        imageUrl: 'https://via.placeholder.com/400x200?text=Banner+1',
      ),
      const BannerModel(
        imageUrl: 'https://via.placeholder.com/400x200?text=Banner+2',
      ),
      const BannerModel(
        imageUrl: 'https://via.placeholder.com/400x200?text=Banner+3',
      ),
    ];
  }

  @override
  Future<List<CategoryModel>> getCategories() async {
    // Mocked data
    return [
      const CategoryModel(
        id: '1',
        title: 'Vitamins',
        icon: 'assets/icons/vitamins.svg',
      ),
      const CategoryModel(
        id: '2',
        title: 'Supplements',
        icon: 'assets/icons/supplements.svg',
      ),
      const CategoryModel(
        id: '3',
        title: 'Personal Care',
        icon: 'assets/icons/personal_care.svg',
      ),
      const CategoryModel(
        id: '4',
        title: 'Baby Care',
        icon: 'assets/icons/baby_care.svg',
      ),
    ];
  }
}
