// import 'package:drift/drift.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// /// JSON 类型转换器，用于将 Map<String, dynamic> 转换为 String 存储
// class JsonTypeConverter implements TypeConverter<Map<String, dynamic>?, String> {
//   const JsonTypeConverter();
//
//   @override
//   Map<String, dynamic>? mapToDart(String? fromDb) {
//     if (fromDb == null || fromDb.isEmpty) return null;
//     try {
//       final decoded = driftJson.decode(fromDb);
//       if (decoded is Map<String, dynamic>) {
//         return decoded;
//       }
//       return null;
//     } catch (e) {
//       return null;
//     }
//   }
//
//   @override
//   String? mapToSql(Map<String, dynamic>? value) {
//     if (value == null) return null;
//     return driftJson.encode(value);
//   }
// }
//
// /// List<String> 类型转换器
// class ListStringTypeConverter implements TypeConverter<List<String>?, String> {
//   const ListStringTypeConverter();
//
//   @override
//   List<String>? mapToDart(String? fromDb) {
//     if (fromDb == null || fromDb.isEmpty) return null;
//     try {
//       final decoded = driftJson.decode(fromDb);
//       if (decoded is List) {
//         return decoded.cast<String>();
//       }
//       return null;
//     } catch (e) {
//       return null;
//     }
//   }
//
//   @override
//   String? mapToSql(List<String>? value) {
//     if (value == null) return null;
//     return driftJson.encode(value);
//   }
// }
