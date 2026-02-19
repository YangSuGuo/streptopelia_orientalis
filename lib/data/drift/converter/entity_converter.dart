import 'package:drift/drift.dart';

abstract class EntityConverter<T, D> {
  T toEntity(D data);

  Insertable<D> toCompanion(T entity);

  Insertable<D> createInsertCompanion(T entity);

  List<T> toEntityList(List<D> dataList) {
    return dataList.map(toEntity).toList();
  }
}
