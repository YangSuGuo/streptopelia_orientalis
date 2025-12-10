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