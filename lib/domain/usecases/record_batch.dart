import 'package:freezed_annotation/freezed_annotation.dart';

import '../entity/location_record.dart';
import '../entity/media_record.dart';
import '../entity/record_numeric_value.dart';
import '../entity/record_option_selection.dart';
import '../entity/record_step.dart';
import '../entity/records.dart';

part 'record_batch.freezed.dart';

@freezed
abstract class RecordBatch with _$RecordBatch {
  const factory RecordBatch({
    required Records record, // 记录
    LocationRecord? location, // 位置
    @Default([]) List<MediaRecord> mediaList, // 图片
    @Default([]) List<RecordNumericValue> numericValues, // 数值
    @Default([]) List<RecordOptionSelection> optionSelections, // 选项
    @Default([]) List<RecordStep> steps, // 步骤
    @Default([]) List<int> tagIds, // 标签
  }) = _RecordBatch;
}
