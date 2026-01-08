import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:streptopelia_orientalis/data/drift/entities/record_entity.dart';
// import 'package:streptopelia_orientalis/data/drift/repositories/record_type_repository.dart';
import 'package:streptopelia_orientalis/di/logger.dart';

import 'home_state.dart';

part 'home_view_model.g.dart';

@riverpod
class HomeViewModel extends _$HomeViewModel {
  @override
  HomeState build() {
    initialize();
    return const HomeState();
  }

  /// 初始化数据并开始监听
  Future<void> initialize() async {
    await loadRecordTypes();
  }

  /// 加载记录类型列表
  Future<void> loadRecordTypes() async {
    try {
      // final recordTypeRepository = ref.read(recordTypeRepositoryProvider);
      // final recordTypes = await recordTypeRepository.getAllRecordTypes();
      // state = state.copyWith(
      //   recordTypeEntity: recordTypes,
      //   recordCount: recordTypes.length,
      // );
    } catch (e) {
      AppLogs().e('加载记录类型失败: $e');
    }
  }

  /// 更新底部导航栏索引
  void updateCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  /// 更新记录类型列表
  // void updateRecordTypes(List<RecordTypeEntity> recordTypes) {
  //   state = state.copyWith(
  //     recordTypeEntity: recordTypes,
  //     recordCount: recordTypes.length,
  //   );
  // }
}