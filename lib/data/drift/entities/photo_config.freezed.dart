// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PhotoConfig {

 int? get id; int get recordTypeId; int get maxPhotos; bool get requirePhoto; String get photoQuality; bool get allowMultiple; bool get enableThumbnail; DateTime? get createdAt;
/// Create a copy of PhotoConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotoConfigCopyWith<PhotoConfig> get copyWith => _$PhotoConfigCopyWithImpl<PhotoConfig>(this as PhotoConfig, _$identity);

  /// Serializes this PhotoConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhotoConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.maxPhotos, maxPhotos) || other.maxPhotos == maxPhotos)&&(identical(other.requirePhoto, requirePhoto) || other.requirePhoto == requirePhoto)&&(identical(other.photoQuality, photoQuality) || other.photoQuality == photoQuality)&&(identical(other.allowMultiple, allowMultiple) || other.allowMultiple == allowMultiple)&&(identical(other.enableThumbnail, enableThumbnail) || other.enableThumbnail == enableThumbnail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,maxPhotos,requirePhoto,photoQuality,allowMultiple,enableThumbnail,createdAt);

@override
String toString() {
  return 'PhotoConfig(id: $id, recordTypeId: $recordTypeId, maxPhotos: $maxPhotos, requirePhoto: $requirePhoto, photoQuality: $photoQuality, allowMultiple: $allowMultiple, enableThumbnail: $enableThumbnail, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PhotoConfigCopyWith<$Res>  {
  factory $PhotoConfigCopyWith(PhotoConfig value, $Res Function(PhotoConfig) _then) = _$PhotoConfigCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, int maxPhotos, bool requirePhoto, String photoQuality, bool allowMultiple, bool enableThumbnail, DateTime? createdAt
});




}
/// @nodoc
class _$PhotoConfigCopyWithImpl<$Res>
    implements $PhotoConfigCopyWith<$Res> {
  _$PhotoConfigCopyWithImpl(this._self, this._then);

  final PhotoConfig _self;
  final $Res Function(PhotoConfig) _then;

/// Create a copy of PhotoConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? maxPhotos = null,Object? requirePhoto = null,Object? photoQuality = null,Object? allowMultiple = null,Object? enableThumbnail = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,maxPhotos: null == maxPhotos ? _self.maxPhotos : maxPhotos // ignore: cast_nullable_to_non_nullable
as int,requirePhoto: null == requirePhoto ? _self.requirePhoto : requirePhoto // ignore: cast_nullable_to_non_nullable
as bool,photoQuality: null == photoQuality ? _self.photoQuality : photoQuality // ignore: cast_nullable_to_non_nullable
as String,allowMultiple: null == allowMultiple ? _self.allowMultiple : allowMultiple // ignore: cast_nullable_to_non_nullable
as bool,enableThumbnail: null == enableThumbnail ? _self.enableThumbnail : enableThumbnail // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PhotoConfig].
extension PhotoConfigPatterns on PhotoConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PhotoConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PhotoConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PhotoConfig value)  $default,){
final _that = this;
switch (_that) {
case _PhotoConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PhotoConfig value)?  $default,){
final _that = this;
switch (_that) {
case _PhotoConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  int maxPhotos,  bool requirePhoto,  String photoQuality,  bool allowMultiple,  bool enableThumbnail,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PhotoConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.maxPhotos,_that.requirePhoto,_that.photoQuality,_that.allowMultiple,_that.enableThumbnail,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  int maxPhotos,  bool requirePhoto,  String photoQuality,  bool allowMultiple,  bool enableThumbnail,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PhotoConfig():
return $default(_that.id,_that.recordTypeId,_that.maxPhotos,_that.requirePhoto,_that.photoQuality,_that.allowMultiple,_that.enableThumbnail,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  int maxPhotos,  bool requirePhoto,  String photoQuality,  bool allowMultiple,  bool enableThumbnail,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PhotoConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.maxPhotos,_that.requirePhoto,_that.photoQuality,_that.allowMultiple,_that.enableThumbnail,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PhotoConfig implements PhotoConfig {
  const _PhotoConfig({this.id, required this.recordTypeId, this.maxPhotos = 10, this.requirePhoto = false, this.photoQuality = 'medium', this.allowMultiple = true, this.enableThumbnail = true, this.createdAt});
  factory _PhotoConfig.fromJson(Map<String, dynamic> json) => _$PhotoConfigFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override@JsonKey() final  int maxPhotos;
@override@JsonKey() final  bool requirePhoto;
@override@JsonKey() final  String photoQuality;
@override@JsonKey() final  bool allowMultiple;
@override@JsonKey() final  bool enableThumbnail;
@override final  DateTime? createdAt;

/// Create a copy of PhotoConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotoConfigCopyWith<_PhotoConfig> get copyWith => __$PhotoConfigCopyWithImpl<_PhotoConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotoConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PhotoConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.maxPhotos, maxPhotos) || other.maxPhotos == maxPhotos)&&(identical(other.requirePhoto, requirePhoto) || other.requirePhoto == requirePhoto)&&(identical(other.photoQuality, photoQuality) || other.photoQuality == photoQuality)&&(identical(other.allowMultiple, allowMultiple) || other.allowMultiple == allowMultiple)&&(identical(other.enableThumbnail, enableThumbnail) || other.enableThumbnail == enableThumbnail)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,maxPhotos,requirePhoto,photoQuality,allowMultiple,enableThumbnail,createdAt);

@override
String toString() {
  return 'PhotoConfig(id: $id, recordTypeId: $recordTypeId, maxPhotos: $maxPhotos, requirePhoto: $requirePhoto, photoQuality: $photoQuality, allowMultiple: $allowMultiple, enableThumbnail: $enableThumbnail, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PhotoConfigCopyWith<$Res> implements $PhotoConfigCopyWith<$Res> {
  factory _$PhotoConfigCopyWith(_PhotoConfig value, $Res Function(_PhotoConfig) _then) = __$PhotoConfigCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, int maxPhotos, bool requirePhoto, String photoQuality, bool allowMultiple, bool enableThumbnail, DateTime? createdAt
});




}
/// @nodoc
class __$PhotoConfigCopyWithImpl<$Res>
    implements _$PhotoConfigCopyWith<$Res> {
  __$PhotoConfigCopyWithImpl(this._self, this._then);

  final _PhotoConfig _self;
  final $Res Function(_PhotoConfig) _then;

/// Create a copy of PhotoConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? maxPhotos = null,Object? requirePhoto = null,Object? photoQuality = null,Object? allowMultiple = null,Object? enableThumbnail = null,Object? createdAt = freezed,}) {
  return _then(_PhotoConfig(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,maxPhotos: null == maxPhotos ? _self.maxPhotos : maxPhotos // ignore: cast_nullable_to_non_nullable
as int,requirePhoto: null == requirePhoto ? _self.requirePhoto : requirePhoto // ignore: cast_nullable_to_non_nullable
as bool,photoQuality: null == photoQuality ? _self.photoQuality : photoQuality // ignore: cast_nullable_to_non_nullable
as String,allowMultiple: null == allowMultiple ? _self.allowMultiple : allowMultiple // ignore: cast_nullable_to_non_nullable
as bool,enableThumbnail: null == enableThumbnail ? _self.enableThumbnail : enableThumbnail // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
