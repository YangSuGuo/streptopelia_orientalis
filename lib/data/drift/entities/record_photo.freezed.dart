// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordPhoto {

 int? get id; int get recordId; String? get photoPath; String? get photoUrl; String? get thumbnailPath; String? get description; int? get width; int? get height; int? get fileSize; int get sortOrder; DateTime? get createdAt;
/// Create a copy of RecordPhoto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordPhotoCopyWith<RecordPhoto> get copyWith => _$RecordPhotoCopyWithImpl<RecordPhoto>(this as RecordPhoto, _$identity);

  /// Serializes this RecordPhoto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordPhoto&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.photoPath, photoPath) || other.photoPath == photoPath)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.description, description) || other.description == description)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,photoPath,photoUrl,thumbnailPath,description,width,height,fileSize,sortOrder,createdAt);

@override
String toString() {
  return 'RecordPhoto(id: $id, recordId: $recordId, photoPath: $photoPath, photoUrl: $photoUrl, thumbnailPath: $thumbnailPath, description: $description, width: $width, height: $height, fileSize: $fileSize, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordPhotoCopyWith<$Res>  {
  factory $RecordPhotoCopyWith(RecordPhoto value, $Res Function(RecordPhoto) _then) = _$RecordPhotoCopyWithImpl;
@useResult
$Res call({
 int? id, int recordId, String? photoPath, String? photoUrl, String? thumbnailPath, String? description, int? width, int? height, int? fileSize, int sortOrder, DateTime? createdAt
});




}
/// @nodoc
class _$RecordPhotoCopyWithImpl<$Res>
    implements $RecordPhotoCopyWith<$Res> {
  _$RecordPhotoCopyWithImpl(this._self, this._then);

  final RecordPhoto _self;
  final $Res Function(RecordPhoto) _then;

/// Create a copy of RecordPhoto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordId = null,Object? photoPath = freezed,Object? photoUrl = freezed,Object? thumbnailPath = freezed,Object? description = freezed,Object? width = freezed,Object? height = freezed,Object? fileSize = freezed,Object? sortOrder = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,photoPath: freezed == photoPath ? _self.photoPath : photoPath // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailPath: freezed == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordPhoto].
extension RecordPhotoPatterns on RecordPhoto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordPhoto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordPhoto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordPhoto value)  $default,){
final _that = this;
switch (_that) {
case _RecordPhoto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordPhoto value)?  $default,){
final _that = this;
switch (_that) {
case _RecordPhoto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordId,  String? photoPath,  String? photoUrl,  String? thumbnailPath,  String? description,  int? width,  int? height,  int? fileSize,  int sortOrder,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordPhoto() when $default != null:
return $default(_that.id,_that.recordId,_that.photoPath,_that.photoUrl,_that.thumbnailPath,_that.description,_that.width,_that.height,_that.fileSize,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordId,  String? photoPath,  String? photoUrl,  String? thumbnailPath,  String? description,  int? width,  int? height,  int? fileSize,  int sortOrder,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordPhoto():
return $default(_that.id,_that.recordId,_that.photoPath,_that.photoUrl,_that.thumbnailPath,_that.description,_that.width,_that.height,_that.fileSize,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordId,  String? photoPath,  String? photoUrl,  String? thumbnailPath,  String? description,  int? width,  int? height,  int? fileSize,  int sortOrder,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordPhoto() when $default != null:
return $default(_that.id,_that.recordId,_that.photoPath,_that.photoUrl,_that.thumbnailPath,_that.description,_that.width,_that.height,_that.fileSize,_that.sortOrder,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordPhoto implements RecordPhoto {
  const _RecordPhoto({this.id, required this.recordId, this.photoPath, this.photoUrl, this.thumbnailPath, this.description, this.width, this.height, this.fileSize, this.sortOrder = 0, this.createdAt});
  factory _RecordPhoto.fromJson(Map<String, dynamic> json) => _$RecordPhotoFromJson(json);

@override final  int? id;
@override final  int recordId;
@override final  String? photoPath;
@override final  String? photoUrl;
@override final  String? thumbnailPath;
@override final  String? description;
@override final  int? width;
@override final  int? height;
@override final  int? fileSize;
@override@JsonKey() final  int sortOrder;
@override final  DateTime? createdAt;

/// Create a copy of RecordPhoto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordPhotoCopyWith<_RecordPhoto> get copyWith => __$RecordPhotoCopyWithImpl<_RecordPhoto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordPhotoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordPhoto&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.photoPath, photoPath) || other.photoPath == photoPath)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.thumbnailPath, thumbnailPath) || other.thumbnailPath == thumbnailPath)&&(identical(other.description, description) || other.description == description)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,photoPath,photoUrl,thumbnailPath,description,width,height,fileSize,sortOrder,createdAt);

@override
String toString() {
  return 'RecordPhoto(id: $id, recordId: $recordId, photoPath: $photoPath, photoUrl: $photoUrl, thumbnailPath: $thumbnailPath, description: $description, width: $width, height: $height, fileSize: $fileSize, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordPhotoCopyWith<$Res> implements $RecordPhotoCopyWith<$Res> {
  factory _$RecordPhotoCopyWith(_RecordPhoto value, $Res Function(_RecordPhoto) _then) = __$RecordPhotoCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordId, String? photoPath, String? photoUrl, String? thumbnailPath, String? description, int? width, int? height, int? fileSize, int sortOrder, DateTime? createdAt
});




}
/// @nodoc
class __$RecordPhotoCopyWithImpl<$Res>
    implements _$RecordPhotoCopyWith<$Res> {
  __$RecordPhotoCopyWithImpl(this._self, this._then);

  final _RecordPhoto _self;
  final $Res Function(_RecordPhoto) _then;

/// Create a copy of RecordPhoto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordId = null,Object? photoPath = freezed,Object? photoUrl = freezed,Object? thumbnailPath = freezed,Object? description = freezed,Object? width = freezed,Object? height = freezed,Object? fileSize = freezed,Object? sortOrder = null,Object? createdAt = freezed,}) {
  return _then(_RecordPhoto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,photoPath: freezed == photoPath ? _self.photoPath : photoPath // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,thumbnailPath: freezed == thumbnailPath ? _self.thumbnailPath : thumbnailPath // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,fileSize: freezed == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int?,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
