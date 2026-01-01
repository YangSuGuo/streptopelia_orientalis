// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_value_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordValueConfig {

 int? get id; int get recordTypeId; String get fieldName; String? get fieldLabel; String get fieldType; String? get unit; double? get minValue; double? get maxValue; double? get defaultValue; String? get selectionOptions; bool get isRequired; DateTime? get createdAt;
/// Create a copy of RecordValueConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordValueConfigCopyWith<RecordValueConfig> get copyWith => _$RecordValueConfigCopyWithImpl<RecordValueConfig>(this as RecordValueConfig, _$identity);

  /// Serializes this RecordValueConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordValueConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldLabel, fieldLabel) || other.fieldLabel == fieldLabel)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.selectionOptions, selectionOptions) || other.selectionOptions == selectionOptions)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,fieldName,fieldLabel,fieldType,unit,minValue,maxValue,defaultValue,selectionOptions,isRequired,createdAt);

@override
String toString() {
  return 'RecordValueConfig(id: $id, recordTypeId: $recordTypeId, fieldName: $fieldName, fieldLabel: $fieldLabel, fieldType: $fieldType, unit: $unit, minValue: $minValue, maxValue: $maxValue, defaultValue: $defaultValue, selectionOptions: $selectionOptions, isRequired: $isRequired, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordValueConfigCopyWith<$Res>  {
  factory $RecordValueConfigCopyWith(RecordValueConfig value, $Res Function(RecordValueConfig) _then) = _$RecordValueConfigCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, String fieldName, String? fieldLabel, String fieldType, String? unit, double? minValue, double? maxValue, double? defaultValue, String? selectionOptions, bool isRequired, DateTime? createdAt
});




}
/// @nodoc
class _$RecordValueConfigCopyWithImpl<$Res>
    implements $RecordValueConfigCopyWith<$Res> {
  _$RecordValueConfigCopyWithImpl(this._self, this._then);

  final RecordValueConfig _self;
  final $Res Function(RecordValueConfig) _then;

/// Create a copy of RecordValueConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? fieldName = null,Object? fieldLabel = freezed,Object? fieldType = null,Object? unit = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? defaultValue = freezed,Object? selectionOptions = freezed,Object? isRequired = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldLabel: freezed == fieldLabel ? _self.fieldLabel : fieldLabel // ignore: cast_nullable_to_non_nullable
as String?,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as String,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as double?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as double?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as double?,selectionOptions: freezed == selectionOptions ? _self.selectionOptions : selectionOptions // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordValueConfig].
extension RecordValueConfigPatterns on RecordValueConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordValueConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordValueConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordValueConfig value)  $default,){
final _that = this;
switch (_that) {
case _RecordValueConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordValueConfig value)?  $default,){
final _that = this;
switch (_that) {
case _RecordValueConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String fieldName,  String? fieldLabel,  String fieldType,  String? unit,  double? minValue,  double? maxValue,  double? defaultValue,  String? selectionOptions,  bool isRequired,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordValueConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.fieldName,_that.fieldLabel,_that.fieldType,_that.unit,_that.minValue,_that.maxValue,_that.defaultValue,_that.selectionOptions,_that.isRequired,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String fieldName,  String? fieldLabel,  String fieldType,  String? unit,  double? minValue,  double? maxValue,  double? defaultValue,  String? selectionOptions,  bool isRequired,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordValueConfig():
return $default(_that.id,_that.recordTypeId,_that.fieldName,_that.fieldLabel,_that.fieldType,_that.unit,_that.minValue,_that.maxValue,_that.defaultValue,_that.selectionOptions,_that.isRequired,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  String fieldName,  String? fieldLabel,  String fieldType,  String? unit,  double? minValue,  double? maxValue,  double? defaultValue,  String? selectionOptions,  bool isRequired,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordValueConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.fieldName,_that.fieldLabel,_that.fieldType,_that.unit,_that.minValue,_that.maxValue,_that.defaultValue,_that.selectionOptions,_that.isRequired,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordValueConfig implements RecordValueConfig {
  const _RecordValueConfig({this.id, required this.recordTypeId, required this.fieldName, this.fieldLabel, this.fieldType = 'numeric', this.unit, this.minValue, this.maxValue, this.defaultValue, this.selectionOptions, this.isRequired = false, this.createdAt});
  factory _RecordValueConfig.fromJson(Map<String, dynamic> json) => _$RecordValueConfigFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override final  String fieldName;
@override final  String? fieldLabel;
@override@JsonKey() final  String fieldType;
@override final  String? unit;
@override final  double? minValue;
@override final  double? maxValue;
@override final  double? defaultValue;
@override final  String? selectionOptions;
@override@JsonKey() final  bool isRequired;
@override final  DateTime? createdAt;

/// Create a copy of RecordValueConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordValueConfigCopyWith<_RecordValueConfig> get copyWith => __$RecordValueConfigCopyWithImpl<_RecordValueConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordValueConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordValueConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldLabel, fieldLabel) || other.fieldLabel == fieldLabel)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.minValue, minValue) || other.minValue == minValue)&&(identical(other.maxValue, maxValue) || other.maxValue == maxValue)&&(identical(other.defaultValue, defaultValue) || other.defaultValue == defaultValue)&&(identical(other.selectionOptions, selectionOptions) || other.selectionOptions == selectionOptions)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,fieldName,fieldLabel,fieldType,unit,minValue,maxValue,defaultValue,selectionOptions,isRequired,createdAt);

@override
String toString() {
  return 'RecordValueConfig(id: $id, recordTypeId: $recordTypeId, fieldName: $fieldName, fieldLabel: $fieldLabel, fieldType: $fieldType, unit: $unit, minValue: $minValue, maxValue: $maxValue, defaultValue: $defaultValue, selectionOptions: $selectionOptions, isRequired: $isRequired, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordValueConfigCopyWith<$Res> implements $RecordValueConfigCopyWith<$Res> {
  factory _$RecordValueConfigCopyWith(_RecordValueConfig value, $Res Function(_RecordValueConfig) _then) = __$RecordValueConfigCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, String fieldName, String? fieldLabel, String fieldType, String? unit, double? minValue, double? maxValue, double? defaultValue, String? selectionOptions, bool isRequired, DateTime? createdAt
});




}
/// @nodoc
class __$RecordValueConfigCopyWithImpl<$Res>
    implements _$RecordValueConfigCopyWith<$Res> {
  __$RecordValueConfigCopyWithImpl(this._self, this._then);

  final _RecordValueConfig _self;
  final $Res Function(_RecordValueConfig) _then;

/// Create a copy of RecordValueConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? fieldName = null,Object? fieldLabel = freezed,Object? fieldType = null,Object? unit = freezed,Object? minValue = freezed,Object? maxValue = freezed,Object? defaultValue = freezed,Object? selectionOptions = freezed,Object? isRequired = null,Object? createdAt = freezed,}) {
  return _then(_RecordValueConfig(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldLabel: freezed == fieldLabel ? _self.fieldLabel : fieldLabel // ignore: cast_nullable_to_non_nullable
as String?,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as String,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,minValue: freezed == minValue ? _self.minValue : minValue // ignore: cast_nullable_to_non_nullable
as double?,maxValue: freezed == maxValue ? _self.maxValue : maxValue // ignore: cast_nullable_to_non_nullable
as double?,defaultValue: freezed == defaultValue ? _self.defaultValue : defaultValue // ignore: cast_nullable_to_non_nullable
as double?,selectionOptions: freezed == selectionOptions ? _self.selectionOptions : selectionOptions // ignore: cast_nullable_to_non_nullable
as String?,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
