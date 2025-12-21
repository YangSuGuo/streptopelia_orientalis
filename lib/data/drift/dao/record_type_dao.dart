import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/record_type.dart';
import 'base_dao.dart';

part 'record_type_dao.g.dart';

@DriftAccessor(tables: [RecordTypes])
class RecordTypeDao extends DatabaseAccessor<AppDatabase> implements BaseDao<RecordType> {
  RecordTypeDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(RecordType entity) async {
    return into(recordTypes).insert(RecordTypesCompanion.insert(
      categoryId: entity.categoryId,
      name: entity.name,
      description: entity.description,
      color: entity.color,
      icon: entity.icon,
      sortOrder: entity.sortOrder,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(RecordType entity) async {
    return update(recordTypes).replace(RecordTypesCompanion(
      id: Value(entity.id!),
      categoryId: Value(entity.categoryId),
      name: Value(entity.name),
      description: Value(entity.description),
      color: Value(entity.color),
      icon: Value(entity.icon),
      sortOrder: Value(entity.sortOrder),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(recordTypes)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<RecordType>> findAll() async {
    return select(recordTypes).get().then((rows) => rows.map((row) => RecordType(
      id: row.id,
      categoryId: row.categoryId,
      name: row.name,
      description: row.description,
      color: row.color,
      icon: row.icon,
      sortOrder: row.sortOrder,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<RecordType?> findById(int id) async {
    final result = await (select(recordTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return RecordType(
      id: result.id,
      categoryId: result.categoryId,
      name: result.name,
      description: result.description,
      color: result.color,
      icon: result.icon,
      sortOrder: result.sortOrder,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}