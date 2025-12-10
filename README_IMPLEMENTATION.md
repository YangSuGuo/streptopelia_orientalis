# Flutter Riverpod 3.0 Stream流实时刷新watchedRecordTypes实现

## 概述

本项目演示了如何使用Flutter Riverpod 3.0实现Stream流的实时刷新功能，特别是针对`watchedRecordTypes`的实时更新。

## 实现细节

### 1. Providers实现 (使用@riverpod注解)

更新后的provider实现使用了Riverpod 3.0推荐的`@riverpod`注解宏：

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../data/drift/repositories/record_type_repository.dart'; // Use existing repository
import '../data/drift/entities/record_entity.dart'; // Use existing entity

part 'record_type_providers.freezed.dart';

// Use the existing repository provider
@riverpod
Stream<List<RecordTypeEntity>> watchedRecordTypes(Ref ref) {
  final repository = ref.watch(recordTypeRepositoryProvider);
  return repository.watchAllRecordTypes();
}

// Notifier for managing individual record type operations
@riverpod
class RecordTypeList extends _$RecordTypeList {
  @override
  Future<List<RecordTypeEntity>> build() async {
    final repository = ref.watch(recordTypeRepositoryProvider);
    return await repository.getAllRecordTypes();
  }

  Future<void> addRecordType(RecordTypeEntity recordType) async {
    final repository = ref.read(recordTypeRepositoryProvider);
    await repository.createRecordType(recordType);
    
    // Refresh the state
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.getAllRecordTypes());
  }

  Future<void> updateRecordType(int id, RecordTypeEntity recordType) async {
    final repository = ref.read(recordTypeRepositoryProvider);
    await repository.updateRecordType(id, recordType);
    
    // Refresh the state
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.getAllRecordTypes());
  }

  Future<void> deleteRecordType(int id) async {
    final repository = ref.read(recordTypeRepositoryProvider);
    await repository.deleteRecordType(id);
    
    // Refresh the state
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => repository.getAllRecordTypes());
  }
}

// Individual record type provider
final selectedRecordTypeProvider = StateProvider<int?>((ref) => null);

// Filtered record types provider
@riverpod
List<RecordTypeEntity> filteredRecordTypes(Ref ref) {
  final allRecordTypes = ref.watch(watchedRecordTypesProvider).value ?? [];
  final selectedId = ref.watch(selectedRecordTypeProvider);
  
  if (selectedId == null) {
    return allRecordTypes;
  }
  
  return allRecordTypes.where((type) => type.id == selectedId).toList();
}
```

### 2. UI组件实现

`RecordTypeListWidget`组件使用StreamProvider监听实时数据变化：

```dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/drift/entities/record_entity.dart'; // Use existing entity
import '../../providers/record_type_providers.dart';

class RecordTypeListWidget extends ConsumerWidget {
  const RecordTypeListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final watchedRecordTypesAsync = ref.watch(watchedRecordTypesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Real-time Record Types'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: watchedRecordTypesAsync.when(
        data: (recordTypes) {
          return RefreshIndicator(
            onRefresh: () async {
              // This would trigger a refresh from the repository
              // In a real app, this might fetch from the API again
            },
            child: ListView.builder(
              itemCount: recordTypes.length,
              itemBuilder: (context, index) {
                final recordType = recordTypes[index];
                return _buildRecordTypeCard(context, recordType, ref);
              },
            ),
          );
        },
        error: (error, stack) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.error,
                  size: 64,
                  color: Colors.red,
                ),
                const SizedBox(height: 16),
                Text('Error: $error'),
                ElevatedButton(
                  onPressed: () {
                    // Retry logic would go here
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        },
        loading: () {
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(height: 16),
                Text('Loading record types...'),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addRandomRecordType(ref),
        tooltip: 'Add Record Type',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildRecordTypeCard(BuildContext context, RecordTypeEntity recordType, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: recordType.color != null 
                ? Color(int.parse(recordType.color!.replaceFirst('#', '0xFF'))) 
                : Colors.grey,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              (recordType.name.isNotEmpty ? recordType.name[0] : 'R').toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: Text(recordType.name),
        subtitle: Text(
          'ID: ${recordType.id} | ${recordType.description ?? "No description"}',
          style: const TextStyle(fontSize: 12),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
                // For demo purposes, toggle something in the record
                final updatedRecordType = recordType.copyWith(
                  description: recordType.description == 'Updated' ? 'Original' : 'Updated'
                );
                if (recordType.id != null) {
                  ref.read(recordTypeListProvider.notifier).updateRecordType(recordType.id!, updatedRecordType);
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                if (recordType.id != null) {
                  ref.read(recordTypeListProvider.notifier).deleteRecordType(recordType.id!);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _addRandomRecordType(WidgetRef ref) {
    final newRecordType = RecordTypeEntity(
      name: 'New Type ${DateTime.now().second}',
      description: 'Auto-generated record type',
      color: _generateRandomColor(),
      icon: 'icon',
      config: {},
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    
    ref.read(recordTypeListProvider.notifier).addRecordType(newRecordType);
  }

  String _generateRandomColor() {
    final colors = [
      '#FF5733', '#33FF57', '#3357FF', '#F333FF', '#FF33A1',
      '#33FFF3', '#F3FF33', '#A833FF', '#FF8C33', '#33FF8C'
    ];
    return colors[DateTime.now().millisecond % colors.length];
  }
}
```

### 3. 生成代码

使用@riverpod注解宏需要生成代码。在项目根目录执行以下命令：

```bash
flutter pub get
flutter packages pub run build_runner build --delete-conflicting-outputs
```

或者使用监听模式：

```bash
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

## 核心特性

1. **实时数据流**：通过StreamProvider实现对数据库变更的实时监听
2. **@riverpod注解**：使用Riverpod 3.0推荐的注解宏简化代码
3. **响应式UI**：UI自动响应数据变化
4. **错误处理**：完善的错误处理和加载状态
5. **CRUD操作**：完整的增删改查功能

## 架构优势

- **类型安全**：完全类型安全的provider
- **性能优化**：Riverpod的依赖跟踪机制
- **代码简洁**：@riverpod注解宏减少样板代码
- **易于维护**：清晰的代码结构和职责分离

## 使用场景

- 实时数据更新
- 数据库变更监听
- 响应式UI设计
- 状态管理
- CRUD操作

## 总结

此实现展示了如何在Flutter项目中使用Riverpod 3.0的@riverpod注解宏来实现Stream流的实时刷新功能。通过结合Drift数据库的实时查询功能，我们创建了一个完全响应式的数据流，能够自动更新UI以反映数据库中的变化。