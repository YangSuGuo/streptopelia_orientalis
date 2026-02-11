import 'package:hive_ce/hive.dart';

import '../entities/home_projects.dart';

class HomeProjectsAdapter extends TypeAdapter<HomeProjects> {
  @override
  final int typeId = 2;

  @override
  HomeProjects read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read()};
    return HomeProjects(
      categoryId: fields[0] as int?,
      showHiddenProjects: fields[1] as bool?,
      showArchivedProjects: fields[2] as bool?,
      sortByWeight: fields[3] as bool?,
      sortAscending: fields[4] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, HomeProjects obj) {
    writer.writeByte(5);
    writer.writeByte(0);
    writer.write(obj.categoryId);
    writer.writeByte(1);
    writer.write(obj.showHiddenProjects);
    writer.writeByte(2);
    writer.write(obj.showArchivedProjects);
    writer.writeByte(3);
    writer.write(obj.sortByWeight);
    writer.writeByte(4);
    writer.write(obj.sortAscending);
  }
}
