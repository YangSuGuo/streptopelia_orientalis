// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecordTag {

 int? get id; int get recordId; String get tagName; String? get tagColor; DateTime? get createdAt;
/// Create a copy of RecordTag
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordTagCopyWith<RecordTag> get copyWith => _$RecordTagCopyWithImpl<RecordTag>(this as RecordTag, _$identity);

  /// Serializes this RecordTag to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordTag&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.tagColor, tagColor) || other.tagColor == tagColor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,tagName,tagColor,createdAt);

@override
String toString() {
  return 'RecordTag(id: $id, recordId: $recordId, tagName: $tagName, tagColor: $tagColor, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RecordTagCopyWith<$Res>  {
  factory $RecordTagCopyWith(RecordTag value, $Res Function(RecordTag) _then) = _$RecordTagCopyWithImpl;
@useResult
$Res call({
 int? id, int recordId, String tagName, String? tagColor, DateTime? createdAt
});




}
/// @nodoc
class _$RecordTagCopyWithImpl<$Res>
    implements $RecordTagCopyWith<$Res> {
  _$RecordTagCopyWithImpl(this._self, this._then);

  final RecordTag _self;
  final $Res Function(RecordTag) _then;

/// Create a copy of RecordTag
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? recordId = null,Object? tagName = null,Object? tagColor = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,tagColor: freezed == tagColor ? _self.tagColor : tagColor // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecordTag].
extension RecordTagPatterns on RecordTag {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecordTag value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecordTag() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecordTag value)  $default,){
final _that = this;
switch (_that) {
case _RecordTag():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecordTag value)?  $default,){
final _that = this;
switch (_that) {
case _RecordTag() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int recordId,  String tagName,  String? tagColor,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecordTag() when $default != null:
return $default(_that.id,_that.recordId,_that.tagName,_that.tagColor,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int recordId,  String tagName,  String? tagColor,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _RecordTag():
return $default(_that.id,_that.recordId,_that.tagName,_that.tagColor,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int recordId,  String tagName,  String? tagColor,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _RecordTag() when $default != null:
return $default(_that.id,_that.recordId,_that.tagName,_that.tagColor,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecordTag implements RecordTag {
  const _RecordTag({this.id, required this.recordId, required this.tagName, this.tagColor, this.createdAt});
  factory _RecordTag.fromJson(Map<String, dynamic> json) => _$RecordTagFromJson(json);

@override final  int? id;
@override final  int recordId;
@override final  String tagName;
@override final  String? tagColor;
@override final  DateTime? createdAt;

/// Create a copy of RecordTag
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordTagCopyWith<_RecordTag> get copyWith => __$RecordTagCopyWithImpl<_RecordTag>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordTagToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordTag&&(identical(other.id, id) || other.id == id)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.tagName, tagName) || other.tagName == tagName)&&(identical(other.tagColor, tagColor) || other.tagColor == tagColor)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,recordId,tagName,tagColor,createdAt);

@override
String toString() {
  return 'RecordTag(id: $id, recordId: $recordId, tagName: $tagName, tagColor: $tagColor, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RecordTagCopyWith<$Res> implements $RecordTagCopyWith<$Res> {
  factory _$RecordTagCopyWith(_RecordTag value, $Res Function(_RecordTag) _then) = __$RecordTagCopyWithImpl;
@override @useResult
$Res call({
 int? id, int recordId, String tagName, String? tagColor, DateTime? createdAt
});




}
/// @nodoc
class __$RecordTagCopyWithImpl<$Res>
    implements _$RecordTagCopyWith<$Res> {
  __$RecordTagCopyWithImpl(this._self, this._then);

  final _RecordTag _self;
  final $Res Function(_RecordTag) _then;

/// Create a copy of RecordTag
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? recordId = null,Object? tagName = null,Object? tagColor = freezed,Object? createdAt = freezed,}) {
  return _then(_RecordTag(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,recordId: null == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int,tagName: null == tagName ? _self.tagName : tagName // ignore: cast_nullable_to_non_nullable
as String,tagColor: freezed == tagColor ? _self.tagColor : tagColor // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
