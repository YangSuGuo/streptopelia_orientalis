import 'package:hive_ce/hive.dart';

import '../entities/app_config.dart';

class AppConfigAdapter extends TypeAdapter<AppConfig> {
  @override
  final int typeId = 1;

  @override
  AppConfig read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()};
    return AppConfig(
      appName: fields[0] as String?,
      appVersion: fields[1] as String?,
      databaseVersion: fields[2] as int?,
      themeMode: fields[3] as String?,
      language: fields[4] as String?,
      enableBiometric: fields[5] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, AppConfig obj) {
    writer.writeByte(6);
    writer.writeByte(0);
    writer.write(obj.appName);
    writer.writeByte(1);
    writer.write(obj.appVersion);
    writer.writeByte(2);
    writer.write(obj.databaseVersion);
    writer.writeByte(3);
    writer.write(obj.themeMode);
    writer.writeByte(4);
    writer.write(obj.language);
    writer.writeByte(5);
    writer.write(obj.enableBiometric);
  }
}
