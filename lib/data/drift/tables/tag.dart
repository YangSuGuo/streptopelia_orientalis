import 'package:drift/drift.dart';

class Tag extends Table {
  IntColumn get id => integer().autoIncrement()();
  
  TextColumn get title => text()();
  
  TextColumn get icon => text().nullable()();
  
  TextColumn get colorTheme => text().nullable()();
}