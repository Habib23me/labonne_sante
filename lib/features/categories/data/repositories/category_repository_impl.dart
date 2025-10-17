import 'package:labonne_sante/features/categories/data/datasources/category_remote_data_source.dart';
import 'package:labonne_sante/features/categories/data/models/category_model.dart';
import 'package:labonne_sante/features/categories/domain/entities/category.dart';
import 'package:labonne_sante/features/categories/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;

  CategoryRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Category>> getCategories() async {
    final remoteCategories = await remoteDataSource.getCategories();
    return remoteCategories.map(_fromModel).toList();
  }

  Category _fromModel(CategoryModel model) {
    return Category(
      id: model.id,
      title: model.title,
      description: model.description,
      icon: model.icon,
    );
  }
}
