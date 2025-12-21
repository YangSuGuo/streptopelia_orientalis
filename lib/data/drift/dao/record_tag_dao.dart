import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_tag.dart';
import 'base_dao.dart';

part 'record_tag_dao.g.dart';

@DriftAccessor(tables: [RecordTags])
class RecordTagDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordTag> {
  RecordTagDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordTag entity) async {
    return into(recordTags).insert(RecordTagsCompanion.insert(
      recordId: entity.recordId,
      tagId: entity.tagId,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordTag entity) async {
    return update(recordTags).replace(RecordTagsCompanion(
      id: Value(entity.id!),
      recordId: Value(entity.recordId),
      tagId: Value(entity.tagId),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordTags)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordTag>> findAll() async {
    return select(recordTags).get().then((rows) => rows.map((row) => RecordTag(
      id: row.id,
      recordId: row.recordId,
      tagId: row.tagId,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordTag?> findById(int id) async {
    final result = await (select(recordTags)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordTag(
      id: result.id,
      recordId: result.recordId,
      tagId: result.tagId,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}