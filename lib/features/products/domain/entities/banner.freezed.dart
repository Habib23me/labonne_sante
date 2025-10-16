// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Banner {

 String get imageUrl;
/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BannerCopyWith<Banner> get copyWith => _$BannerCopyWithImpl<Banner>(this as Banner, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Banner&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl);

@override
String toString() {
  return 'Banner(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $BannerCopyWith<$Res>  {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) _then) = _$BannerCopyWithImpl;
@useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class _$BannerCopyWithImpl<$Res>
    implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._self, this._then);

  final Banner _self;
  final $Res Function(Banner) _then;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? imageUrl = null,}) {
  return _then(_self.copyWith(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Banner].
extension BannerPatterns on Banner {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Banner value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Banner() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Banner value)  $default,){
final _that = this;
switch (_that) {
case _Banner():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Banner value)?  $default,){
final _that = this;
switch (_that) {
case _Banner() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String imageUrl)  $default,) {final _that = this;
switch (_that) {
case _Banner():
return $default(_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _Banner() when $default != null:
return $default(_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _Banner implements Banner {
  const _Banner({required this.imageUrl});
  

@override final  String imageUrl;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BannerCopyWith<_Banner> get copyWith => __$BannerCopyWithImpl<_Banner>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Banner&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,imageUrl);

@override
String toString() {
  return 'Banner(imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$BannerCopyWith(_Banner value, $Res Function(_Banner) _then) = __$BannerCopyWithImpl;
@override @useResult
$Res call({
 String imageUrl
});




}
/// @nodoc
class __$BannerCopyWithImpl<$Res>
    implements _$BannerCopyWith<$Res> {
  __$BannerCopyWithImpl(this._self, this._then);

  final _Banner _self;
  final $Res Function(_Banner) _then;

/// Create a copy of Banner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? imageUrl = null,}) {
  return _then(_Banner(
imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
