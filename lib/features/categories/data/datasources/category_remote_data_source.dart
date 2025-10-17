import 'package:dio/dio.dart';
import 'package:labonne_sante/features/categories/data/models/category_model.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final Dio dio;
  CategoryRemoteDataSourceImpl(this.dio);

  @override
  Future<List<CategoryModel>> getCategories() async {
    // Mocked data (moved from products)
    return const [
      CategoryModel(
        id: '1',
        title: 'Skin Care',
        description: 'Beauty',
        icon: 'assets/icons/skin-care-icon.png',
      ),
      CategoryModel(
        id: '2',
        title: 'Gum Care',
        icon: 'assets/icons/gum-care-icon.png',
        description: 'Oral Care',
      ),
      CategoryModel(
        id: '3',
        title: 'Tooth Brushes',
        description: 'Oral Care',
        icon: 'assets/icons/toothbrushes-icon.png',
      ),
      CategoryModel(
        id: '4',
        title: "Kid's Skin Care",
        icon: 'assets/icons/kids-skin-icon.png',
        description: 'Kids Health',
      ),
    ];
  }
}
