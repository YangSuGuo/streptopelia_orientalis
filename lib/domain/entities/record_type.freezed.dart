// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordType {

/// 主键ID
 int? get id;/// 分类ID
 int? get categoryId;/// 记录类型名称
 String get name;/// 记录类型描述
 String? get description;/// 记录类型图标
 String? get icon;/// 记录类型颜色
 String? get color;/// 记录类型配置信息
 String? get config;/// 创建时间
 DateTime? get createdAt;/// 更新时间
 DateTime? get updatedAt;
/// Create a copy of RecordType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordTypeCopyWith<RecordType> get copyWith => _$RecordTypeCopyWithImpl<RecordType>(this as RecordType, _$identity);

  /// Serializes this RecordType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordType&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.config, config) || other.config == config)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description,icon,color,config,createdAt,updatedAt);

@override
String toString() {
  return 'RecordType(id: $id, categoryId: $categoryId, name: $name, description: $description, icon: $icon, color: $color, config: $config, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecordTypeCopyWith<$Res>  {
  factory $RecordTypeCopyWith(RecordType value, $Res Function(RecordType) _then) = _$RecordTypeCopyWithImpl;
@useResult
$Res call({
 int? id, int? categoryId, String name, String? description, String? icon, String? color, String? config, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$RecordTypeCopyWithImpl<$Res>
    implements $RecordTypeCopyWith<$Res> {
  _$RecordTypeCopyWithImpl(this._self, this._then);

  final RecordType _self;
  final $Res Function(RecordType) _then;

/// Create a copy of RecordType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? categoryId = freezed,Object? name = null,Object? description = freezed,Object? icon = freezed,Object? color = freezed,Object? config = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordType].
extension RecordTypePatterns on RecordType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordType value)  $default,){
final _that = this;
switch (_that) {
case _RecordType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordType value)?  $default,){
final _that = this;
switch (_that) {
case _RecordType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? categoryId,  String name,  String? description,  String? icon,  String? color,  String? config,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordType() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description,_that.icon,_that.color,_that.config,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? categoryId,  String name,  String? description,  String? icon,  String? color,  String? config,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RecordType():
return $default(_that.id,_that.categoryId,_that.name,_that.description,_that.icon,_that.color,_that.config,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? categoryId,  String name,  String? description,  String? icon,  String? color,  String? config,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordType() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description,_that.icon,_that.color,_that.config,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordType implements RecordType {
  const _RecordType({this.id, this.categoryId, required this.name, this.description, this.icon, this.color, this.config, this.createdAt, this.updatedAt});
  factory _RecordType.fromJson(Map<String, dynamic> json) => _$RecordTypeFromJson(json);

/// 主键ID
@override final  int? id;
/// 分类ID
@override final  int? categoryId;
/// 记录类型名称
@override final  String name;
/// 记录类型描述
@override final  String? description;
/// 记录类型图标
@override final  String? icon;
/// 记录类型颜色
@override final  String? color;
/// 记录类型配置信息
@override final  String? config;
/// 创建时间
@override final  DateTime? createdAt;
/// 更新时间
@override final  DateTime? updatedAt;

/// Create a copy of RecordType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordTypeCopyWith<_RecordType> get copyWith => __$RecordTypeCopyWithImpl<_RecordType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordType&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.config, config) || other.config == config)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description,icon,color,config,createdAt,updatedAt);

@override
String toString() {
  return 'RecordType(id: $id, categoryId: $categoryId, name: $name, description: $description, icon: $icon, color: $color, config: $config, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecordTypeCopyWith<$Res> implements $RecordTypeCopyWith<$Res> {
  factory _$RecordTypeCopyWith(_RecordType value, $Res Function(_RecordType) _then) = __$RecordTypeCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? categoryId, String name, String? description, String? icon, String? color, String? config, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$RecordTypeCopyWithImpl<$Res>
    implements _$RecordTypeCopyWith<$Res> {
  __$RecordTypeCopyWithImpl(this._self, this._then);

  final _RecordType _self;
  final $Res Function(_RecordType) _then;

/// Create a copy of RecordType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? categoryId = freezed,Object? name = null,Object? description = freezed,Object? icon = freezed,Object? color = freezed,Object? config = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_RecordType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,config: freezed == config ? _self.config : config // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
