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

 int? get id; String get name; int? get categoryId; String? get description; String? get icon; String? get color; bool get isEnabled; int get sortOrder;// 配置字段
 bool? get requirePhoto; int? get maxPhotos; bool? get requireLocation; String? get locationAccuracy; int? get locationTimeout; bool? get hasTimer; int? get timerDuration; bool? get hasNotes; bool? get hasAttachments; bool? get hasAudioRecording; int? get maxAudioDuration; bool? get hasVideoRecording; int? get maxVideoDuration; bool? get showDuration; bool? get showStartTime; bool? get showEndTime; bool? get hasSubtasks; bool? get hasNumericValues; bool? get hasTextValues; bool? get hasSelectionValues; String? get selectionOptions; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of RecordType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordTypeCopyWith<RecordType> get copyWith => _$RecordTypeCopyWithImpl<RecordType>(this as RecordType, _$identity);

  /// Serializes this RecordType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.requirePhoto, requirePhoto) || other.requirePhoto == requirePhoto)&&(identical(other.maxPhotos, maxPhotos) || other.maxPhotos == maxPhotos)&&(identical(other.requireLocation, requireLocation) || other.requireLocation == requireLocation)&&(identical(other.locationAccuracy, locationAccuracy) || other.locationAccuracy == locationAccuracy)&&(identical(other.locationTimeout, locationTimeout) || other.locationTimeout == locationTimeout)&&(identical(other.hasTimer, hasTimer) || other.hasTimer == hasTimer)&&(identical(other.timerDuration, timerDuration) || other.timerDuration == timerDuration)&&(identical(other.hasNotes, hasNotes) || other.hasNotes == hasNotes)&&(identical(other.hasAttachments, hasAttachments) || other.hasAttachments == hasAttachments)&&(identical(other.hasAudioRecording, hasAudioRecording) || other.hasAudioRecording == hasAudioRecording)&&(identical(other.maxAudioDuration, maxAudioDuration) || other.maxAudioDuration == maxAudioDuration)&&(identical(other.hasVideoRecording, hasVideoRecording) || other.hasVideoRecording == hasVideoRecording)&&(identical(other.maxVideoDuration, maxVideoDuration) || other.maxVideoDuration == maxVideoDuration)&&(identical(other.showDuration, showDuration) || other.showDuration == showDuration)&&(identical(other.showStartTime, showStartTime) || other.showStartTime == showStartTime)&&(identical(other.showEndTime, showEndTime) || other.showEndTime == showEndTime)&&(identical(other.hasSubtasks, hasSubtasks) || other.hasSubtasks == hasSubtasks)&&(identical(other.hasNumericValues, hasNumericValues) || other.hasNumericValues == hasNumericValues)&&(identical(other.hasTextValues, hasTextValues) || other.hasTextValues == hasTextValues)&&(identical(other.hasSelectionValues, hasSelectionValues) || other.hasSelectionValues == hasSelectionValues)&&(identical(other.selectionOptions, selectionOptions) || other.selectionOptions == selectionOptions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,categoryId,description,icon,color,isEnabled,sortOrder,requirePhoto,maxPhotos,requireLocation,locationAccuracy,locationTimeout,hasTimer,timerDuration,hasNotes,hasAttachments,hasAudioRecording,maxAudioDuration,hasVideoRecording,maxVideoDuration,showDuration,showStartTime,showEndTime,hasSubtasks,hasNumericValues,hasTextValues,hasSelectionValues,selectionOptions,createdAt,updatedAt]);

@override
String toString() {
  return 'RecordType(id: $id, name: $name, categoryId: $categoryId, description: $description, icon: $icon, color: $color, isEnabled: $isEnabled, sortOrder: $sortOrder, requirePhoto: $requirePhoto, maxPhotos: $maxPhotos, requireLocation: $requireLocation, locationAccuracy: $locationAccuracy, locationTimeout: $locationTimeout, hasTimer: $hasTimer, timerDuration: $timerDuration, hasNotes: $hasNotes, hasAttachments: $hasAttachments, hasAudioRecording: $hasAudioRecording, maxAudioDuration: $maxAudioDuration, hasVideoRecording: $hasVideoRecording, maxVideoDuration: $maxVideoDuration, showDuration: $showDuration, showStartTime: $showStartTime, showEndTime: $showEndTime, hasSubtasks: $hasSubtasks, hasNumericValues: $hasNumericValues, hasTextValues: $hasTextValues, hasSelectionValues: $hasSelectionValues, selectionOptions: $selectionOptions, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecordTypeCopyWith<$Res>  {
  factory $RecordTypeCopyWith(RecordType value, $Res Function(RecordType) _then) = _$RecordTypeCopyWithImpl;
@useResult
$Res call({
 int? id, String name, int? categoryId, String? description, String? icon, String? color, bool isEnabled, int sortOrder, bool? requirePhoto, int? maxPhotos, bool? requireLocation, String? locationAccuracy, int? locationTimeout, bool? hasTimer, int? timerDuration, bool? hasNotes, bool? hasAttachments, bool? hasAudioRecording, int? maxAudioDuration, bool? hasVideoRecording, int? maxVideoDuration, bool? showDuration, bool? showStartTime, bool? showEndTime, bool? hasSubtasks, bool? hasNumericValues, bool? hasTextValues, bool? hasSelectionValues, String? selectionOptions, DateTime? createdAt, DateTime? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? categoryId = freezed,Object? description = freezed,Object? icon = freezed,Object? color = freezed,Object? isEnabled = null,Object? sortOrder = null,Object? requirePhoto = freezed,Object? maxPhotos = freezed,Object? requireLocation = freezed,Object? locationAccuracy = freezed,Object? locationTimeout = freezed,Object? hasTimer = freezed,Object? timerDuration = freezed,Object? hasNotes = freezed,Object? hasAttachments = freezed,Object? hasAudioRecording = freezed,Object? maxAudioDuration = freezed,Object? hasVideoRecording = freezed,Object? maxVideoDuration = freezed,Object? showDuration = freezed,Object? showStartTime = freezed,Object? showEndTime = freezed,Object? hasSubtasks = freezed,Object? hasNumericValues = freezed,Object? hasTextValues = freezed,Object? hasSelectionValues = freezed,Object? selectionOptions = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,requirePhoto: freezed == requirePhoto ? _self.requirePhoto : requirePhoto // ignore: cast_nullable_to_non_nullable
as bool?,maxPhotos: freezed == maxPhotos ? _self.maxPhotos : maxPhotos // ignore: cast_nullable_to_non_nullable
as int?,requireLocation: freezed == requireLocation ? _self.requireLocation : requireLocation // ignore: cast_nullable_to_non_nullable
as bool?,locationAccuracy: freezed == locationAccuracy ? _self.locationAccuracy : locationAccuracy // ignore: cast_nullable_to_non_nullable
as String?,locationTimeout: freezed == locationTimeout ? _self.locationTimeout : locationTimeout // ignore: cast_nullable_to_non_nullable
as int?,hasTimer: freezed == hasTimer ? _self.hasTimer : hasTimer // ignore: cast_nullable_to_non_nullable
as bool?,timerDuration: freezed == timerDuration ? _self.timerDuration : timerDuration // ignore: cast_nullable_to_non_nullable
as int?,hasNotes: freezed == hasNotes ? _self.hasNotes : hasNotes // ignore: cast_nullable_to_non_nullable
as bool?,hasAttachments: freezed == hasAttachments ? _self.hasAttachments : hasAttachments // ignore: cast_nullable_to_non_nullable
as bool?,hasAudioRecording: freezed == hasAudioRecording ? _self.hasAudioRecording : hasAudioRecording // ignore: cast_nullable_to_non_nullable
as bool?,maxAudioDuration: freezed == maxAudioDuration ? _self.maxAudioDuration : maxAudioDuration // ignore: cast_nullable_to_non_nullable
as int?,hasVideoRecording: freezed == hasVideoRecording ? _self.hasVideoRecording : hasVideoRecording // ignore: cast_nullable_to_non_nullable
as bool?,maxVideoDuration: freezed == maxVideoDuration ? _self.maxVideoDuration : maxVideoDuration // ignore: cast_nullable_to_non_nullable
as int?,showDuration: freezed == showDuration ? _self.showDuration : showDuration // ignore: cast_nullable_to_non_nullable
as bool?,showStartTime: freezed == showStartTime ? _self.showStartTime : showStartTime // ignore: cast_nullable_to_non_nullable
as bool?,showEndTime: freezed == showEndTime ? _self.showEndTime : showEndTime // ignore: cast_nullable_to_non_nullable
as bool?,hasSubtasks: freezed == hasSubtasks ? _self.hasSubtasks : hasSubtasks // ignore: cast_nullable_to_non_nullable
as bool?,hasNumericValues: freezed == hasNumericValues ? _self.hasNumericValues : hasNumericValues // ignore: cast_nullable_to_non_nullable
as bool?,hasTextValues: freezed == hasTextValues ? _self.hasTextValues : hasTextValues // ignore: cast_nullable_to_non_nullable
as bool?,hasSelectionValues: freezed == hasSelectionValues ? _self.hasSelectionValues : hasSelectionValues // ignore: cast_nullable_to_non_nullable
as bool?,selectionOptions: freezed == selectionOptions ? _self.selectionOptions : selectionOptions // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  int? categoryId,  String? description,  String? icon,  String? color,  bool isEnabled,  int sortOrder,  bool? requirePhoto,  int? maxPhotos,  bool? requireLocation,  String? locationAccuracy,  int? locationTimeout,  bool? hasTimer,  int? timerDuration,  bool? hasNotes,  bool? hasAttachments,  bool? hasAudioRecording,  int? maxAudioDuration,  bool? hasVideoRecording,  int? maxVideoDuration,  bool? showDuration,  bool? showStartTime,  bool? showEndTime,  bool? hasSubtasks,  bool? hasNumericValues,  bool? hasTextValues,  bool? hasSelectionValues,  String? selectionOptions,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordType() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.description,_that.icon,_that.color,_that.isEnabled,_that.sortOrder,_that.requirePhoto,_that.maxPhotos,_that.requireLocation,_that.locationAccuracy,_that.locationTimeout,_that.hasTimer,_that.timerDuration,_that.hasNotes,_that.hasAttachments,_that.hasAudioRecording,_that.maxAudioDuration,_that.hasVideoRecording,_that.maxVideoDuration,_that.showDuration,_that.showStartTime,_that.showEndTime,_that.hasSubtasks,_that.hasNumericValues,_that.hasTextValues,_that.hasSelectionValues,_that.selectionOptions,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  int? categoryId,  String? description,  String? icon,  String? color,  bool isEnabled,  int sortOrder,  bool? requirePhoto,  int? maxPhotos,  bool? requireLocation,  String? locationAccuracy,  int? locationTimeout,  bool? hasTimer,  int? timerDuration,  bool? hasNotes,  bool? hasAttachments,  bool? hasAudioRecording,  int? maxAudioDuration,  bool? hasVideoRecording,  int? maxVideoDuration,  bool? showDuration,  bool? showStartTime,  bool? showEndTime,  bool? hasSubtasks,  bool? hasNumericValues,  bool? hasTextValues,  bool? hasSelectionValues,  String? selectionOptions,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _RecordType():
return $default(_that.id,_that.name,_that.categoryId,_that.description,_that.icon,_that.color,_that.isEnabled,_that.sortOrder,_that.requirePhoto,_that.maxPhotos,_that.requireLocation,_that.locationAccuracy,_that.locationTimeout,_that.hasTimer,_that.timerDuration,_that.hasNotes,_that.hasAttachments,_that.hasAudioRecording,_that.maxAudioDuration,_that.hasVideoRecording,_that.maxVideoDuration,_that.showDuration,_that.showStartTime,_that.showEndTime,_that.hasSubtasks,_that.hasNumericValues,_that.hasTextValues,_that.hasSelectionValues,_that.selectionOptions,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  int? categoryId,  String? description,  String? icon,  String? color,  bool isEnabled,  int sortOrder,  bool? requirePhoto,  int? maxPhotos,  bool? requireLocation,  String? locationAccuracy,  int? locationTimeout,  bool? hasTimer,  int? timerDuration,  bool? hasNotes,  bool? hasAttachments,  bool? hasAudioRecording,  int? maxAudioDuration,  bool? hasVideoRecording,  int? maxVideoDuration,  bool? showDuration,  bool? showStartTime,  bool? showEndTime,  bool? hasSubtasks,  bool? hasNumericValues,  bool? hasTextValues,  bool? hasSelectionValues,  String? selectionOptions,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordType() when $default != null:
return $default(_that.id,_that.name,_that.categoryId,_that.description,_that.icon,_that.color,_that.isEnabled,_that.sortOrder,_that.requirePhoto,_that.maxPhotos,_that.requireLocation,_that.locationAccuracy,_that.locationTimeout,_that.hasTimer,_that.timerDuration,_that.hasNotes,_that.hasAttachments,_that.hasAudioRecording,_that.maxAudioDuration,_that.hasVideoRecording,_that.maxVideoDuration,_that.showDuration,_that.showStartTime,_that.showEndTime,_that.hasSubtasks,_that.hasNumericValues,_that.hasTextValues,_that.hasSelectionValues,_that.selectionOptions,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordType implements RecordType {
  const _RecordType({this.id, required this.name, this.categoryId, this.description, this.icon, this.color, this.isEnabled = true, this.sortOrder = 0, this.requirePhoto = false, this.maxPhotos = 10, this.requireLocation = false, this.locationAccuracy = 'high', this.locationTimeout = 30000, this.hasTimer = false, this.timerDuration = 0, this.hasNotes = false, this.hasAttachments = false, this.hasAudioRecording = false, this.maxAudioDuration = 60000, this.hasVideoRecording = false, this.maxVideoDuration = 60000, this.showDuration = false, this.showStartTime = true, this.showEndTime = true, this.hasSubtasks = false, this.hasNumericValues = false, this.hasTextValues = false, this.hasSelectionValues = false, this.selectionOptions, this.createdAt, this.updatedAt = null});
  factory _RecordType.fromJson(Map<String, dynamic> json) => _$RecordTypeFromJson(json);

@override final  int? id;
@override final  String name;
@override final  int? categoryId;
@override final  String? description;
@override final  String? icon;
@override final  String? color;
@override@JsonKey() final  bool isEnabled;
@override@JsonKey() final  int sortOrder;
// 配置字段
@override@JsonKey() final  bool? requirePhoto;
@override@JsonKey() final  int? maxPhotos;
@override@JsonKey() final  bool? requireLocation;
@override@JsonKey() final  String? locationAccuracy;
@override@JsonKey() final  int? locationTimeout;
@override@JsonKey() final  bool? hasTimer;
@override@JsonKey() final  int? timerDuration;
@override@JsonKey() final  bool? hasNotes;
@override@JsonKey() final  bool? hasAttachments;
@override@JsonKey() final  bool? hasAudioRecording;
@override@JsonKey() final  int? maxAudioDuration;
@override@JsonKey() final  bool? hasVideoRecording;
@override@JsonKey() final  int? maxVideoDuration;
@override@JsonKey() final  bool? showDuration;
@override@JsonKey() final  bool? showStartTime;
@override@JsonKey() final  bool? showEndTime;
@override@JsonKey() final  bool? hasSubtasks;
@override@JsonKey() final  bool? hasNumericValues;
@override@JsonKey() final  bool? hasTextValues;
@override@JsonKey() final  bool? hasSelectionValues;
@override final  String? selectionOptions;
@override final  DateTime? createdAt;
@override@JsonKey() final  DateTime? updatedAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.color, color) || other.color == color)&&(identical(other.isEnabled, isEnabled) || other.isEnabled == isEnabled)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.requirePhoto, requirePhoto) || other.requirePhoto == requirePhoto)&&(identical(other.maxPhotos, maxPhotos) || other.maxPhotos == maxPhotos)&&(identical(other.requireLocation, requireLocation) || other.requireLocation == requireLocation)&&(identical(other.locationAccuracy, locationAccuracy) || other.locationAccuracy == locationAccuracy)&&(identical(other.locationTimeout, locationTimeout) || other.locationTimeout == locationTimeout)&&(identical(other.hasTimer, hasTimer) || other.hasTimer == hasTimer)&&(identical(other.timerDuration, timerDuration) || other.timerDuration == timerDuration)&&(identical(other.hasNotes, hasNotes) || other.hasNotes == hasNotes)&&(identical(other.hasAttachments, hasAttachments) || other.hasAttachments == hasAttachments)&&(identical(other.hasAudioRecording, hasAudioRecording) || other.hasAudioRecording == hasAudioRecording)&&(identical(other.maxAudioDuration, maxAudioDuration) || other.maxAudioDuration == maxAudioDuration)&&(identical(other.hasVideoRecording, hasVideoRecording) || other.hasVideoRecording == hasVideoRecording)&&(identical(other.maxVideoDuration, maxVideoDuration) || other.maxVideoDuration == maxVideoDuration)&&(identical(other.showDuration, showDuration) || other.showDuration == showDuration)&&(identical(other.showStartTime, showStartTime) || other.showStartTime == showStartTime)&&(identical(other.showEndTime, showEndTime) || other.showEndTime == showEndTime)&&(identical(other.hasSubtasks, hasSubtasks) || other.hasSubtasks == hasSubtasks)&&(identical(other.hasNumericValues, hasNumericValues) || other.hasNumericValues == hasNumericValues)&&(identical(other.hasTextValues, hasTextValues) || other.hasTextValues == hasTextValues)&&(identical(other.hasSelectionValues, hasSelectionValues) || other.hasSelectionValues == hasSelectionValues)&&(identical(other.selectionOptions, selectionOptions) || other.selectionOptions == selectionOptions)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,categoryId,description,icon,color,isEnabled,sortOrder,requirePhoto,maxPhotos,requireLocation,locationAccuracy,locationTimeout,hasTimer,timerDuration,hasNotes,hasAttachments,hasAudioRecording,maxAudioDuration,hasVideoRecording,maxVideoDuration,showDuration,showStartTime,showEndTime,hasSubtasks,hasNumericValues,hasTextValues,hasSelectionValues,selectionOptions,createdAt,updatedAt]);

@override
String toString() {
  return 'RecordType(id: $id, name: $name, categoryId: $categoryId, description: $description, icon: $icon, color: $color, isEnabled: $isEnabled, sortOrder: $sortOrder, requirePhoto: $requirePhoto, maxPhotos: $maxPhotos, requireLocation: $requireLocation, locationAccuracy: $locationAccuracy, locationTimeout: $locationTimeout, hasTimer: $hasTimer, timerDuration: $timerDuration, hasNotes: $hasNotes, hasAttachments: $hasAttachments, hasAudioRecording: $hasAudioRecording, maxAudioDuration: $maxAudioDuration, hasVideoRecording: $hasVideoRecording, maxVideoDuration: $maxVideoDuration, showDuration: $showDuration, showStartTime: $showStartTime, showEndTime: $showEndTime, hasSubtasks: $hasSubtasks, hasNumericValues: $hasNumericValues, hasTextValues: $hasTextValues, hasSelectionValues: $hasSelectionValues, selectionOptions: $selectionOptions, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecordTypeCopyWith<$Res> implements $RecordTypeCopyWith<$Res> {
  factory _$RecordTypeCopyWith(_RecordType value, $Res Function(_RecordType) _then) = __$RecordTypeCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, int? categoryId, String? description, String? icon, String? color, bool isEnabled, int sortOrder, bool? requirePhoto, int? maxPhotos, bool? requireLocation, String? locationAccuracy, int? locationTimeout, bool? hasTimer, int? timerDuration, bool? hasNotes, bool? hasAttachments, bool? hasAudioRecording, int? maxAudioDuration, bool? hasVideoRecording, int? maxVideoDuration, bool? showDuration, bool? showStartTime, bool? showEndTime, bool? hasSubtasks, bool? hasNumericValues, bool? hasTextValues, bool? hasSelectionValues, String? selectionOptions, DateTime? createdAt, DateTime? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? categoryId = freezed,Object? description = freezed,Object? icon = freezed,Object? color = freezed,Object? isEnabled = null,Object? sortOrder = null,Object? requirePhoto = freezed,Object? maxPhotos = freezed,Object? requireLocation = freezed,Object? locationAccuracy = freezed,Object? locationTimeout = freezed,Object? hasTimer = freezed,Object? timerDuration = freezed,Object? hasNotes = freezed,Object? hasAttachments = freezed,Object? hasAudioRecording = freezed,Object? maxAudioDuration = freezed,Object? hasVideoRecording = freezed,Object? maxVideoDuration = freezed,Object? showDuration = freezed,Object? showStartTime = freezed,Object? showEndTime = freezed,Object? hasSubtasks = freezed,Object? hasNumericValues = freezed,Object? hasTextValues = freezed,Object? hasSelectionValues = freezed,Object? selectionOptions = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_RecordType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,isEnabled: null == isEnabled ? _self.isEnabled : isEnabled // ignore: cast_nullable_to_non_nullable
as bool,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,requirePhoto: freezed == requirePhoto ? _self.requirePhoto : requirePhoto // ignore: cast_nullable_to_non_nullable
as bool?,maxPhotos: freezed == maxPhotos ? _self.maxPhotos : maxPhotos // ignore: cast_nullable_to_non_nullable
as int?,requireLocation: freezed == requireLocation ? _self.requireLocation : requireLocation // ignore: cast_nullable_to_non_nullable
as bool?,locationAccuracy: freezed == locationAccuracy ? _self.locationAccuracy : locationAccuracy // ignore: cast_nullable_to_non_nullable
as String?,locationTimeout: freezed == locationTimeout ? _self.locationTimeout : locationTimeout // ignore: cast_nullable_to_non_nullable
as int?,hasTimer: freezed == hasTimer ? _self.hasTimer : hasTimer // ignore: cast_nullable_to_non_nullable
as bool?,timerDuration: freezed == timerDuration ? _self.timerDuration : timerDuration // ignore: cast_nullable_to_non_nullable
as int?,hasNotes: freezed == hasNotes ? _self.hasNotes : hasNotes // ignore: cast_nullable_to_non_nullable
as bool?,hasAttachments: freezed == hasAttachments ? _self.hasAttachments : hasAttachments // ignore: cast_nullable_to_non_nullable
as bool?,hasAudioRecording: freezed == hasAudioRecording ? _self.hasAudioRecording : hasAudioRecording // ignore: cast_nullable_to_non_nullable
as bool?,maxAudioDuration: freezed == maxAudioDuration ? _self.maxAudioDuration : maxAudioDuration // ignore: cast_nullable_to_non_nullable
as int?,hasVideoRecording: freezed == hasVideoRecording ? _self.hasVideoRecording : hasVideoRecording // ignore: cast_nullable_to_non_nullable
as bool?,maxVideoDuration: freezed == maxVideoDuration ? _self.maxVideoDuration : maxVideoDuration // ignore: cast_nullable_to_non_nullable
as int?,showDuration: freezed == showDuration ? _self.showDuration : showDuration // ignore: cast_nullable_to_non_nullable
as bool?,showStartTime: freezed == showStartTime ? _self.showStartTime : showStartTime // ignore: cast_nullable_to_non_nullable
as bool?,showEndTime: freezed == showEndTime ? _self.showEndTime : showEndTime // ignore: cast_nullable_to_non_nullable
as bool?,hasSubtasks: freezed == hasSubtasks ? _self.hasSubtasks : hasSubtasks // ignore: cast_nullable_to_non_nullable
as bool?,hasNumericValues: freezed == hasNumericValues ? _self.hasNumericValues : hasNumericValues // ignore: cast_nullable_to_non_nullable
as bool?,hasTextValues: freezed == hasTextValues ? _self.hasTextValues : hasTextValues // ignore: cast_nullable_to_non_nullable
as bool?,hasSelectionValues: freezed == hasSelectionValues ? _self.hasSelectionValues : hasSelectionValues // ignore: cast_nullable_to_non_nullable
as bool?,selectionOptions: freezed == selectionOptions ? _self.selectionOptions : selectionOptions // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
