// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      brand: json['brand'] as String,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      benefits: json['benefits'] as String,
      howToUse: json['howToUse'] as String,
      ingredients: json['ingredients'] as String,
      rating: (json['rating'] as num).toInt(),
      reviewsCount: (json['reviewsCount'] as num).toInt(),
      media: (json['media'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'brand': instance.brand,
      'categories': instance.categories,
      'benefits': instance.benefits,
      'howToUse': instance.howToUse,
      'ingredients': instance.ingredients,
      'rating': instance.rating,
      'reviewsCount': instance.reviewsCount,
      'media': instance.media,
    };
