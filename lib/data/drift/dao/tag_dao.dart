import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/tag.dart';

part 'tag_dao.g.dart';

@DriftAccessor(tables: [Tag])
class TagDao extends DatabaseAccessor<AppDatabase> with _$TagDaoMixin {
  TagDao(super.db);

  Future<List<TagData>> getAllTags() async {
    return await select(db.tag).get();
  }

  Future<TagData?> getTagById(int id) async {
    return await (select(db.tag)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertTag(Insertable<TagData> tag) async {
    return await into(db.tag).insert(tag);
  }

  Future<void> updateTag(TagData tag) async {
    await (update(db.tag)..where((tbl) => tbl.id.equals(tag.id))).write(tag);
  }

  Future<void> deleteTag(int id) async {
    await (delete(db.tag)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future<void> deleteAllTags() async {
    await delete(db.tag).go();
  }
}