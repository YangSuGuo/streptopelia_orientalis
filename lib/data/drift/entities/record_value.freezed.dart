// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordValue {

 int? get id; int get recordId; String get fieldName; double? get fieldValue; String? get fieldTextValue; String get fieldType; String? get unit; String get valueType; DateTime? get createdAt;
/// Create a copy of RecordValue
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordValueCopyWith<RecordValue> get copyWith => _$RecordValueCopyWithImpl<RecordValue>(this as RecordValue, _$identity);

  /// Serializes this RecordValue to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordValue&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldValue, fieldValue) || other.fieldValue == fieldValue)&&(identical(other.fieldTextValue, fieldTextValue) || other.fieldTextValue == fieldTextValue)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.valueType, valueType) || other.valueType == valueType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,fieldName,fieldValue,fieldTextValue,fieldType,unit,valueType,createdAt);

@override
String toString() {
  return 'RecordValue(id: $id, recordId: $recordId, fieldName: $fieldName, fieldValue: $fieldValue, fieldTextValue: $fieldTextValue, fieldType: $fieldType, unit: $unit, valueType: $valueType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordValueCopyWith<$Res>  {
  factory $RecordValueCopyWith(RecordValue value, $Res Function(RecordValue) _then) = _$RecordValueCopyWithImpl;
@useResult
$Res call({
 int? id, int recordId, String fieldName, double? fieldValue, String? fieldTextValue, String fieldType, String? unit, String valueType, DateTime? createdAt
});




}
/// @nodoc
class _$RecordValueCopyWithImpl<$Res>
    implements $RecordValueCopyWith<$Res> {
  _$RecordValueCopyWithImpl(this._self, this._then);

  final RecordValue _self;
  final $Res Function(RecordValue) _then;

/// Create a copy of RecordValue
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordId = null,Object? fieldName = null,Object? fieldValue = freezed,Object? fieldTextValue = freezed,Object? fieldType = null,Object? unit = freezed,Object? valueType = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldValue: freezed == fieldValue ? _self.fieldValue : fieldValue // ignore: cast_nullable_to_non_nullable
as double?,fieldTextValue: freezed == fieldTextValue ? _self.fieldTextValue : fieldTextValue // ignore: cast_nullable_to_non_nullable
as String?,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as String,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,valueType: null == valueType ? _self.valueType : valueType // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordValue].
extension RecordValuePatterns on RecordValue {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordValue value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordValue() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordValue value)  $default,){
final _that = this;
switch (_that) {
case _RecordValue():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordValue value)?  $default,){
final _that = this;
switch (_that) {
case _RecordValue() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordId,  String fieldName,  double? fieldValue,  String? fieldTextValue,  String fieldType,  String? unit,  String valueType,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordValue() when $default != null:
return $default(_that.id,_that.recordId,_that.fieldName,_that.fieldValue,_that.fieldTextValue,_that.fieldType,_that.unit,_that.valueType,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordId,  String fieldName,  double? fieldValue,  String? fieldTextValue,  String fieldType,  String? unit,  String valueType,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordValue():
return $default(_that.id,_that.recordId,_that.fieldName,_that.fieldValue,_that.fieldTextValue,_that.fieldType,_that.unit,_that.valueType,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordId,  String fieldName,  double? fieldValue,  String? fieldTextValue,  String fieldType,  String? unit,  String valueType,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordValue() when $default != null:
return $default(_that.id,_that.recordId,_that.fieldName,_that.fieldValue,_that.fieldTextValue,_that.fieldType,_that.unit,_that.valueType,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordValue implements RecordValue {
  const _RecordValue({this.id, required this.recordId, required this.fieldName, this.fieldValue, this.fieldTextValue, this.fieldType = 'numeric', this.unit, this.valueType = 'decimal', this.createdAt});
  factory _RecordValue.fromJson(Map<String, dynamic> json) => _$RecordValueFromJson(json);

@override final  int? id;
@override final  int recordId;
@override final  String fieldName;
@override final  double? fieldValue;
@override final  String? fieldTextValue;
@override@JsonKey() final  String fieldType;
@override final  String? unit;
@override@JsonKey() final  String valueType;
@override final  DateTime? createdAt;

/// Create a copy of RecordValue
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordValueCopyWith<_RecordValue> get copyWith => __$RecordValueCopyWithImpl<_RecordValue>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordValueToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordValue&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.fieldName, fieldName) || other.fieldName == fieldName)&&(identical(other.fieldValue, fieldValue) || other.fieldValue == fieldValue)&&(identical(other.fieldTextValue, fieldTextValue) || other.fieldTextValue == fieldTextValue)&&(identical(other.fieldType, fieldType) || other.fieldType == fieldType)&&(identical(other.unit, unit) || other.unit == unit)&&(identical(other.valueType, valueType) || other.valueType == valueType)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,fieldName,fieldValue,fieldTextValue,fieldType,unit,valueType,createdAt);

@override
String toString() {
  return 'RecordValue(id: $id, recordId: $recordId, fieldName: $fieldName, fieldValue: $fieldValue, fieldTextValue: $fieldTextValue, fieldType: $fieldType, unit: $unit, valueType: $valueType, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordValueCopyWith<$Res> implements $RecordValueCopyWith<$Res> {
  factory _$RecordValueCopyWith(_RecordValue value, $Res Function(_RecordValue) _then) = __$RecordValueCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordId, String fieldName, double? fieldValue, String? fieldTextValue, String fieldType, String? unit, String valueType, DateTime? createdAt
});




}
/// @nodoc
class __$RecordValueCopyWithImpl<$Res>
    implements _$RecordValueCopyWith<$Res> {
  __$RecordValueCopyWithImpl(this._self, this._then);

  final _RecordValue _self;
  final $Res Function(_RecordValue) _then;

/// Create a copy of RecordValue
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordId = null,Object? fieldName = null,Object? fieldValue = freezed,Object? fieldTextValue = freezed,Object? fieldType = null,Object? unit = freezed,Object? valueType = null,Object? createdAt = freezed,}) {
  return _then(_RecordValue(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,fieldName: null == fieldName ? _self.fieldName : fieldName // ignore: cast_nullable_to_non_nullable
as String,fieldValue: freezed == fieldValue ? _self.fieldValue : fieldValue // ignore: cast_nullable_to_non_nullable
as double?,fieldTextValue: freezed == fieldTextValue ? _self.fieldTextValue : fieldTextValue // ignore: cast_nullable_to_non_nullable
as String?,fieldType: null == fieldType ? _self.fieldType : fieldType // ignore: cast_nullable_to_non_nullable
as String,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,valueType: null == valueType ? _self.valueType : valueType // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
