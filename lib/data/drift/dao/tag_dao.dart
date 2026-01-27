import 'package:drift/drift.dart';
import '../app_database.dart';
import '../entities/tag.dart';
import '../tables/tag.dart' as t;

part 'tag_dao.g.dart';

@DriftAccessor(tables: [t.Tag])
class TagDao extends DatabaseAccessor<AppDatabase> with _$TagDaoMixin {
  TagDao(AppDatabase db) : super(db);

  Future<List<Tag>> getAllTags() async {
    return await select(t.Tag).get();
  }

  Future<Tag?> getTagById(int id) async {
    return await (select(t.Tag)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> insertTag(Insertable<Tag> tag) async {
    return await into(t.Tag).insert(tag);
  }

  Future<void> updateTag(Tag tag) async {
    return await (update(t.Tag)..where((tbl) => tbl.id.equals(tag.id!))).write(tag);
  }

  Future<void> deleteTag(int id) async {
    await (delete(t.Tag)..where((tbl) => tbl.id.equals(id)));
  }

  Future<void> deleteAllTags() async {
    await delete(t.Tag).go();
  }
}