// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_step.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordStep {

 int? get id; int get recordId; String get stepName; int get stepOrder; String get stepStatus; DateTime? get completedAt; String? get note; DateTime? get createdAt;
/// Create a copy of RecordStep
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordStepCopyWith<RecordStep> get copyWith => _$RecordStepCopyWithImpl<RecordStep>(this as RecordStep, _$identity);

  /// Serializes this RecordStep to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordStep&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.stepName, stepName) || other.stepName == stepName)&&(identical(other.stepOrder, stepOrder) || other.stepOrder == stepOrder)&&(identical(other.stepStatus, stepStatus) || other.stepStatus == stepStatus)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,stepName,stepOrder,stepStatus,completedAt,note,createdAt);

@override
String toString() {
  return 'RecordStep(id: $id, recordId: $recordId, stepName: $stepName, stepOrder: $stepOrder, stepStatus: $stepStatus, completedAt: $completedAt, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordStepCopyWith<$Res>  {
  factory $RecordStepCopyWith(RecordStep value, $Res Function(RecordStep) _then) = _$RecordStepCopyWithImpl;
@useResult
$Res call({
 int? id, int recordId, String stepName, int stepOrder, String stepStatus, DateTime? completedAt, String? note, DateTime? createdAt
});




}
/// @nodoc
class _$RecordStepCopyWithImpl<$Res>
    implements $RecordStepCopyWith<$Res> {
  _$RecordStepCopyWithImpl(this._self, this._then);

  final RecordStep _self;
  final $Res Function(RecordStep) _then;

/// Create a copy of RecordStep
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordId = null,Object? stepName = null,Object? stepOrder = null,Object? stepStatus = null,Object? completedAt = freezed,Object? note = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,stepName: null == stepName ? _self.stepName : stepName // ignore: cast_nullable_to_non_nullable
as String,stepOrder: null == stepOrder ? _self.stepOrder : stepOrder // ignore: cast_nullable_to_non_nullable
as int,stepStatus: null == stepStatus ? _self.stepStatus : stepStatus // ignore: cast_nullable_to_non_nullable
as String,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordStep].
extension RecordStepPatterns on RecordStep {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordStep value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordStep() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordStep value)  $default,){
final _that = this;
switch (_that) {
case _RecordStep():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordStep value)?  $default,){
final _that = this;
switch (_that) {
case _RecordStep() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordId,  String stepName,  int stepOrder,  String stepStatus,  DateTime? completedAt,  String? note,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordStep() when $default != null:
return $default(_that.id,_that.recordId,_that.stepName,_that.stepOrder,_that.stepStatus,_that.completedAt,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordId,  String stepName,  int stepOrder,  String stepStatus,  DateTime? completedAt,  String? note,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordStep():
return $default(_that.id,_that.recordId,_that.stepName,_that.stepOrder,_that.stepStatus,_that.completedAt,_that.note,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordId,  String stepName,  int stepOrder,  String stepStatus,  DateTime? completedAt,  String? note,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordStep() when $default != null:
return $default(_that.id,_that.recordId,_that.stepName,_that.stepOrder,_that.stepStatus,_that.completedAt,_that.note,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordStep implements RecordStep {
  const _RecordStep({this.id, required this.recordId, required this.stepName, required this.stepOrder, this.stepStatus = 'pending', this.completedAt = null, this.note, this.createdAt});
  factory _RecordStep.fromJson(Map<String, dynamic> json) => _$RecordStepFromJson(json);

@override final  int? id;
@override final  int recordId;
@override final  String stepName;
@override final  int stepOrder;
@override@JsonKey() final  String stepStatus;
@override@JsonKey() final  DateTime? completedAt;
@override final  String? note;
@override final  DateTime? createdAt;

/// Create a copy of RecordStep
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordStepCopyWith<_RecordStep> get copyWith => __$RecordStepCopyWithImpl<_RecordStep>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordStepToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordStep&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.stepName, stepName) || other.stepName == stepName)&&(identical(other.stepOrder, stepOrder) || other.stepOrder == stepOrder)&&(identical(other.stepStatus, stepStatus) || other.stepStatus == stepStatus)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,stepName,stepOrder,stepStatus,completedAt,note,createdAt);

@override
String toString() {
  return 'RecordStep(id: $id, recordId: $recordId, stepName: $stepName, stepOrder: $stepOrder, stepStatus: $stepStatus, completedAt: $completedAt, note: $note, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordStepCopyWith<$Res> implements $RecordStepCopyWith<$Res> {
  factory _$RecordStepCopyWith(_RecordStep value, $Res Function(_RecordStep) _then) = __$RecordStepCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordId, String stepName, int stepOrder, String stepStatus, DateTime? completedAt, String? note, DateTime? createdAt
});




}
/// @nodoc
class __$RecordStepCopyWithImpl<$Res>
    implements _$RecordStepCopyWith<$Res> {
  __$RecordStepCopyWithImpl(this._self, this._then);

  final _RecordStep _self;
  final $Res Function(_RecordStep) _then;

/// Create a copy of RecordStep
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordId = null,Object? stepName = null,Object? stepOrder = null,Object? stepStatus = null,Object? completedAt = freezed,Object? note = freezed,Object? createdAt = freezed,}) {
  return _then(_RecordStep(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,stepName: null == stepName ? _self.stepName : stepName // ignore: cast_nullable_to_non_nullable
as String,stepOrder: null == stepOrder ? _self.stepOrder : stepOrder // ignore: cast_nullable_to_non_nullable
as int,stepStatus: null == stepStatus ? _self.stepStatus : stepStatus // ignore: cast_nullable_to_non_nullable
as String,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
