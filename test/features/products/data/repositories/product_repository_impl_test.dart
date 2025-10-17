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
      'should have cache first behavior and refresh from network for next load',
      () async {
        // arrange
        // cache-first path calls local first; return empty to force remote fetch
        mockito
            .when(mockLocalDataSource.getProducts())
            .thenAnswer((_) async => []);
        mockito
            .when(mockRemoteDataSource.getProducts())
            .thenAnswer((_) async => tProductModelList);
        // act
        final result = await repository.getProducts();
        // assert
        mockito.verify(mockLocalDataSource.getProducts());
        mockito.verify(mockRemoteDataSource.getProducts());
        expect(result.length, equals(tProductModelList.length));
      },
    );

    test(
      'should cache the data locally when the call to remote data source is successful',
      () async {
        // arrange
        // cache-first path calls local first; return empty to force remote fetch
        mockito
            .when(mockLocalDataSource.getProducts())
            .thenAnswer((_) async => []);
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
      'should throw when remote fails and no local cache (forceRefresh: true)',
      () async {
        // arrange
        mockito
            .when(mockLocalDataSource.getProducts())
            .thenAnswer((_) async => []);
        mockito
            .when(mockRemoteDataSource.getProducts())
            .thenThrow(Exception('network error'));
        // act + assert
        await expectLater(
          repository.getProducts(forceRefresh: true),
          throwsA(isA<Exception>()),
        );
        mockito.verify(mockRemoteDataSource.getProducts());
        mockito.verifyNoMoreInteractions(mockRemoteDataSource);
      },
    );
    test('should return remote data when forceRefresh is true', () async {
      // arrange
      mockito
          .when(mockLocalDataSource.getProducts())
          .thenAnswer((_) async => []);
      mockito
          .when(mockRemoteDataSource.getProducts())
          .thenAnswer((_) async => tProductModelList);
      // act
      final result = await repository.getProducts(forceRefresh: true);
      // assert
      mockito.verify(mockRemoteDataSource.getProducts());
      mockito.verifyNever(mockLocalDataSource.getProducts());
      expect(result.length, equals(tProductModelList.length));
    });
  });
}
