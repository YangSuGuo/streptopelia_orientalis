import 'package:drift/drift.dart';
import '../app_database.dart';
import '../tables/tag.dart';

part 'tag_dao.g.dart';

@DriftAccessor(tables: [Tag])
class TagDao extends DatabaseAccessor<AppDatabase> with _$TagDaoMixin {
  TagDao(super.db);

  Future<int> insertTag(Insertable<Tag> tag) {
    return into(tag).insert(tag);
  }

  Future<List<Tag>> getAllTags() {
    return select(tag).get();
  }

  Future<Tag?> getTagById(int id) {
    return (select(tag)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
  }

  Future<int> updateTag(Tag entry) {
    return (update(tag)..where((tbl) => tbl.id.equals(entry.id))).write(entry);
  }

  Future<int> deleteTag(int id) {
    return (delete(tag)..where((tbl) => tbl.id.equals(id))).go();
  }
}