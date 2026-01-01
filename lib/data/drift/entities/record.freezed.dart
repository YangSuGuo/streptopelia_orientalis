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

 int? get id; int get recordTypeId; String? get title; String? get content; DateTime? get startTime; DateTime? get endTime; int? get durationSeconds; String? get locationName; double? get latitude; double? get longitude; double? get accuracy; String get status; String? get tagsJson; String? get metadataJson; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCopyWith<Record> get copyWith => _$RecordCopyWithImpl<Record>(this as Record, _$identity);

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Record&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagsJson, tagsJson) || other.tagsJson == tagsJson)&&(identical(other.metadataJson, metadataJson) || other.metadataJson == metadataJson)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,title,content,startTime,endTime,durationSeconds,locationName,latitude,longitude,accuracy,status,tagsJson,metadataJson,createdAt,updatedAt);

@override
String toString() {
  return 'Record(id: $id, recordTypeId: $recordTypeId, title: $title, content: $content, startTime: $startTime, endTime: $endTime, durationSeconds: $durationSeconds, locationName: $locationName, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, status: $status, tagsJson: $tagsJson, metadataJson: $metadataJson, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $RecordCopyWith<$Res>  {
  factory $RecordCopyWith(Record value, $Res Function(Record) _then) = _$RecordCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, String? title, String? content, DateTime? startTime, DateTime? endTime, int? durationSeconds, String? locationName, double? latitude, double? longitude, double? accuracy, String status, String? tagsJson, String? metadataJson, DateTime? createdAt, DateTime? updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? title = freezed,Object? content = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? durationSeconds = freezed,Object? locationName = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? status = null,Object? tagsJson = freezed,Object? metadataJson = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,tagsJson: freezed == tagsJson ? _self.tagsJson : tagsJson // ignore: cast_nullable_to_non_nullable
as String?,metadataJson: freezed == metadataJson ? _self.metadataJson : metadataJson // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String? title,  String? content,  DateTime? startTime,  DateTime? endTime,  int? durationSeconds,  String? locationName,  double? latitude,  double? longitude,  double? accuracy,  String status,  String? tagsJson,  String? metadataJson,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Record() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.title,_that.content,_that.startTime,_that.endTime,_that.durationSeconds,_that.locationName,_that.latitude,_that.longitude,_that.accuracy,_that.status,_that.tagsJson,_that.metadataJson,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String? title,  String? content,  DateTime? startTime,  DateTime? endTime,  int? durationSeconds,  String? locationName,  double? latitude,  double? longitude,  double? accuracy,  String status,  String? tagsJson,  String? metadataJson,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Record():
return $default(_that.id,_that.recordTypeId,_that.title,_that.content,_that.startTime,_that.endTime,_that.durationSeconds,_that.locationName,_that.latitude,_that.longitude,_that.accuracy,_that.status,_that.tagsJson,_that.metadataJson,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  String? title,  String? content,  DateTime? startTime,  DateTime? endTime,  int? durationSeconds,  String? locationName,  double? latitude,  double? longitude,  double? accuracy,  String status,  String? tagsJson,  String? metadataJson,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Record() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.title,_that.content,_that.startTime,_that.endTime,_that.durationSeconds,_that.locationName,_that.latitude,_that.longitude,_that.accuracy,_that.status,_that.tagsJson,_that.metadataJson,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Record implements Record {
  const _Record({this.id, required this.recordTypeId, this.title, this.content, this.startTime, this.endTime, this.durationSeconds, this.locationName, this.latitude, this.longitude, this.accuracy, this.status = 'draft', this.tagsJson, this.metadataJson, this.createdAt, this.updatedAt = null});
  factory _Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override final  String? title;
@override final  String? content;
@override final  DateTime? startTime;
@override final  DateTime? endTime;
@override final  int? durationSeconds;
@override final  String? locationName;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;
@override@JsonKey() final  String status;
@override final  String? tagsJson;
@override final  String? metadataJson;
@override final  DateTime? createdAt;
@override@JsonKey() final  DateTime? updatedAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Record&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.content, content) || other.content == content)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.durationSeconds, durationSeconds) || other.durationSeconds == durationSeconds)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagsJson, tagsJson) || other.tagsJson == tagsJson)&&(identical(other.metadataJson, metadataJson) || other.metadataJson == metadataJson)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,title,content,startTime,endTime,durationSeconds,locationName,latitude,longitude,accuracy,status,tagsJson,metadataJson,createdAt,updatedAt);

@override
String toString() {
  return 'Record(id: $id, recordTypeId: $recordTypeId, title: $title, content: $content, startTime: $startTime, endTime: $endTime, durationSeconds: $durationSeconds, locationName: $locationName, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, status: $status, tagsJson: $tagsJson, metadataJson: $metadataJson, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$RecordCopyWith(_Record value, $Res Function(_Record) _then) = __$RecordCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, String? title, String? content, DateTime? startTime, DateTime? endTime, int? durationSeconds, String? locationName, double? latitude, double? longitude, double? accuracy, String status, String? tagsJson, String? metadataJson, DateTime? createdAt, DateTime? updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? title = freezed,Object? content = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? durationSeconds = freezed,Object? locationName = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? status = null,Object? tagsJson = freezed,Object? metadataJson = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Record(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,durationSeconds: freezed == durationSeconds ? _self.durationSeconds : durationSeconds // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,tagsJson: freezed == tagsJson ? _self.tagsJson : tagsJson // ignore: cast_nullable_to_non_nullable
as String?,metadataJson: freezed == metadataJson ? _self.metadataJson : metadataJson // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
