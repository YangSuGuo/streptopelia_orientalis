// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MediaFile {

/// 媒体文件的唯一标识符
 int? get id;/// 关联的记录ID
 int get recordId;/// 文件在设备上的存储路径
 String get filePath;/// 文件类型（如：image, video, audio, document）
 String get fileType;/// 文件的原始名称
 String get originalName;/// 文件大小（以字节为单位）
 int get fileSize;/// 文件的元数据信息
 String? get metadata;/// 创建时间
 DateTime? get createdAt;
/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaFileCopyWith<MediaFile> get copyWith => _$MediaFileCopyWithImpl<MediaFile>(this as MediaFile, _$identity);

  /// Serializes this MediaFile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaFile&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,filePath,fileType,originalName,fileSize,metadata,createdAt);

@override
String toString() {
  return 'MediaFile(id: $id, recordId: $recordId, filePath: $filePath, fileType: $fileType, originalName: $originalName, fileSize: $fileSize, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $MediaFileCopyWith<$Res>  {
  factory $MediaFileCopyWith(MediaFile value, $Res Function(MediaFile) _then) = _$MediaFileCopyWithImpl;
@useResult
$Res call({
 int? id, int recordId, String filePath, String fileType, String originalName, int fileSize, String? metadata, DateTime? createdAt
});




}
/// @nodoc
class _$MediaFileCopyWithImpl<$Res>
    implements $MediaFileCopyWith<$Res> {
  _$MediaFileCopyWithImpl(this._self, this._then);

  final MediaFile _self;
  final $Res Function(MediaFile) _then;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordId = null,Object? filePath = null,Object? fileType = null,Object? originalName = null,Object? fileSize = null,Object? metadata = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaFile].
extension MediaFilePatterns on MediaFile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaFile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaFile value)  $default,){
final _that = this;
switch (_that) {
case _MediaFile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaFile value)?  $default,){
final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordId,  String filePath,  String fileType,  String originalName,  int fileSize,  String? metadata,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
return $default(_that.id,_that.recordId,_that.filePath,_that.fileType,_that.originalName,_that.fileSize,_that.metadata,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordId,  String filePath,  String fileType,  String originalName,  int fileSize,  String? metadata,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _MediaFile():
return $default(_that.id,_that.recordId,_that.filePath,_that.fileType,_that.originalName,_that.fileSize,_that.metadata,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordId,  String filePath,  String fileType,  String originalName,  int fileSize,  String? metadata,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _MediaFile() when $default != null:
return $default(_that.id,_that.recordId,_that.filePath,_that.fileType,_that.originalName,_that.fileSize,_that.metadata,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaFile implements MediaFile {
  const _MediaFile({this.id, required this.recordId, required this.filePath, required this.fileType, required this.originalName, required this.fileSize, this.metadata, this.createdAt});
  factory _MediaFile.fromJson(Map<String, dynamic> json) => _$MediaFileFromJson(json);

/// 媒体文件的唯一标识符
@override final  int? id;
/// 关联的记录ID
@override final  int recordId;
/// 文件在设备上的存储路径
@override final  String filePath;
/// 文件类型（如：image, video, audio, document）
@override final  String fileType;
/// 文件的原始名称
@override final  String originalName;
/// 文件大小（以字节为单位）
@override final  int fileSize;
/// 文件的元数据信息
@override final  String? metadata;
/// 创建时间
@override final  DateTime? createdAt;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaFileCopyWith<_MediaFile> get copyWith => __$MediaFileCopyWithImpl<_MediaFile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaFileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaFile&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.filePath, filePath) || other.filePath == filePath)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,filePath,fileType,originalName,fileSize,metadata,createdAt);

@override
String toString() {
  return 'MediaFile(id: $id, recordId: $recordId, filePath: $filePath, fileType: $fileType, originalName: $originalName, fileSize: $fileSize, metadata: $metadata, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$MediaFileCopyWith<$Res> implements $MediaFileCopyWith<$Res> {
  factory _$MediaFileCopyWith(_MediaFile value, $Res Function(_MediaFile) _then) = __$MediaFileCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordId, String filePath, String fileType, String originalName, int fileSize, String? metadata, DateTime? createdAt
});




}
/// @nodoc
class __$MediaFileCopyWithImpl<$Res>
    implements _$MediaFileCopyWith<$Res> {
  __$MediaFileCopyWithImpl(this._self, this._then);

  final _MediaFile _self;
  final $Res Function(_MediaFile) _then;

/// Create a copy of MediaFile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordId = null,Object? filePath = null,Object? fileType = null,Object? originalName = null,Object? fileSize = null,Object? metadata = freezed,Object? createdAt = freezed,}) {
  return _then(_MediaFile(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
