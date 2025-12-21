import 'package:drift/drift.dart';

class CategoryRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get categoryId => integer()();
  IntColumn get recordId => integer()();

  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();

  @override
  Set<Column> get primaryKey => {id};

  @override
  List<String> get uniqueKeys => [
    const CustomConstraint('UNIQUE(categoryId, recordId)')
  ];

  @override
  List<String> get customConstraints => [
    'FOREIGN KEY (categoryId) REFERENCES categories(id) ON DELETE CASCADE',
    'FOREIGN KEY (recordId) REFERENCES records(id) ON DELETE CASCADE'
  ];
}