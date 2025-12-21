import 'package:drift/drift.dart';
import '../app_database.dart';
import '../../entities/tag_config.dart';
import 'base_dao.dart';

part 'tag_config_dao.g.dart';

@DriftAccessor(tables: [TagConfigs])
class TagConfigDao extends DatabaseAccessor<AppDatabase> implements BaseDao<TagConfig> {
  TagConfigDao(super.db);

  @override
  DatabaseConnection get connection => attachedDatabase;

  @override
  Future<int> insert(TagConfig entity) async {
    return into(tagConfigs).insert(TagConfigsCompanion.insert(
      tagId: entity.tagId,
      configKey: entity.configKey,
      configValue: entity.configValue,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    ));
  }

  @override
  Future<int> update(TagConfig entity) async {
    return update(tagConfigs).replace(TagConfigsCompanion(
      id: Value(entity.id!),
      tagId: Value(entity.tagId),
      configKey: Value(entity.configKey),
      configValue: Value(entity.configValue),
      createdAt: Value(entity.createdAt!),
      updatedAt: Value(entity.updatedAt),
    ));
  }

  @override
  Future<int> delete(int id) async {
    return (delete(tagConfigs)..where((tbl) => tbl.id.equals(id))).go();
  }

  @override
  Future<List<TagConfig>> findAll() async {
    return select(tagConfigs).get().then((rows) => rows.map((row) => TagConfig(
      id: row.id,
      tagId: row.tagId,
      configKey: row.configKey,
      configValue: row.configValue,
      createdAt: row.createdAt,
      updatedAt: row.updatedAt,
    )).toList());
  }

  @override
  Future<TagConfig?> findById(int id) async {
    final result = await (select(tagConfigs)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
    if (result == null) return null;
    return TagConfig(
      id: result.id,
      tagId: result.tagId,
      configKey: result.configKey,
      configValue: result.configValue,
      createdAt: result.createdAt,
      updatedAt: result.updatedAt,
    );
  }
}