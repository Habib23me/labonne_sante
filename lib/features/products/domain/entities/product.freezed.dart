// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Product {

 String get id; String get name; String get description; double get price; String get brand; List<String> get categories; String get benefits; String get howToUse; String get ingredients; int get rating; int get reviewsCount; List<String> get media;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.benefits, benefits) || other.benefits == benefits)&&(identical(other.howToUse, howToUse) || other.howToUse == howToUse)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other.media, media));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,brand,const DeepCollectionEquality().hash(categories),benefits,howToUse,ingredients,rating,reviewsCount,const DeepCollectionEquality().hash(media));

@override
String toString() {
  return 'Product(id: $id, name: $name, description: $description, price: $price, brand: $brand, categories: $categories, benefits: $benefits, howToUse: $howToUse, ingredients: $ingredients, rating: $rating, reviewsCount: $reviewsCount, media: $media)';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, String name, String description, double price, String brand, List<String> categories, String benefits, String howToUse, String ingredients, int rating, int reviewsCount, List<String> media
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? brand = null,Object? categories = null,Object? benefits = null,Object? howToUse = null,Object? ingredients = null,Object? rating = null,Object? reviewsCount = null,Object? media = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,benefits: null == benefits ? _self.benefits : benefits // ignore: cast_nullable_to_non_nullable
as String,howToUse: null == howToUse ? _self.howToUse : howToUse // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String description,  double price,  String brand,  List<String> categories,  String benefits,  String howToUse,  String ingredients,  int rating,  int reviewsCount,  List<String> media)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.brand,_that.categories,_that.benefits,_that.howToUse,_that.ingredients,_that.rating,_that.reviewsCount,_that.media);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String description,  double price,  String brand,  List<String> categories,  String benefits,  String howToUse,  String ingredients,  int rating,  int reviewsCount,  List<String> media)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.name,_that.description,_that.price,_that.brand,_that.categories,_that.benefits,_that.howToUse,_that.ingredients,_that.rating,_that.reviewsCount,_that.media);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String description,  double price,  String brand,  List<String> categories,  String benefits,  String howToUse,  String ingredients,  int rating,  int reviewsCount,  List<String> media)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.brand,_that.categories,_that.benefits,_that.howToUse,_that.ingredients,_that.rating,_that.reviewsCount,_that.media);case _:
  return null;

}
}

}

/// @nodoc


class _Product implements Product {
  const _Product({required this.id, required this.name, required this.description, required this.price, required this.brand, required final  List<String> categories, required this.benefits, required this.howToUse, required this.ingredients, required this.rating, required this.reviewsCount, required final  List<String> media}): _categories = categories,_media = media;
  

@override final  String id;
@override final  String name;
@override final  String description;
@override final  double price;
@override final  String brand;
 final  List<String> _categories;
@override List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override final  String benefits;
@override final  String howToUse;
@override final  String ingredients;
@override final  int rating;
@override final  int reviewsCount;
 final  List<String> _media;
@override List<String> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}


/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.brand, brand) || other.brand == brand)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.benefits, benefits) || other.benefits == benefits)&&(identical(other.howToUse, howToUse) || other.howToUse == howToUse)&&(identical(other.ingredients, ingredients) || other.ingredients == ingredients)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&const DeepCollectionEquality().equals(other._media, _media));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,brand,const DeepCollectionEquality().hash(_categories),benefits,howToUse,ingredients,rating,reviewsCount,const DeepCollectionEquality().hash(_media));

@override
String toString() {
  return 'Product(id: $id, name: $name, description: $description, price: $price, brand: $brand, categories: $categories, benefits: $benefits, howToUse: $howToUse, ingredients: $ingredients, rating: $rating, reviewsCount: $reviewsCount, media: $media)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String description, double price, String brand, List<String> categories, String benefits, String howToUse, String ingredients, int rating, int reviewsCount, List<String> media
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = null,Object? price = null,Object? brand = null,Object? categories = null,Object? benefits = null,Object? howToUse = null,Object? ingredients = null,Object? rating = null,Object? reviewsCount = null,Object? media = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,brand: null == brand ? _self.brand : brand // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,benefits: null == benefits ? _self.benefits : benefits // ignore: cast_nullable_to_non_nullable
as String,howToUse: null == howToUse ? _self.howToUse : howToUse // ignore: cast_nullable_to_non_nullable
as String,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
