// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_setting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserSetting {

/// 用户设置表的主键ID
 int? get id;/// 设置项的键名，唯一标识一个设置项
 String get settingKey;/// 设置项的值，存储具体的设置内容
 String get settingValue;/// 设置项的值类型，默认为'string'（string, number, boolean, json）
 String get settingType;/// 记录创建时间
 DateTime? get createdAt;/// 记录更新时间
 DateTime? get updatedAt;
/// Create a copy of UserSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserSettingCopyWith<UserSetting> get copyWith => _$UserSettingCopyWithImpl<UserSetting>(this as UserSetting, _$identity);

  /// Serializes this UserSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserSetting&&(identical(other.id, id) || other.id == id)&&(identical(other.settingKey, settingKey) || other.settingKey == settingKey)&&(identical(other.settingValue, settingValue) || other.settingValue == settingValue)&&(identical(other.settingType, settingType) || other.settingType == settingType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,settingKey,settingValue,settingType,createdAt,updatedAt);

@override
String toString() {
  return 'UserSetting(id: $id, settingKey: $settingKey, settingValue: $settingValue, settingType: $settingType, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserSettingCopyWith<$Res>  {
  factory $UserSettingCopyWith(UserSetting value, $Res Function(UserSetting) _then) = _$UserSettingCopyWithImpl;
@useResult
$Res call({
 int? id, String settingKey, String settingValue, String settingType, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserSettingCopyWithImpl<$Res>
    implements $UserSettingCopyWith<$Res> {
  _$UserSettingCopyWithImpl(this._self, this._then);

  final UserSetting _self;
  final $Res Function(UserSetting) _then;

/// Create a copy of UserSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? settingKey = null,Object? settingValue = null,Object? settingType = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,settingKey: null == settingKey ? _self.settingKey : settingKey // ignore: cast_nullable_to_non_nullable
as String,settingValue: null == settingValue ? _self.settingValue : settingValue // ignore: cast_nullable_to_non_nullable
as String,settingType: null == settingType ? _self.settingType : settingType // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserSetting].
extension UserSettingPatterns on UserSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserSetting value)  $default,){
final _that = this;
switch (_that) {
case _UserSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserSetting value)?  $default,){
final _that = this;
switch (_that) {
case _UserSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String settingKey,  String settingValue,  String settingType,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserSetting() when $default != null:
return $default(_that.id,_that.settingKey,_that.settingValue,_that.settingType,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String settingKey,  String settingValue,  String settingType,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserSetting():
return $default(_that.id,_that.settingKey,_that.settingValue,_that.settingType,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String settingKey,  String settingValue,  String settingType,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserSetting() when $default != null:
return $default(_that.id,_that.settingKey,_that.settingValue,_that.settingType,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserSetting implements UserSetting {
  const _UserSetting({this.id, required this.settingKey, required this.settingValue, this.settingType = 'string', this.createdAt, this.updatedAt});
  factory _UserSetting.fromJson(Map<String, dynamic> json) => _$UserSettingFromJson(json);

/// 用户设置表的主键ID
@override final  int? id;
/// 设置项的键名，唯一标识一个设置项
@override final  String settingKey;
/// 设置项的值，存储具体的设置内容
@override final  String settingValue;
/// 设置项的值类型，默认为'string'（string, number, boolean, json）
@override@JsonKey() final  String settingType;
/// 记录创建时间
@override final  DateTime? createdAt;
/// 记录更新时间
@override final  DateTime? updatedAt;

/// Create a copy of UserSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSettingCopyWith<_UserSetting> get copyWith => __$UserSettingCopyWithImpl<_UserSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSetting&&(identical(other.id, id) || other.id == id)&&(identical(other.settingKey, settingKey) || other.settingKey == settingKey)&&(identical(other.settingValue, settingValue) || other.settingValue == settingValue)&&(identical(other.settingType, settingType) || other.settingType == settingType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,settingKey,settingValue,settingType,createdAt,updatedAt);

@override
String toString() {
  return 'UserSetting(id: $id, settingKey: $settingKey, settingValue: $settingValue, settingType: $settingType, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserSettingCopyWith<$Res> implements $UserSettingCopyWith<$Res> {
  factory _$UserSettingCopyWith(_UserSetting value, $Res Function(_UserSetting) _then) = __$UserSettingCopyWithImpl;
@override @useResult
$Res call({
 int? id, String settingKey, String settingValue, String settingType, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserSettingCopyWithImpl<$Res>
    implements _$UserSettingCopyWith<$Res> {
  __$UserSettingCopyWithImpl(this._self, this._then);

  final _UserSetting _self;
  final $Res Function(_UserSetting) _then;

/// Create a copy of UserSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? settingKey = null,Object? settingValue = null,Object? settingType = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserSetting(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,settingKey: null == settingKey ? _self.settingKey : settingKey // ignore: cast_nullable_to_non_nullable
as String,settingValue: null == settingValue ? _self.settingValue : settingValue // ignore: cast_nullable_to_non_nullable
as String,settingType: null == settingType ? _self.settingType : settingType // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
