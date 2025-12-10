import 'dart:async';
import 'dart:math';
import '../models/record_type.dart';

abstract class RecordTypeRepository {
  Stream<List<RecordType>> watchRecordTypes();
  Future<void> addRecordType(RecordType recordType);
  Future<void> updateRecordType(RecordType recordType);
  Future<void> deleteRecordType(String id);
  Future<List<RecordType>> getAllRecordTypes();
}

class MockRecordTypeRepository implements RecordTypeRepository {
  final StreamController<List<RecordType>> _controller = 
      StreamController<List<RecordType>>.broadcast();
  
  List<RecordType> _recordTypes = [
    RecordType(
      id: '1',
      name: 'Salary',
      color: '#4CAF50',
      isActive: true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    RecordType(
      id: '2',
      name: 'Food',
      color: '#F44336',
      isActive: true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    RecordType(
      id: '3',
      name: 'Transport',
      color: '#2196F3',
      isActive: true,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];

  MockRecordTypeRepository() {
    // Simulate real-time updates by periodically adding new record types
    Timer.periodic(Duration(seconds: 10), (timer) {
      if (_recordTypes.length < 10) { // Limit to 10 for demo
        _recordTypes.add(
          RecordType(
            id: (DateTime.now().millisecondsSinceEpoch % 10000).toString(),
            name: 'Auto-Added ${_recordTypes.length + 1}',
            color: _generateRandomColor(),
            isActive: true,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
          ),
        );
        _controller.add(_recordTypes.toList());
      }
    });
  }

  @override
  Stream<List<RecordType>> watchRecordTypes() {
    return _controller.stream;
  }

  @override
  Future<void> addRecordType(RecordType recordType) async {
    _recordTypes.add(recordType);
    _controller.add(_recordTypes.toList());
  }

  @override
  Future<void> updateRecordType(RecordType recordType) async {
    final index = _recordTypes.indexWhere((element) => element.id == recordType.id);
    if (index != -1) {
      _recordTypes[index] = recordType;
      _controller.add(_recordTypes.toList());
    }
  }

  @override
  Future<void> deleteRecordType(String id) async {
    _recordTypes.removeWhere((element) => element.id == id);
    _controller.add(_recordTypes.toList());
  }

  @override
  Future<List<RecordType>> getAllRecordTypes() async {
    return _recordTypes.toList();
  }

  String _generateRandomColor() {
    final random = Random();
    final colors = [
      '#FF5733', '#33FF57', '#3357FF', '#F333FF', '#FF33A1',
      '#33FFF3', '#F3FF33', '#A833FF', '#FF8C33', '#33FF8C'
    ];
    return colors[random.nextInt(colors.length)];
  }

  void dispose() {
    _controller.close();
  }
}