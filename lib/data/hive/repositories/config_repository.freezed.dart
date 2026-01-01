// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ConfigState {

 bool get isLoading; bool get isUpdating; AppConfig? get appConfig; UserPreferences? get userPreferences;
/// Create a copy of ConfigState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConfigStateCopyWith<ConfigState> get copyWith => _$ConfigStateCopyWithImpl<ConfigState>(this as ConfigState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConfigState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating)&&(identical(other.appConfig, appConfig) || other.appConfig == appConfig)&&(identical(other.userPreferences, userPreferences) || other.userPreferences == userPreferences));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isUpdating,appConfig,userPreferences);

@override
String toString() {
  return 'ConfigState(isLoading: $isLoading, isUpdating: $isUpdating, appConfig: $appConfig, userPreferences: $userPreferences)';
}


}

/// @nodoc
abstract mixin class $ConfigStateCopyWith<$Res>  {
  factory $ConfigStateCopyWith(ConfigState value, $Res Function(ConfigState) _then) = _$ConfigStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isUpdating, AppConfig? appConfig, UserPreferences? userPreferences
});




}
/// @nodoc
class _$ConfigStateCopyWithImpl<$Res>
    implements $ConfigStateCopyWith<$Res> {
  _$ConfigStateCopyWithImpl(this._self, this._then);

  final ConfigState _self;
  final $Res Function(ConfigState) _then;

/// Create a copy of ConfigState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isUpdating = null,Object? appConfig = freezed,Object? userPreferences = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,appConfig: freezed == appConfig ? _self.appConfig : appConfig // ignore: cast_nullable_to_non_nullable
as AppConfig?,userPreferences: freezed == userPreferences ? _self.userPreferences : userPreferences // ignore: cast_nullable_to_non_nullable
as UserPreferences?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConfigState].
extension ConfigStatePatterns on ConfigState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConfigState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConfigState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConfigState value)  $default,){
final _that = this;
switch (_that) {
case _ConfigState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConfigState value)?  $default,){
final _that = this;
switch (_that) {
case _ConfigState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isUpdating,  AppConfig? appConfig,  UserPreferences? userPreferences)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConfigState() when $default != null:
return $default(_that.isLoading,_that.isUpdating,_that.appConfig,_that.userPreferences);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isUpdating,  AppConfig? appConfig,  UserPreferences? userPreferences)  $default,) {final _that = this;
switch (_that) {
case _ConfigState():
return $default(_that.isLoading,_that.isUpdating,_that.appConfig,_that.userPreferences);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isUpdating,  AppConfig? appConfig,  UserPreferences? userPreferences)?  $default,) {final _that = this;
switch (_that) {
case _ConfigState() when $default != null:
return $default(_that.isLoading,_that.isUpdating,_that.appConfig,_that.userPreferences);case _:
  return null;

}
}

}

/// @nodoc


class _ConfigState implements ConfigState {
  const _ConfigState({this.isLoading = false, this.isUpdating = false, this.appConfig, this.userPreferences});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isUpdating;
@override final  AppConfig? appConfig;
@override final  UserPreferences? userPreferences;

/// Create a copy of ConfigState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConfigStateCopyWith<_ConfigState> get copyWith => __$ConfigStateCopyWithImpl<_ConfigState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConfigState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isUpdating, isUpdating) || other.isUpdating == isUpdating)&&(identical(other.appConfig, appConfig) || other.appConfig == appConfig)&&(identical(other.userPreferences, userPreferences) || other.userPreferences == userPreferences));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isUpdating,appConfig,userPreferences);

@override
String toString() {
  return 'ConfigState(isLoading: $isLoading, isUpdating: $isUpdating, appConfig: $appConfig, userPreferences: $userPreferences)';
}


}

/// @nodoc
abstract mixin class _$ConfigStateCopyWith<$Res> implements $ConfigStateCopyWith<$Res> {
  factory _$ConfigStateCopyWith(_ConfigState value, $Res Function(_ConfigState) _then) = __$ConfigStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isUpdating, AppConfig? appConfig, UserPreferences? userPreferences
});




}
/// @nodoc
class __$ConfigStateCopyWithImpl<$Res>
    implements _$ConfigStateCopyWith<$Res> {
  __$ConfigStateCopyWithImpl(this._self, this._then);

  final _ConfigState _self;
  final $Res Function(_ConfigState) _then;

/// Create a copy of ConfigState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isUpdating = null,Object? appConfig = freezed,Object? userPreferences = freezed,}) {
  return _then(_ConfigState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isUpdating: null == isUpdating ? _self.isUpdating : isUpdating // ignore: cast_nullable_to_non_nullable
as bool,appConfig: freezed == appConfig ? _self.appConfig : appConfig // ignore: cast_nullable_to_non_nullable
as AppConfig?,userPreferences: freezed == userPreferences ? _self.userPreferences : userPreferences // ignore: cast_nullable_to_non_nullable
as UserPreferences?,
  ));
}


}

// dart format on
