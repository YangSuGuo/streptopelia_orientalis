// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_step_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordStepConfig {

 int? get id; int get recordTypeId; String get stepName; String? get stepDescription; int get stepOrder; bool get required; bool get allowSkip; DateTime? get createdAt;
/// Create a copy of RecordStepConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordStepConfigCopyWith<RecordStepConfig> get copyWith => _$RecordStepConfigCopyWithImpl<RecordStepConfig>(this as RecordStepConfig, _$identity);

  /// Serializes this RecordStepConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordStepConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.stepName, stepName) || other.stepName == stepName)&&(identical(other.stepDescription, stepDescription) || other.stepDescription == stepDescription)&&(identical(other.stepOrder, stepOrder) || other.stepOrder == stepOrder)&&(identical(other.required, required) || other.required == required)&&(identical(other.allowSkip, allowSkip) || other.allowSkip == allowSkip)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,stepName,stepDescription,stepOrder,required,allowSkip,createdAt);

@override
String toString() {
  return 'RecordStepConfig(id: $id, recordTypeId: $recordTypeId, stepName: $stepName, stepDescription: $stepDescription, stepOrder: $stepOrder, required: $required, allowSkip: $allowSkip, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordStepConfigCopyWith<$Res>  {
  factory $RecordStepConfigCopyWith(RecordStepConfig value, $Res Function(RecordStepConfig) _then) = _$RecordStepConfigCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, String stepName, String? stepDescription, int stepOrder, bool required, bool allowSkip, DateTime? createdAt
});




}
/// @nodoc
class _$RecordStepConfigCopyWithImpl<$Res>
    implements $RecordStepConfigCopyWith<$Res> {
  _$RecordStepConfigCopyWithImpl(this._self, this._then);

  final RecordStepConfig _self;
  final $Res Function(RecordStepConfig) _then;

/// Create a copy of RecordStepConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? stepName = null,Object? stepDescription = freezed,Object? stepOrder = null,Object? required = null,Object? allowSkip = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,stepName: null == stepName ? _self.stepName : stepName // ignore: cast_nullable_to_non_nullable
as String,stepDescription: freezed == stepDescription ? _self.stepDescription : stepDescription // ignore: cast_nullable_to_non_nullable
as String?,stepOrder: null == stepOrder ? _self.stepOrder : stepOrder // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,allowSkip: null == allowSkip ? _self.allowSkip : allowSkip // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordStepConfig].
extension RecordStepConfigPatterns on RecordStepConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordStepConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordStepConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordStepConfig value)  $default,){
final _that = this;
switch (_that) {
case _RecordStepConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordStepConfig value)?  $default,){
final _that = this;
switch (_that) {
case _RecordStepConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String stepName,  String? stepDescription,  int stepOrder,  bool required,  bool allowSkip,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordStepConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.stepName,_that.stepDescription,_that.stepOrder,_that.required,_that.allowSkip,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String stepName,  String? stepDescription,  int stepOrder,  bool required,  bool allowSkip,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordStepConfig():
return $default(_that.id,_that.recordTypeId,_that.stepName,_that.stepDescription,_that.stepOrder,_that.required,_that.allowSkip,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  String stepName,  String? stepDescription,  int stepOrder,  bool required,  bool allowSkip,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordStepConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.stepName,_that.stepDescription,_that.stepOrder,_that.required,_that.allowSkip,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordStepConfig implements RecordStepConfig {
  const _RecordStepConfig({this.id, required this.recordTypeId, required this.stepName, this.stepDescription, required this.stepOrder, this.required = false, this.allowSkip = true, this.createdAt});
  factory _RecordStepConfig.fromJson(Map<String, dynamic> json) => _$RecordStepConfigFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override final  String stepName;
@override final  String? stepDescription;
@override final  int stepOrder;
@override@JsonKey() final  bool required;
@override@JsonKey() final  bool allowSkip;
@override final  DateTime? createdAt;

/// Create a copy of RecordStepConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordStepConfigCopyWith<_RecordStepConfig> get copyWith => __$RecordStepConfigCopyWithImpl<_RecordStepConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordStepConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordStepConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.stepName, stepName) || other.stepName == stepName)&&(identical(other.stepDescription, stepDescription) || other.stepDescription == stepDescription)&&(identical(other.stepOrder, stepOrder) || other.stepOrder == stepOrder)&&(identical(other.required, required) || other.required == required)&&(identical(other.allowSkip, allowSkip) || other.allowSkip == allowSkip)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,stepName,stepDescription,stepOrder,required,allowSkip,createdAt);

@override
String toString() {
  return 'RecordStepConfig(id: $id, recordTypeId: $recordTypeId, stepName: $stepName, stepDescription: $stepDescription, stepOrder: $stepOrder, required: $required, allowSkip: $allowSkip, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordStepConfigCopyWith<$Res> implements $RecordStepConfigCopyWith<$Res> {
  factory _$RecordStepConfigCopyWith(_RecordStepConfig value, $Res Function(_RecordStepConfig) _then) = __$RecordStepConfigCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, String stepName, String? stepDescription, int stepOrder, bool required, bool allowSkip, DateTime? createdAt
});




}
/// @nodoc
class __$RecordStepConfigCopyWithImpl<$Res>
    implements _$RecordStepConfigCopyWith<$Res> {
  __$RecordStepConfigCopyWithImpl(this._self, this._then);

  final _RecordStepConfig _self;
  final $Res Function(_RecordStepConfig) _then;

/// Create a copy of RecordStepConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? stepName = null,Object? stepDescription = freezed,Object? stepOrder = null,Object? required = null,Object? allowSkip = null,Object? createdAt = freezed,}) {
  return _then(_RecordStepConfig(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,stepName: null == stepName ? _self.stepName : stepName // ignore: cast_nullable_to_non_nullable
as String,stepDescription: freezed == stepDescription ? _self.stepDescription : stepDescription // ignore: cast_nullable_to_non_nullable
as String?,stepOrder: null == stepOrder ? _self.stepOrder : stepOrder // ignore: cast_nullable_to_non_nullable
as int,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,allowSkip: null == allowSkip ? _self.allowSkip : allowSkip // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
