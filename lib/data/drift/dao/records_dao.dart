import 'package:contribution_heatmap/contribution_heatmap.dart';
import 'package:drift/drift.dart';

import '../app_database.dart';
import '../entities/records.dart';

part 'records_dao.g.dart';

@DriftAccessor(tables: [Records])
class RecordsDao extends DatabaseAccessor<AppDatabase> with _$RecordsDaoMixin {
  RecordsDao(super.db);

  Future<List<Record>> getAllRecords() async {
    return await select(db.records).get();
  }

  Future<Record?> getRecordById(int id) async {
    return await (select(db.records)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertRecord(RecordsCompanion record) async {
    return await into(db.records).insert(record);
  }

  Future<void> updateRecord(RecordsCompanion record) async {
    await (update(db.records)
      ..where((tbl) => tbl.id.equals(record.id.value))).write(record);
  }

  Future<void> deleteRecord(int id) async {
    await (delete(db.records)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllRecords() async {
    await delete(db.records).go();
  }

  // 查询指定时间范围内的记录
  Future<List<Record>> getRecordsByUpdatedAtRange(DateTime start, DateTime end) async {
    return await (select(db.records)
      ..where((tbl) => tbl.updatedAt.isBetweenValues(start, end))
      ..orderBy([(tbl) => OrderingTerm(expression: tbl.updatedAt, mode: OrderingMode.desc)]))
        .get();
  }

  // 根据日期范围和项目ID查询每日记录数量
  Future<List<ContributionEntry>> getDailyRecordCounts(int projectId, DateTime start, DateTime end) async {
    final query = db.customSelect(
      'SELECT date(updated_at) as record_date, count(*) as daily_count '
          'FROM records '
          'WHERE date(updated_at) BETWEEN ? AND ? '
          'AND project_id = ? '
          'GROUP BY date(updated_at) '
          'ORDER BY record_date ASC',
      variables: [
        Variable.withDateTime(start),
        Variable.withDateTime(end),
        Variable.withInt(projectId)
      ],
      readsFrom: {db.records},
    );

    return query.map(
          (row) =>
          ContributionEntry(
            row.read<DateTime>('record_date'),
            row.read<int>('daily_count'),
          ),
    ).get();
  }
}
