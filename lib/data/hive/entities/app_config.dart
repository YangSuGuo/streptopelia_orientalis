import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class AppConfig extends HiveObject {
  /// 应用主题模式 ('system', 'light', 'dark')
  @HiveField(0)
  final String themeMode;

  /// 应用语言 ('zh', 'en', 'ja' 等)
  @HiveField(1)
  final String language;

  /// 是否启用生物识别认证
  @HiveField(2)
  final bool enableBiometric;

  /// 是否启用通知
  @HiveField(3)
  final bool enableNotifications;

  /// 是否自动备份数据
  @HiveField(4)
  final bool autoBackup;

  /// 备份文件存储路径
  @HiveField(5)
  final String? backupPath;

  /// 应用版本号
  @HiveField(6)
  final String appVersion;

  /// 数据库版本号
  @HiveField(7)
  final int databaseVersion;

  /// 是否首次启动
  @HiveField(8)
  final bool isFirstLaunch;

  /// 最后更新时间
  @HiveField(9)
  final DateTime lastUpdate;

  /// 是否启用自动更新
  @HiveField(10)
  final bool enableAutoUpdate;

  /// 应用安装时间
  @HiveField(11)
  final DateTime installTime;

  /// 数据同步间隔（分钟）
  @HiveField(12)
  final int dataSyncInterval;

  /// 存储限制（MB）
  @HiveField(13)
  final int storageLimit;

  /// 导出格式（'json', 'csv', 'pdf' 等）
  @HiveField(14)
  final String exportFormat;

  /// 创建时间
  @HiveField(15)
  final DateTime createdAt;

  /// 更新时间
  @HiveField(16)
  final DateTime updatedAt;

  AppConfig({
    this.themeMode = 'system',
    this.language = 'zh',
    this.enableBiometric = false,
    this.enableNotifications = true,
    this.autoBackup = false,
    this.backupPath,
    this.appVersion = '1.0.0',
    this.databaseVersion = 1,
    this.isFirstLaunch = true,
    DateTime? lastUpdate,
    this.enableAutoUpdate = false,
    DateTime? installTime,
    this.dataSyncInterval = 30,
    this.storageLimit = 1000,
    this.exportFormat = 'json',
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : lastUpdate = lastUpdate ?? DateTime.now(),
        installTime = installTime ?? DateTime.now(),
        createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  AppConfig copyWith({
    String? themeMode,
    String? language,
    bool? enableBiometric,
    bool? enableNotifications,
    bool? autoBackup,
    String? backupPath,
    String? appVersion,
    int? databaseVersion,
    bool? isFirstLaunch,
    DateTime? lastUpdate,
    bool? enableAutoUpdate,
    DateTime? installTime,
    int? dataSyncInterval,
    int? storageLimit,
    String? exportFormat,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return AppConfig(
      themeMode: themeMode ?? this.themeMode,
      language: language ?? this.language,
      enableBiometric: enableBiometric ?? this.enableBiometric,
      enableNotifications: enableNotifications ?? this.enableNotifications,
      autoBackup: autoBackup ?? this.autoBackup,
      backupPath: backupPath ?? this.backupPath,
      appVersion: appVersion ?? this.appVersion,
      databaseVersion: databaseVersion ?? this.databaseVersion,
      isFirstLaunch: isFirstLaunch ?? this.isFirstLaunch,
      lastUpdate: lastUpdate ?? this.lastUpdate,
      enableAutoUpdate: enableAutoUpdate ?? this.enableAutoUpdate,
      installTime: installTime ?? this.installTime,
      dataSyncInterval: dataSyncInterval ?? this.dataSyncInterval,
      storageLimit: storageLimit ?? this.storageLimit,
      exportFormat: exportFormat ?? this.exportFormat,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}