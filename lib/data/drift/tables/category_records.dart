import 'package:drift/drift.dart';
import 'package:streptopelia_orientalis/data/drift/tables/categories.dart';
import 'package:streptopelia_orientalis/data/drift/tables/records.dart';

class CategoryRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get categoryId => integer().references(Categories, #id, onDelete: KeyAction.cascade)();
  IntColumn get recordId => integer().references(Records, #id, onDelete: KeyAction.cascade)();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  List<Set<Column>> get uniqueKeys => [
    {categoryId, recordId}
  ];
}