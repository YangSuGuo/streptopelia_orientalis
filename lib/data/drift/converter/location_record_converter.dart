import 'package:drift/drift.dart';

import '../../../domain/entitie/location_record.dart';
import '../app_database.dart';
import 'entity_converter.dart';

class LocationRecordConverter extends EntityConverter<LocationRecord, LocationRecordData> {
  @override
  LocationRecord toEntity(LocationRecordData data) {
    return LocationRecord(
      id: data.id,
      projectId: data.projectId,
      recordId: data.recordId,
      locationName: data.locationName,
      accuracy: data.accuracy,
      longitude: data.longitude,
      latitude: data.latitude,
      createdAt: data.createdAt,
    );
  }

  @override
  LocationRecordCompanion toCompanion(LocationRecord entity) {
    return LocationRecordCompanion(
      id: entity.id != null ? Value(entity.id!) : const Value.absent(),
      projectId: Value(entity.projectId),
      recordId: Value(entity.recordId),
      locationName: Value(entity.locationName),
      accuracy: Value(entity.accuracy),
      longitude: Value(entity.longitude),
      latitude: Value(entity.latitude),
      createdAt: Value(entity.createdAt),
    );
  }

  @override
  LocationRecordCompanion createInsertCompanion(LocationRecord entity) {
    return LocationRecordCompanion.insert(
      projectId: entity.projectId,
      recordId: entity.recordId,
      locationName: entity.locationName,
      accuracy: entity.accuracy,
      longitude: entity.longitude,
      latitude: entity.latitude,
      createdAt: entity.createdAt,
    );
  }
}
