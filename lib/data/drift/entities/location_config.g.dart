// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationConfig _$LocationConfigFromJson(Map<String, dynamic> json) =>
    _LocationConfig(
      id: (json['id'] as num?)?.toInt(),
      recordTypeId: (json['recordTypeId'] as num).toInt(),
      requireLocation: json['requireLocation'] as bool? ?? false,
      locationAccuracy: json['locationAccuracy'] as String? ?? 'high',
      locationTimeout: (json['locationTimeout'] as num?)?.toInt() ?? 30000,
      showLocationDetails: json['showLocationDetails'] as bool? ?? true,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$LocationConfigToJson(_LocationConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordTypeId': instance.recordTypeId,
      'requireLocation': instance.requireLocation,
      'locationAccuracy': instance.locationAccuracy,
      'locationTimeout': instance.locationTimeout,
      'showLocationDetails': instance.showLocationDetails,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
