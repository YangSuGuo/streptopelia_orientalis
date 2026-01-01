// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TagConfig {

 int? get id; int get recordTypeId; String get tagName; String? get tagColor; bool get isPreset; DateTime? get createdAt;
/// Create a copy of TagConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TagConfigCopyWith<TagConfig> get copyWith => _$TagConfigCopyWithImpl<TagConfig>(this as TagConfig, _$identity);

  /// Serializes this TagConfig to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TagConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.tagColor, tagColor) || other.tagColor == tagColor)&&(identical(other.isPreset, isPreset) || other.isPreset == isPreset)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,tagName,tagColor,isPreset,createdAt);

@override
String toString() {
  return 'TagConfig(id: $id, recordTypeId: $recordTypeId, tagName: $tagName, tagColor: $tagColor, isPreset: $isPreset, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TagConfigCopyWith<$Res>  {
  factory $TagConfigCopyWith(TagConfig value, $Res Function(TagConfig) _then) = _$TagConfigCopyWithImpl;
@useResult
$Res call({
 int? id, int recordTypeId, String tagName, String? tagColor, bool isPreset, DateTime? createdAt
});




}
/// @nodoc
class _$TagConfigCopyWithImpl<$Res>
    implements $TagConfigCopyWith<$Res> {
  _$TagConfigCopyWithImpl(this._self, this._then);

  final TagConfig _self;
  final $Res Function(TagConfig) _then;

/// Create a copy of TagConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordTypeId = null,Object? tagName = null,Object? tagColor = freezed,Object? isPreset = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,tagColor: freezed == tagColor ? _self.tagColor : tagColor // ignore: cast_nullable_to_non_nullable
as String?,isPreset: null == isPreset ? _self.isPreset : isPreset // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TagConfig].
extension TagConfigPatterns on TagConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TagConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TagConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TagConfig value)  $default,){
final _that = this;
switch (_that) {
case _TagConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TagConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TagConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String tagName,  String? tagColor,  bool isPreset,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TagConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.tagName,_that.tagColor,_that.isPreset,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordTypeId,  String tagName,  String? tagColor,  bool isPreset,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _TagConfig():
return $default(_that.id,_that.recordTypeId,_that.tagName,_that.tagColor,_that.isPreset,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordTypeId,  String tagName,  String? tagColor,  bool isPreset,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TagConfig() when $default != null:
return $default(_that.id,_that.recordTypeId,_that.tagName,_that.tagColor,_that.isPreset,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TagConfig implements TagConfig {
  const _TagConfig({this.id, required this.recordTypeId, required this.tagName, this.tagColor, this.isPreset = false, this.createdAt});
  factory _TagConfig.fromJson(Map<String, dynamic> json) => _$TagConfigFromJson(json);

@override final  int? id;
@override final  int recordTypeId;
@override final  String tagName;
@override final  String? tagColor;
@override@JsonKey() final  bool isPreset;
@override final  DateTime? createdAt;

/// Create a copy of TagConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TagConfigCopyWith<_TagConfig> get copyWith => __$TagConfigCopyWithImpl<_TagConfig>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TagConfigToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TagConfig&&(identical(other.id, id) || other.id == id)&&(identical(other.recordTypeId, recordTypeId) || other.recordTypeId == recordTypeId)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.tagColor, tagColor) || other.tagColor == tagColor)&&(identical(other.isPreset, isPreset) || other.isPreset == isPreset)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordTypeId,tagName,tagColor,isPreset,createdAt);

@override
String toString() {
  return 'TagConfig(id: $id, recordTypeId: $recordTypeId, tagName: $tagName, tagColor: $tagColor, isPreset: $isPreset, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TagConfigCopyWith<$Res> implements $TagConfigCopyWith<$Res> {
  factory _$TagConfigCopyWith(_TagConfig value, $Res Function(_TagConfig) _then) = __$TagConfigCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordTypeId, String tagName, String? tagColor, bool isPreset, DateTime? createdAt
});




}
/// @nodoc
class __$TagConfigCopyWithImpl<$Res>
    implements _$TagConfigCopyWith<$Res> {
  __$TagConfigCopyWithImpl(this._self, this._then);

  final _TagConfig _self;
  final $Res Function(_TagConfig) _then;

/// Create a copy of TagConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordTypeId = null,Object? tagName = null,Object? tagColor = freezed,Object? isPreset = null,Object? createdAt = freezed,}) {
  return _then(_TagConfig(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordTypeId: null == recordTypeId ? _self.recordTypeId : recordTypeId // ignore: cast_nullable_to_non_nullable
as int,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,tagColor: freezed == tagColor ? _self.tagColor : tagColor // ignore: cast_nullable_to_non_nullable
as String?,isPreset: null == isPreset ? _self.isPreset : isPreset // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
