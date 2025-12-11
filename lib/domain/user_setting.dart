import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_setting.freezed.dart';
part 'user_setting.g.dart';

/// UserSetting 实体类 - 表示用户设置信息
@freezed
class UserSetting with _$UserSetting {
  const factory UserSetting({
    /// 用户设置表的主键ID
    int? id,

    /// 设置项的键名，唯一标识一个设置项
    required String settingKey,

    /// 设置项的值，存储具体的设置内容
    required String settingValue,

    /// 设置项的值类型，默认为'string'（string, number, boolean, json）
    @Default('string') String settingType,

    /// 记录创建时间
    DateTime? createdAt,

    /// 记录更新时间
    DateTime? updatedAt,
  }) = _UserSetting;

  factory UserSetting.fromJson(Map<String, dynamic> json) => _$UserSettingFromJson(json);
}