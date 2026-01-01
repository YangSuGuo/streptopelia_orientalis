// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationConfig {

 int? get id; int get recordTypeId; bool get requireLocation; String get locationAccuracy; int get locationTimeout; bool get showLocationDetails; DateTime? get createdAt;
/// Create a copy of LocationConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationConfigCopyWith<LocationConfig> get copyWith => _$LocationConfigCopyWithImpl<LocationConfig>(this as LocationConfig, _$identity);

  /// Serializes this LocationConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.requireLocation, requireLocation) || other.requireLocation == requireLocation)&&(identical(other.locationAccuracy, locationAccuracy) || other.locationAccuracy == locationAccuracy)&&(identical(other.locationTimeout, locationTimeout) || other.locationTimeout == locationTimeout)&&(identical(other.showLocationDetails, showLocationDetails) || other.showLocationDetails == showLocationDetails)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,requireLocation,locationAccuracy,locationTimeout,showLocationDetails,createdAt);

@override
String toString() {
  return 'LocationConfig(id: $id, recordTypeId: $recordTypeId, requireLocation: $requireLocation, locationAccuracy: $locationAccuracy, locationTimeout: $locationTimeout, showLocationDetails: $showLocationDetails, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $LocationConfigCopyWith<$Res>  {
  factory $LocationConfigCopyWith(LocationConfig value, $Res Function(LocationConfig) _then) = _$LocationConfigCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, bool requireLocation, String locationAccuracy, int locationTimeout, bool showLocationDetails, DateTime? createdAt
});




}
/// @nodoc
class _$LocationConfigCopyWithImpl<$Res>
    implements $LocationConfigCopyWith<$Res> {
  _$LocationConfigCopyWithImpl(this._self, this._then);

  final LocationConfig _self;
  final $Res Function(LocationConfig) _then;

/// Create a copy of LocationConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? requireLocation = null,Object? locationAccuracy = null,Object? locationTimeout = null,Object? showLocationDetails = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,requireLocation: null == requireLocation ? _self.requireLocation : requireLocation // ignore: cast_nullable_to_non_nullable
as bool,locationAccuracy: null == locationAccuracy ? _self.locationAccuracy : locationAccuracy // ignore: cast_nullable_to_non_nullable
as String,locationTimeout: null == locationTimeout ? _self.locationTimeout : locationTimeout // ignore: cast_nullable_to_non_nullable
as int,showLocationDetails: null == showLocationDetails ? _self.showLocationDetails : showLocationDetails // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationConfig].
extension LocationConfigPatterns on LocationConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationConfig value)  $default,){
final _that = this;
switch (_that) {
case _LocationConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationConfig value)?  $default,){
final _that = this;
switch (_that) {
case _LocationConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  bool requireLocation,  String locationAccuracy,  int locationTimeout,  bool showLocationDetails,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.requireLocation,_that.locationAccuracy,_that.locationTimeout,_that.showLocationDetails,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  bool requireLocation,  String locationAccuracy,  int locationTimeout,  bool showLocationDetails,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _LocationConfig():
return $default(_that.id,_that.recordTypeId,_that.requireLocation,_that.locationAccuracy,_that.locationTimeout,_that.showLocationDetails,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  bool requireLocation,  String locationAccuracy,  int locationTimeout,  bool showLocationDetails,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _LocationConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.requireLocation,_that.locationAccuracy,_that.locationTimeout,_that.showLocationDetails,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationConfig implements LocationConfig {
  const _LocationConfig({this.id, required this.recordTypeId, this.requireLocation = false, this.locationAccuracy = 'high', this.locationTimeout = 30000, this.showLocationDetails = true, this.createdAt});
  factory _LocationConfig.fromJson(Map<String, dynamic> json) => _$LocationConfigFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override@JsonKey() final  bool requireLocation;
@override@JsonKey() final  String locationAccuracy;
@override@JsonKey() final  int locationTimeout;
@override@JsonKey() final  bool showLocationDetails;
@override final  DateTime? createdAt;

/// Create a copy of LocationConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationConfigCopyWith<_LocationConfig> get copyWith => __$LocationConfigCopyWithImpl<_LocationConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.requireLocation, requireLocation) || other.requireLocation == requireLocation)&&(identical(other.locationAccuracy, locationAccuracy) || other.locationAccuracy == locationAccuracy)&&(identical(other.locationTimeout, locationTimeout) || other.locationTimeout == locationTimeout)&&(identical(other.showLocationDetails, showLocationDetails) || other.showLocationDetails == showLocationDetails)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,requireLocation,locationAccuracy,locationTimeout,showLocationDetails,createdAt);

@override
String toString() {
  return 'LocationConfig(id: $id, recordTypeId: $recordTypeId, requireLocation: $requireLocation, locationAccuracy: $locationAccuracy, locationTimeout: $locationTimeout, showLocationDetails: $showLocationDetails, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$LocationConfigCopyWith<$Res> implements $LocationConfigCopyWith<$Res> {
  factory _$LocationConfigCopyWith(_LocationConfig value, $Res Function(_LocationConfig) _then) = __$LocationConfigCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, bool requireLocation, String locationAccuracy, int locationTimeout, bool showLocationDetails, DateTime? createdAt
});




}
/// @nodoc
class __$LocationConfigCopyWithImpl<$Res>
    implements _$LocationConfigCopyWith<$Res> {
  __$LocationConfigCopyWithImpl(this._self, this._then);

  final _LocationConfig _self;
  final $Res Function(_LocationConfig) _then;

/// Create a copy of LocationConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? requireLocation = null,Object? locationAccuracy = null,Object? locationTimeout = null,Object? showLocationDetails = null,Object? createdAt = freezed,}) {
  return _then(_LocationConfig(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,requireLocation: null == requireLocation ? _self.requireLocation : requireLocation // ignore: cast_nullable_to_non_nullable
as bool,locationAccuracy: null == locationAccuracy ? _self.locationAccuracy : locationAccuracy // ignore: cast_nullable_to_non_nullable
as String,locationTimeout: null == locationTimeout ? _self.locationTimeout : locationTimeout // ignore: cast_nullable_to_non_nullable
as int,showLocationDetails: null == showLocationDetails ? _self.showLocationDetails : showLocationDetails // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
