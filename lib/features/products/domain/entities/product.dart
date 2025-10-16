import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    required String name,
    required String description,
    required double price,
    required String brand,
    required List<String> categories,
    required String benefits,
    required String howToUse,
    required String ingredients,
    required int rating,
    required int reviewsCount,
    required List<String> media,
  }) = _Product;
}
