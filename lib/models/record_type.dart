import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_type.freezed.dart';
part 'record_type.g.dart';

@freezed
class RecordType with _$RecordType {
  const factory RecordType({
    required String id,
    required String name,
    required String color,
    required bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RecordType;

  factory RecordType.fromJson(Map<String, dynamic> json) => _$RecordTypeFromJson(json);
}

extension RecordTypeX on RecordType {
  RecordType copyWith({
    String? id,
    String? name,
    String? color,
    bool? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return RecordType(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
      isActive: isActive ?? this.isActive,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

// Mock enum for demonstration purposes
enum RecordTypeCategory {
  income('Income'),
  expense('Expense');

  const RecordTypeCategory(this.label);
  final String label;
}