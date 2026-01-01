// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordLocation {

 int? get id; int get recordId; double? get latitude; double? get longitude; String? get address; String? get locationName; double? get accuracy; double? get altitude; double? get speed; double? get heading; DateTime? get createdAt;
/// Create a copy of RecordLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordLocationCopyWith<RecordLocation> get copyWith => _$RecordLocationCopyWithImpl<RecordLocation>(this as RecordLocation, _$identity);

  /// Serializes this RecordLocation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,latitude,longitude,address,locationName,accuracy,altitude,speed,heading,createdAt);

@override
String toString() {
  return 'RecordLocation(id: $id, recordId: $recordId, latitude: $latitude, longitude: $longitude, address: $address, locationName: $locationName, accuracy: $accuracy, altitude: $altitude, speed: $speed, heading: $heading, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordLocationCopyWith<$Res>  {
  factory $RecordLocationCopyWith(RecordLocation value, $Res Function(RecordLocation) _then) = _$RecordLocationCopyWithImpl;
@useResult
$Res call({
 int? id, int recordId, double? latitude, double? longitude, String? address, String? locationName, double? accuracy, double? altitude, double? speed, double? heading, DateTime? createdAt
});




}
/// @nodoc
class _$RecordLocationCopyWithImpl<$Res>
    implements $RecordLocationCopyWith<$Res> {
  _$RecordLocationCopyWithImpl(this._self, this._then);

  final RecordLocation _self;
  final $Res Function(RecordLocation) _then;

/// Create a copy of RecordLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordId = null,Object? latitude = freezed,Object? longitude = freezed,Object? address = freezed,Object? locationName = freezed,Object? accuracy = freezed,Object? altitude = freezed,Object? speed = freezed,Object? heading = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,altitude: freezed == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordLocation].
extension RecordLocationPatterns on RecordLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordLocation value)  $default,){
final _that = this;
switch (_that) {
case _RecordLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordLocation value)?  $default,){
final _that = this;
switch (_that) {
case _RecordLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordId,  double? latitude,  double? longitude,  String? address,  String? locationName,  double? accuracy,  double? altitude,  double? speed,  double? heading,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordLocation() when $default != null:
return $default(_that.id,_that.recordId,_that.latitude,_that.longitude,_that.address,_that.locationName,_that.accuracy,_that.altitude,_that.speed,_that.heading,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordId,  double? latitude,  double? longitude,  String? address,  String? locationName,  double? accuracy,  double? altitude,  double? speed,  double? heading,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordLocation():
return $default(_that.id,_that.recordId,_that.latitude,_that.longitude,_that.address,_that.locationName,_that.accuracy,_that.altitude,_that.speed,_that.heading,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordId,  double? latitude,  double? longitude,  String? address,  String? locationName,  double? accuracy,  double? altitude,  double? speed,  double? heading,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordLocation() when $default != null:
return $default(_that.id,_that.recordId,_that.latitude,_that.longitude,_that.address,_that.locationName,_that.accuracy,_that.altitude,_that.speed,_that.heading,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordLocation implements RecordLocation {
  const _RecordLocation({this.id, required this.recordId, this.latitude, this.longitude, this.address, this.locationName, this.accuracy, this.altitude, this.speed, this.heading, this.createdAt});
  factory _RecordLocation.fromJson(Map<String, dynamic> json) => _$RecordLocationFromJson(json);

@override final  int? id;
@override final  int recordId;
@override final  double? latitude;
@override final  double? longitude;
@override final  String? address;
@override final  String? locationName;
@override final  double? accuracy;
@override final  double? altitude;
@override final  double? speed;
@override final  double? heading;
@override final  DateTime? createdAt;

/// Create a copy of RecordLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordLocationCopyWith<_RecordLocation> get copyWith => __$RecordLocationCopyWithImpl<_RecordLocation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordLocationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordLocation&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.address, address) || other.address == address)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.altitude, altitude) || other.altitude == altitude)&&(identical(other.speed, speed) || other.speed == speed)&&(identical(other.heading, heading) || other.heading == heading)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,latitude,longitude,address,locationName,accuracy,altitude,speed,heading,createdAt);

@override
String toString() {
  return 'RecordLocation(id: $id, recordId: $recordId, latitude: $latitude, longitude: $longitude, address: $address, locationName: $locationName, accuracy: $accuracy, altitude: $altitude, speed: $speed, heading: $heading, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordLocationCopyWith<$Res> implements $RecordLocationCopyWith<$Res> {
  factory _$RecordLocationCopyWith(_RecordLocation value, $Res Function(_RecordLocation) _then) = __$RecordLocationCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordId, double? latitude, double? longitude, String? address, String? locationName, double? accuracy, double? altitude, double? speed, double? heading, DateTime? createdAt
});




}
/// @nodoc
class __$RecordLocationCopyWithImpl<$Res>
    implements _$RecordLocationCopyWith<$Res> {
  __$RecordLocationCopyWithImpl(this._self, this._then);

  final _RecordLocation _self;
  final $Res Function(_RecordLocation) _then;

/// Create a copy of RecordLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordId = null,Object? latitude = freezed,Object? longitude = freezed,Object? address = freezed,Object? locationName = freezed,Object? accuracy = freezed,Object? altitude = freezed,Object? speed = freezed,Object? heading = freezed,Object? createdAt = freezed,}) {
  return _then(_RecordLocation(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,altitude: freezed == altitude ? _self.altitude : altitude // ignore: cast_nullable_to_non_nullable
as double?,speed: freezed == speed ? _self.speed : speed // ignore: cast_nullable_to_non_nullable
as double?,heading: freezed == heading ? _self.heading : heading // ignore: cast_nullable_to_non_nullable
as double?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
