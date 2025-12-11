import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:streptopelia_orientalis/core/widgets/card/common_card.dart';
import 'package:streptopelia_orientalis/core/widgets/card/info.dart';
import 'package:streptopelia_orientalis/di/logger.dart';
import 'package:streptopelia_orientalis/domain/record_type.dart';
import 'package:streptopelia_orientalis/presentation/providers/record_type_stream_provider.dart';

import '../viewmodels/home_view_model.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 监听实时更新的RecordType流
    final recordTypesAsync = ref.watch(recordTypeStreamProvider);

    final state = ref.watch(homeViewModelProvider);
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CommonCard(
                type: CommonCardType.plain,
                info: Info(label: "记录类型", iconData: Icons.category),
                onPressed: () {},
                child: Container(height: 200),
              ),
            ),
          ),
        ),

        // 显示实时更新的RecordType列表
        SliverList.builder(
          itemCount: recordTypesAsync.when(
            data: (recordTypes) => recordTypes.length,
            loading: () => 0,
            error: (error, stack) => 0,
          ),
          itemBuilder: (context, index) {
            return recordTypesAsync.when(
              data: (recordTypes) {
                if (index >= recordTypes.length) return SizedBox.shrink();
                
                final recordType = recordTypes[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: CommonCard(
                    type: CommonCardType.plain,
                    info: Info(
                      label: recordType.name ?? '未命名',
                      iconData: recordType.icon != null 
                          ? IconData(int.tryParse(recordType.icon!) ?? 0, fontFamily: 'MaterialIcons') 
                          : Icons.category_outlined,
                    ),
                    onPressed: () {
                      AppLogs().i('Selected record type: ${recordType.name}');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            recordType.name ?? '未命名',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: recordType.color != null 
                                  ? Color(int.tryParse(recordType.color!) ?? 0xFF000000) 
                                  : Colors.black87,
                            ),
                          ),
                          if (recordType.description != null && recordType.description!.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                recordType.description!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          if (recordType.config != null)
                            Padding(
                              padding: EdgeInsets.only(top: 4),
                              child: Text(
                                '配置: ${recordType.config}',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blue[400],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              loading: () => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: CommonCard(
                  type: CommonCardType.plain,
                  info: Info(label: "加载中...", iconData: Icons.hourglass_empty),
                  onPressed: () {},
                  child: Container(height: 80),
                ),
              ),
              error: (error, stack) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: CommonCard(
                  type: CommonCardType.error,
                  info: Info(label: "加载错误", iconData: Icons.error),
                  onPressed: () {},
                  child: Container(
                    height: 80,
                    child: Center(
                      child: Text('错误: $error'),
                    ),
                  ),
                ),
              ),
            );
          }
        )
      ],
    );
  }
}
