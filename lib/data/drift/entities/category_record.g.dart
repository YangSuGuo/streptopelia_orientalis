// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryRecord _$CategoryRecordFromJson(Map<String, dynamic> json) =>
    _CategoryRecord(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      recordId: (json['recordId'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$CategoryRecordToJson(_CategoryRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'categoryId': instance.categoryId,
      'recordId': instance.recordId,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
