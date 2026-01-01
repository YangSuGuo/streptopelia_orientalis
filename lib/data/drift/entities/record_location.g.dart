// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RecordLocation _$RecordLocationFromJson(Map<String, dynamic> json) =>
    _RecordLocation(
      id: (json['id'] as num?)?.toInt(),
      recordId: (json['recordId'] as num).toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      address: json['address'] as String?,
      locationName: json['locationName'] as String?,
      accuracy: (json['accuracy'] as num?)?.toDouble(),
      altitude: (json['altitude'] as num?)?.toDouble(),
      speed: (json['speed'] as num?)?.toDouble(),
      heading: (json['heading'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$RecordLocationToJson(_RecordLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'recordId': instance.recordId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'locationName': instance.locationName,
      'accuracy': instance.accuracy,
      'altitude': instance.altitude,
      'speed': instance.speed,
      'heading': instance.heading,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
