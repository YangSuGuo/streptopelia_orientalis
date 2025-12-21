import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record.dart';
import 'base_dao.dart';

part 'record_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordDao extends DatabaseAccessor<AppDatabase> implements BaseDao<Record> {
  RecordDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(Record entity) async {
    return into(records).insert(RecordsCompanion.insert(
      recordTypeId: entity.recordTypeId,
      title: entity.title,
      content: entity.content,
      startTime: entity.startTime,
      endTime: entity.endTime,
      durationSeconds: entity.durationSeconds,
      locationName: entity.locationName,
      latitude: entity.latitude,
      longitude: entity.longitude,
      accuracy: entity.accuracy,
      status: entity.status,
      tagsJson: entity.tagsJson,
      metadataJson: entity.metadataJson,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(Record entity) async {
    return update(records).replace(RecordsCompanion(
      id: Value(entity.id!),
      recordTypeId: Value(entity.recordTypeId),
      title: Value(entity.title),
      content: Value(entity.content),
      startTime: Value(entity.startTime),
      endTime: Value(entity.endTime),
      durationSeconds: Value(entity.durationSeconds),
      locationName: Value(entity.locationName),
      latitude: Value(entity.latitude),
      longitude: Value(entity.longitude),
      accuracy: Value(entity.accuracy),
      status: Value(entity.status),
      tagsJson: Value(entity.tagsJson),
      metadataJson: Value(entity.metadataJson),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(records)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<Record>> findAll() async {
    return select(records).get().then((rows) => rows.map((row) => Record(
      id: row.id,
      recordTypeId: row.recordTypeId,
      title: row.title,
      content: row.content,
      startTime: row.startTime,
      endTime: row.endTime,
      durationSeconds: row.durationSeconds,
      locationName: row.locationName,
      latitude: row.latitude,
      longitude: row.longitude,
      accuracy: row.accuracy,
      status: row.status,
      tagsJson: row.tagsJson,
      metadataJson: row.metadataJson,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<Record?> findById(int id) async {
    final result = await (select(records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return Record(
      id: result.id,
      recordTypeId: result.recordTypeId,
      title: result.title,
      content: result.content,
      startTime: result.startTime,
      endTime: result.endTime,
      durationSeconds: result.durationSeconds,
      locationName: result.locationName,
      latitude: result.latitude,
      longitude: result.longitude,
      accuracy: result.accuracy,
      status: result.status,
      tagsJson: result.tagsJson,
      metadataJson: result.metadataJson,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}