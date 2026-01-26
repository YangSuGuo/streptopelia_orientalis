import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/records.dart';

part 'records_dao.g.dart';

@DriftAccessor(tables: [RecordsTable])
class RecordsDao extends DatabaseAccessor<AppDatabase> with _$RecordsDaoMixin {
  RecordsDao(AppDatabase db) : super(db);

  Future<List<Records>> getAllRecords() async {
    final records = await select(recordsTable).get();
    return records.map((r) => Records(
      id: r.id,
      projectId: r.projectId,
      title: r.title,
      content: r.content,
      stepIndex: r.stepIndex,
      isArchived: r.isArchived,
      isHidden: r.isHidden,
      updatedAt: r.updatedAt,
      createdAt: r.createdAt,
    )).toList();
  }

  Future<Records?> getRecordById(int id) async {
    final record = await (select(recordsTable)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (record == null) return null;
    return Records(
      id: record.id,
      projectId: record.projectId,
      title: record.title,
      content: record.content,
      stepIndex: record.stepIndex,
      isArchived: record.isArchived,
      isHidden: record.isHidden,
      updatedAt: record.updatedAt,
      createdAt: record.createdAt,
    );
  }

  Future<int> insertRecord(Records record) async {
    return await into(recordsTable).insert(RecordsTableCompanion.insert(
      projectId: record.projectId,
      title: record.title,
      content: record.content,
      stepIndex: record.stepIndex,
      isArchived: record.isArchived,
      isHidden: record.isHidden,
      updatedAt: record.updatedAt,
      createdAt: record.createdAt,
    ));
  }

  Future<void> updateRecord(Records record) async {
    await (update(recordsTable)..where((tbl) => tbl.id.equals(record.id!))).write(
      RecordsTableCompanion(
        projectId: Value(record.projectId),
        title: Value(record.title),
        content: Value(record.content),
        stepIndex: Value(record.stepIndex),
        isArchived: Value(record.isArchived),
        isHidden: Value(record.isHidden),
        updatedAt: Value(record.updatedAt),
        createdAt: Value(record.createdAt),
      ),
    );
  }

  Future<void> deleteRecord(int id) async {
    await (delete(recordsTable)..where((tbl) => tbl.id.equals(id))).go();
  }
}