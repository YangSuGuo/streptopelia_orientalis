// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomField {

/// 主键ID
 int? get id;/// 关联的记录类型ID
 int get recordTypeId;/// 关联的记录ID
 int get recordId;/// 字段类型【text, number, date, boolean, select, image】
 String get type;/// 字段显示标签（显示名称）
 String get label;/// 字段名称
 String get key;/// 字段的值
 String get value;/// 字段配置信息（选项、验证规则等）
 String? get config;/// 是否为必填字段
 bool get isRequired;/// 排序顺序
 int get sortOrder;/// 创建时间
 DateTime? get createdAt;
/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomFieldCopyWith<CustomField> get copyWith => _$CustomFieldCopyWithImpl<CustomField>(this as CustomField, _$identity);

  /// Serializes this CustomField to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.config, config) || other.config == config)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,recordId,type,label,key,value,config,isRequired,sortOrder,createdAt);

@override
String toString() {
  return 'CustomField(id: $id, recordTypeId: $recordTypeId, recordId: $recordId, type: $type, label: $label, key: $key, value: $value, config: $config, isRequired: $isRequired, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $CustomFieldCopyWith<$Res>  {
  factory $CustomFieldCopyWith(CustomField value, $Res Function(CustomField) _then) = _$CustomFieldCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, int recordId, String type, String label, String key, String value, String? config, bool isRequired, int sortOrder, DateTime? createdAt
});




}
/// @nodoc
class _$CustomFieldCopyWithImpl<$Res>
    implements $CustomFieldCopyWith<$Res> {
  _$CustomFieldCopyWithImpl(this._self, this._then);

  final CustomField _self;
  final $Res Function(CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? recordId = null,Object? type = null,Object? label = null,Object? key = null,Object? value = null,Object? config = freezed,Object? isRequired = null,Object? sortOrder = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomField].
extension CustomFieldPatterns on CustomField {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomField value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomField value)  $default,){
final _that = this;
switch (_that) {
case _CustomField():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomField value)?  $default,){
final _that = this;
switch (_that) {
case _CustomField() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  int recordId,  String type,  String label,  String key,  String value,  String? config,  bool isRequired,  int sortOrder,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.recordId,_that.type,_that.label,_that.key,_that.value,_that.config,_that.isRequired,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  int recordId,  String type,  String label,  String key,  String value,  String? config,  bool isRequired,  int sortOrder,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _CustomField():
return $default(_that.id,_that.recordTypeId,_that.recordId,_that.type,_that.label,_that.key,_that.value,_that.config,_that.isRequired,_that.sortOrder,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  int recordId,  String type,  String label,  String key,  String value,  String? config,  bool isRequired,  int sortOrder,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _CustomField() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.recordId,_that.type,_that.label,_that.key,_that.value,_that.config,_that.isRequired,_that.sortOrder,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomField implements CustomField {
  const _CustomField({this.id, required this.recordTypeId, required this.recordId, required this.type, required this.label, required this.key, required this.value, this.config, this.isRequired = false, this.sortOrder = 0, this.createdAt});
  factory _CustomField.fromJson(Map<String, dynamic> json) => _$CustomFieldFromJson(json);

/// 主键ID
@override final  int? id;
/// 关联的记录类型ID
@override final  int recordTypeId;
/// 关联的记录ID
@override final  int recordId;
/// 字段类型【text, number, date, boolean, select, image】
@override final  String type;
/// 字段显示标签（显示名称）
@override final  String label;
/// 字段名称
@override final  String key;
/// 字段的值
@override final  String value;
/// 字段配置信息（选项、验证规则等）
@override final  String? config;
/// 是否为必填字段
@override@JsonKey() final  bool isRequired;
/// 排序顺序
@override@JsonKey() final  int sortOrder;
/// 创建时间
@override final  DateTime? createdAt;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomFieldCopyWith<_CustomField> get copyWith => __$CustomFieldCopyWithImpl<_CustomField>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomFieldToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomField&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.type, type) || other.type == type)&&(identical(other.label, label) || other.label == label)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.config, config) || other.config == config)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,recordId,type,label,key,value,config,isRequired,sortOrder,createdAt);

@override
String toString() {
  return 'CustomField(id: $id, recordTypeId: $recordTypeId, recordId: $recordId, type: $type, label: $label, key: $key, value: $value, config: $config, isRequired: $isRequired, sortOrder: $sortOrder, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$CustomFieldCopyWith<$Res> implements $CustomFieldCopyWith<$Res> {
  factory _$CustomFieldCopyWith(_CustomField value, $Res Function(_CustomField) _then) = __$CustomFieldCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, int recordId, String type, String label, String key, String value, String? config, bool isRequired, int sortOrder, DateTime? createdAt
});




}
/// @nodoc
class __$CustomFieldCopyWithImpl<$Res>
    implements _$CustomFieldCopyWith<$Res> {
  __$CustomFieldCopyWithImpl(this._self, this._then);

  final _CustomField _self;
  final $Res Function(_CustomField) _then;

/// Create a copy of CustomField
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? recordId = null,Object? type = null,Object? label = null,Object? key = null,Object? value = null,Object? config = freezed,Object? isRequired = null,Object? sortOrder = null,Object? createdAt = freezed,}) {
  return _then(_CustomField(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
