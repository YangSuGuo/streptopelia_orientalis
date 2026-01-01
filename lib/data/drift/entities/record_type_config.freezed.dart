// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_type_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordTypeConfig {

 int? get id; int get recordTypeId; String get configKey; String? get configValue; String get configType; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of RecordTypeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordTypeConfigCopyWith<RecordTypeConfig> get copyWith => _$RecordTypeConfigCopyWithImpl<RecordTypeConfig>(this as RecordTypeConfig, _$identity);

  /// Serializes this RecordTypeConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordTypeConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.configKey, configKey) || other.configKey == configKey)&&(identical(other.configValue, configValue) || other.configValue == configValue)&&(identical(other.configType, configType) || other.configType == configType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,configKey,configValue,configType,createdAt,updatedAt);

@override
String toString() {
  return 'RecordTypeConfig(id: $id, recordTypeId: $recordTypeId, configKey: $configKey, configValue: $configValue, configType: $configType, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecordTypeConfigCopyWith<$Res>  {
  factory $RecordTypeConfigCopyWith(RecordTypeConfig value, $Res Function(RecordTypeConfig) _then) = _$RecordTypeConfigCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, String configKey, String? configValue, String configType, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$RecordTypeConfigCopyWithImpl<$Res>
    implements $RecordTypeConfigCopyWith<$Res> {
  _$RecordTypeConfigCopyWithImpl(this._self, this._then);

  final RecordTypeConfig _self;
  final $Res Function(RecordTypeConfig) _then;

/// Create a copy of RecordTypeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? configKey = null,Object? configValue = freezed,Object? configType = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,configKey: null == configKey ? _self.configKey : configKey // ignore: cast_nullable_to_non_nullable
as String,configValue: freezed == configValue ? _self.configValue : configValue // ignore: cast_nullable_to_non_nullable
as String?,configType: null == configType ? _self.configType : configType // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordTypeConfig].
extension RecordTypeConfigPatterns on RecordTypeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordTypeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordTypeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordTypeConfig value)  $default,){
final _that = this;
switch (_that) {
case _RecordTypeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordTypeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _RecordTypeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String configKey,  String? configValue,  String configType,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordTypeConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.configKey,_that.configValue,_that.configType,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String configKey,  String? configValue,  String configType,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RecordTypeConfig():
return $default(_that.id,_that.recordTypeId,_that.configKey,_that.configValue,_that.configType,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  String configKey,  String? configValue,  String configType,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordTypeConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.configKey,_that.configValue,_that.configType,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordTypeConfig implements RecordTypeConfig {
  const _RecordTypeConfig({this.id, required this.recordTypeId, required this.configKey, this.configValue, this.configType = 'string', this.createdAt, this.updatedAt = null});
  factory _RecordTypeConfig.fromJson(Map<String, dynamic> json) => _$RecordTypeConfigFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override final  String configKey;
@override final  String? configValue;
@override@JsonKey() final  String configType;
@override final  DateTime? createdAt;
@override@JsonKey() final  DateTime? updatedAt;

/// Create a copy of RecordTypeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordTypeConfigCopyWith<_RecordTypeConfig> get copyWith => __$RecordTypeConfigCopyWithImpl<_RecordTypeConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordTypeConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordTypeConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.configKey, configKey) || other.configKey == configKey)&&(identical(other.configValue, configValue) || other.configValue == configValue)&&(identical(other.configType, configType) || other.configType == configType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,configKey,configValue,configType,createdAt,updatedAt);

@override
String toString() {
  return 'RecordTypeConfig(id: $id, recordTypeId: $recordTypeId, configKey: $configKey, configValue: $configValue, configType: $configType, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecordTypeConfigCopyWith<$Res> implements $RecordTypeConfigCopyWith<$Res> {
  factory _$RecordTypeConfigCopyWith(_RecordTypeConfig value, $Res Function(_RecordTypeConfig) _then) = __$RecordTypeConfigCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, String configKey, String? configValue, String configType, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$RecordTypeConfigCopyWithImpl<$Res>
    implements _$RecordTypeConfigCopyWith<$Res> {
  __$RecordTypeConfigCopyWithImpl(this._self, this._then);

  final _RecordTypeConfig _self;
  final $Res Function(_RecordTypeConfig) _then;

/// Create a copy of RecordTypeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? configKey = null,Object? configValue = freezed,Object? configType = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_RecordTypeConfig(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,configKey: null == configKey ? _self.configKey : configKey // ignore: cast_nullable_to_non_nullable
as String,configValue: freezed == configValue ? _self.configValue : configValue // ignore: cast_nullable_to_non_nullable
as String?,configType: null == configType ? _self.configType : configType // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
