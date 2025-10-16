import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart' as mockito;
import 'package:labonne_sante/features/products/data/datasources/product_local_data_source.dart';
import 'package:labonne_sante/features/products/data/datasources/product_remote_data_source.dart';
import 'package:labonne_sante/features/products/data/models/product_model.dart';
import 'package:labonne_sante/features/products/data/repositories/product_repository_impl.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_repository_impl_test.mocks.dart';

@GenerateMocks([ProductRemoteDataSource, ProductLocalDataSource])
void main() {
  late ProductRepositoryImpl repository;
  late MockProductRemoteDataSource mockRemoteDataSource;
  late MockProductLocalDataSource mockLocalDataSource;

  setUp(() {
    mockRemoteDataSource = MockProductRemoteDataSource();
    mockLocalDataSource = MockProductLocalDataSource();
    repository = ProductRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
    );
  });

  tearDown(() {
    mockito.reset(mockRemoteDataSource);
    mockito.reset(mockLocalDataSource);
  });

  final tProductModel = ProductModel(
    id: '1',
    name: 'Test Product',
    description: 'Test Description',
    price: '10.0',
    brand: 'Test Brand',
    categories: ['Test Category'],
    benefits: 'Test Benefits',
    howToUse: 'Test How to Use',
    ingredients: 'Test Ingredients',
    rating: 5,
    reviewsCount: 10,
    media: ['Test Media'],
  );

  final tProductModelList = [tProductModel];

  group('getProducts', () {
    test(
      'should return remote data when the call to remote data source is successful',
      () async {
        // arrange
        mockito
            .when(mockRemoteDataSource.getProducts())
            .thenAnswer((_) async => tProductModelList);
        // act
        final result = await repository.getProducts();
        // assert
        mockito.verify(mockRemoteDataSource.getProducts());
        expect(result.length, equals(tProductModelList.length));
      },
    );

    test(
      'should cache the data locally when the call to remote data source is successful',
      () async {
        // arrange
        mockito
            .when(mockRemoteDataSource.getProducts())
            .thenAnswer((_) async => tProductModelList);
        // act
        await repository.getProducts();
        // assert
        mockito.verify(mockRemoteDataSource.getProducts());
        mockito.verify(
          mockLocalDataSource.cacheProducts(products: anyNamed('products')),
        );
      },
    );

    test(
      'should return local data when the call to remote data source is unsuccessful',
      () async {
        // arrange
        mockito.when(mockRemoteDataSource.getProducts()).thenThrow(Exception());
        mockito
            .when(mockLocalDataSource.getProducts())
            .thenAnswer((_) async => []);
        // act
        final result = await repository.getProducts();
        // assert
        mockito.verify(mockRemoteDataSource.getProducts());
        mockito.verify(mockLocalDataSource.getProducts());
        expect(result, equals([]));
      },
    );
  });
}
