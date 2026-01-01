// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Record {

/// 主键ID
 int? get id;/// 记录类型ID，关联record_types表
 int get recordTypeId;/// 记录标题
 String get title;/// 记录内容
 String? get content;/// 元数据信息，JSON格式存储
 String? get metadata;/// 分类ID，关联categories表
 int? get categoryId;/// 父级记录ID，用于建立记录间的层级关系
 int? get parentId;/// 记录状态，默认为 active 【active, archived, deleted】
 String get status;/// 开始时间
 DateTime? get startTime;/// 结束时间
 DateTime? get endTime;/// 创建时间
 DateTime? get createdAt;/// 更新时间
 DateTime? get updatedAt;
/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCopyWith<Record> get copyWith => _$RecordCopyWithImpl<Record>(this as Record, _$identity);

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Record&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,title,content,metadata,categoryId,parentId,status,startTime,endTime,createdAt,updatedAt);

@override
String toString() {
  return 'Record(id: $id, recordTypeId: $recordTypeId, title: $title, content: $content, metadata: $metadata, categoryId: $categoryId, parentId: $parentId, status: $status, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecordCopyWith<$Res>  {
  factory $RecordCopyWith(Record value, $Res Function(Record) _then) = _$RecordCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, String title, String? content, String? metadata, int? categoryId, int? parentId, String status, DateTime? startTime, DateTime? endTime, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$RecordCopyWithImpl<$Res>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._self, this._then);

  final Record _self;
  final $Res Function(Record) _then;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? title = null,Object? content = freezed,Object? metadata = freezed,Object? categoryId = freezed,Object? parentId = freezed,Object? status = null,Object? startTime = freezed,Object? endTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Record].
extension RecordPatterns on Record {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Record value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Record() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Record value)  $default,){
final _that = this;
switch (_that) {
case _Record():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Record value)?  $default,){
final _that = this;
switch (_that) {
case _Record() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String title,  String? content,  String? metadata,  int? categoryId,  int? parentId,  String status,  DateTime? startTime,  DateTime? endTime,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Record() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.title,_that.content,_that.metadata,_that.categoryId,_that.parentId,_that.status,_that.startTime,_that.endTime,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String title,  String? content,  String? metadata,  int? categoryId,  int? parentId,  String status,  DateTime? startTime,  DateTime? endTime,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Record():
return $default(_that.id,_that.recordTypeId,_that.title,_that.content,_that.metadata,_that.categoryId,_that.parentId,_that.status,_that.startTime,_that.endTime,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  String title,  String? content,  String? metadata,  int? categoryId,  int? parentId,  String status,  DateTime? startTime,  DateTime? endTime,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Record() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.title,_that.content,_that.metadata,_that.categoryId,_that.parentId,_that.status,_that.startTime,_that.endTime,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Record implements Record {
  const _Record({this.id, required this.recordTypeId, required this.title, this.content, this.metadata, this.categoryId, this.parentId, this.status = 'active', this.startTime, this.endTime, this.createdAt, this.updatedAt});
  factory _Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);

/// 主键ID
@override final  int? id;
/// 记录类型ID，关联record_types表
@override final  int recordTypeId;
/// 记录标题
@override final  String title;
/// 记录内容
@override final  String? content;
/// 元数据信息，JSON格式存储
@override final  String? metadata;
/// 分类ID，关联categories表
@override final  int? categoryId;
/// 父级记录ID，用于建立记录间的层级关系
@override final  int? parentId;
/// 记录状态，默认为 active 【active, archived, deleted】
@override@JsonKey() final  String status;
/// 开始时间
@override final  DateTime? startTime;
/// 结束时间
@override final  DateTime? endTime;
/// 创建时间
@override final  DateTime? createdAt;
/// 更新时间
@override final  DateTime? updatedAt;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordCopyWith<_Record> get copyWith => __$RecordCopyWithImpl<_Record>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Record&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,title,content,metadata,categoryId,parentId,status,startTime,endTime,createdAt,updatedAt);

@override
String toString() {
  return 'Record(id: $id, recordTypeId: $recordTypeId, title: $title, content: $content, metadata: $metadata, categoryId: $categoryId, parentId: $parentId, status: $status, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$RecordCopyWith(_Record value, $Res Function(_Record) _then) = __$RecordCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, String title, String? content, String? metadata, int? categoryId, int? parentId, String status, DateTime? startTime, DateTime? endTime, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$RecordCopyWithImpl<$Res>
    implements _$RecordCopyWith<$Res> {
  __$RecordCopyWithImpl(this._self, this._then);

  final _Record _self;
  final $Res Function(_Record) _then;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? title = null,Object? content = freezed,Object? metadata = freezed,Object? categoryId = freezed,Object? parentId = freezed,Object? status = null,Object? startTime = freezed,Object? endTime = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Record(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
