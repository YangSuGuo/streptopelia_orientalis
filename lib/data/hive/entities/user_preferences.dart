import 'package:hive/hive.dart';

@HiveType(typeId: 2)
class UserPreferences extends HiveObject {
  /// 是否启用位置服务
  @HiveField(0)
  final bool enableLocation;

  /// 是否启用拍照验证
  @HiveField(1)
  final bool enablePhotoVerification;

  /// 工作开始时间（格式：HH:mm）
  @HiveField(2)
  final String workStartTime;

  /// 工作结束时间（格式：HH:mm）
  @HiveField(3)
  final String workEndTime;

  /// 休息时间范围（格式：HH:mm-HH:mm）
  @HiveField(4)
  final String breakTime;

  /// 是否启用通勤追踪
  @HiveField(5)
  final bool commuteTrackingEnabled;

  /// 是否启用隐私模式
  @HiveField(6)
  final bool privacyMode;

  /// 默认分类ID
  @HiveField(7)
  final String? defaultCategory;

  /// 拍照质量（1-100）
  @HiveField(8)
  final int photoQuality;

  /// 上班打卡是否需要拍照
  @HiveField(9)
  final bool attendanceRequirePhoto;

  /// 工作拍照是否需要位置信息
  @HiveField(10)
  final bool workPhotoRequireLocation;

  /// 是否启用隐私生活记录功能
  @HiveField(11)
  final bool privateLifeEnabled;

  /// 是否启用生产批次记录功能
  @HiveField(12)
  final bool productionBatchEnabled;

  /// 是否启用工资收入记录功能
  @HiveField(13)
  final bool salaryEnabled;

  /// 是否启用个人收入支出记录功能
  @HiveField(14)
  final bool incomeExpenseEnabled;

  /// 是否启用生活富文本笔记日记记录功能
  @HiveField(15)
  final bool diaryEnabled;

  /// 创建时间
  @HiveField(16)
  final DateTime createdAt;

  /// 更新时间
  @HiveField(17)
  final DateTime updatedAt;

  UserPreferences({
    this.enableLocation = false,
    this.enablePhotoVerification = false,
    this.workStartTime = '09:00',
    this.workEndTime = '18:00',
    this.breakTime = '12:00-13:00',
    this.commuteTrackingEnabled = false,
    this.privacyMode = false,
    this.defaultCategory,
    this.photoQuality = 80,
    this.attendanceRequirePhoto = false,
    this.workPhotoRequireLocation = false,
    this.privateLifeEnabled = true,
    this.productionBatchEnabled = true,
    this.salaryEnabled = true,
    this.incomeExpenseEnabled = true,
    this.diaryEnabled = true,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  UserPreferences copyWith({
    bool? enableLocation,
    bool? enablePhotoVerification,
    String? workStartTime,
    String? workEndTime,
    String? breakTime,
    bool? commuteTrackingEnabled,
    bool? privacyMode,
    String? defaultCategory,
    int? photoQuality,
    bool? attendanceRequirePhoto,
    bool? workPhotoRequireLocation,
    bool? privateLifeEnabled,
    bool? productionBatchEnabled,
    bool? salaryEnabled,
    bool? incomeExpenseEnabled,
    bool? diaryEnabled,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return UserPreferences(
      enableLocation: enableLocation ?? this.enableLocation,
      enablePhotoVerification: enablePhotoVerification ?? this.enablePhotoVerification,
      workStartTime: workStartTime ?? this.workStartTime,
      workEndTime: workEndTime ?? this.workEndTime,
      breakTime: breakTime ?? this.breakTime,
      commuteTrackingEnabled: commuteTrackingEnabled ?? this.commuteTrackingEnabled,
      privacyMode: privacyMode ?? this.privacyMode,
      defaultCategory: defaultCategory ?? this.defaultCategory,
      photoQuality: photoQuality ?? this.photoQuality,
      attendanceRequirePhoto: attendanceRequirePhoto ?? this.attendanceRequirePhoto,
      workPhotoRequireLocation: workPhotoRequireLocation ?? this.workPhotoRequireLocation,
      privateLifeEnabled: privateLifeEnabled ?? this.privateLifeEnabled,
      productionBatchEnabled: productionBatchEnabled ?? this.productionBatchEnabled,
      salaryEnabled: salaryEnabled ?? this.salaryEnabled,
      incomeExpenseEnabled: incomeExpenseEnabled ?? this.incomeExpenseEnabled,
      diaryEnabled: diaryEnabled ?? this.diaryEnabled,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}