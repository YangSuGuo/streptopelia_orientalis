// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    description,
    color,
    icon,
    sortOrder,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'categories';
  @override
  VerificationContext validateIntegrity(
    Insertable<Category> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Category(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      ),
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(attachedDatabase, alias);
  }
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String name;
  final String? description;
  final String? color;
  final String? icon;
  final int sortOrder;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const Category({
    required this.id,
    required this.name,
    this.description,
    this.color,
    this.icon,
    required this.sortOrder,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: Value(id),
      name: Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      color: color == null && nullToAbsent
          ? const Value.absent()
          : Value(color),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      sortOrder: Value(sortOrder),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Category.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String?>(json['description']),
      color: serializer.fromJson<String?>(json['color']),
      icon: serializer.fromJson<String?>(json['icon']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String?>(description),
      'color': serializer.toJson<String?>(color),
      'icon': serializer.toJson<String?>(icon),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  Category copyWith({
    int? id,
    String? name,
    Value<String?> description = const Value.absent(),
    Value<String?> color = const Value.absent(),
    Value<String?> icon = const Value.absent(),
    int? sortOrder,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => Category(
    id: id ?? this.id,
    name: name ?? this.name,
    description: description.present ? description.value : this.description,
    color: color.present ? color.value : this.color,
    icon: icon.present ? icon.value : this.icon,
    sortOrder: sortOrder ?? this.sortOrder,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  Category copyWithCompanion(CategoriesCompanion data) {
    return Category(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      description: data.description.present
          ? data.description.value
          : this.description,
      color: data.color.present ? data.color.value : this.color,
      icon: data.icon.present ? data.icon.value : this.icon,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    description,
    color,
    icon,
    sortOrder,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.name == this.name &&
          other.description == this.description &&
          other.color == this.color &&
          other.icon == this.icon &&
          other.sortOrder == this.sortOrder &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> name;
  final Value<String?> description;
  final Value<String?> color;
  final Value<String?> icon;
  final Value<int> sortOrder;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.description = const Value.absent(),
    this.color = const Value.absent(),
    this.icon = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Category> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? description,
    Expression<String>? color,
    Expression<String>? icon,
    Expression<int>? sortOrder,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (color != null) 'color': color,
      if (icon != null) 'icon': icon,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  CategoriesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String?>? description,
    Value<String?>? color,
    Value<String?>? icon,
    Value<int>? sortOrder,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
  }) {
    return CategoriesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      color: color ?? this.color,
      icon: icon ?? this.icon,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('color: $color, ')
          ..write('icon: $icon, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RecordTypesTable extends RecordTypes
    with TableInfo<$RecordTypesTable, RecordType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id) ON DELETE SET NULL',
    ),
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isEnabledMeta = const VerificationMeta(
    'isEnabled',
  );
  @override
  late final GeneratedColumn<bool> isEnabled = GeneratedColumn<bool>(
    'is_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _requirePhotoMeta = const VerificationMeta(
    'requirePhoto',
  );
  @override
  late final GeneratedColumn<bool> requirePhoto = GeneratedColumn<bool>(
    'require_photo',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("require_photo" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _maxPhotosMeta = const VerificationMeta(
    'maxPhotos',
  );
  @override
  late final GeneratedColumn<int> maxPhotos = GeneratedColumn<int>(
    'max_photos',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(10),
  );
  static const VerificationMeta _requireLocationMeta = const VerificationMeta(
    'requireLocation',
  );
  @override
  late final GeneratedColumn<bool> requireLocation = GeneratedColumn<bool>(
    'require_location',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("require_location" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _locationAccuracyMeta = const VerificationMeta(
    'locationAccuracy',
  );
  @override
  late final GeneratedColumn<String> locationAccuracy = GeneratedColumn<String>(
    'location_accuracy',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('high'),
  );
  static const VerificationMeta _locationTimeoutMeta = const VerificationMeta(
    'locationTimeout',
  );
  @override
  late final GeneratedColumn<int> locationTimeout = GeneratedColumn<int>(
    'location_timeout',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(30000),
  );
  static const VerificationMeta _hasTimerMeta = const VerificationMeta(
    'hasTimer',
  );
  @override
  late final GeneratedColumn<bool> hasTimer = GeneratedColumn<bool>(
    'has_timer',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_timer" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _timerDurationMeta = const VerificationMeta(
    'timerDuration',
  );
  @override
  late final GeneratedColumn<int> timerDuration = GeneratedColumn<int>(
    'timer_duration',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _hasNotesMeta = const VerificationMeta(
    'hasNotes',
  );
  @override
  late final GeneratedColumn<bool> hasNotes = GeneratedColumn<bool>(
    'has_notes',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_notes" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _hasAttachmentsMeta = const VerificationMeta(
    'hasAttachments',
  );
  @override
  late final GeneratedColumn<bool> hasAttachments = GeneratedColumn<bool>(
    'has_attachments',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_attachments" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _hasAudioRecordingMeta = const VerificationMeta(
    'hasAudioRecording',
  );
  @override
  late final GeneratedColumn<bool> hasAudioRecording = GeneratedColumn<bool>(
    'has_audio_recording',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_audio_recording" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _maxAudioDurationMeta = const VerificationMeta(
    'maxAudioDuration',
  );
  @override
  late final GeneratedColumn<int> maxAudioDuration = GeneratedColumn<int>(
    'max_audio_duration',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(60000),
  );
  static const VerificationMeta _hasVideoRecordingMeta = const VerificationMeta(
    'hasVideoRecording',
  );
  @override
  late final GeneratedColumn<bool> hasVideoRecording = GeneratedColumn<bool>(
    'has_video_recording',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_video_recording" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _maxVideoDurationMeta = const VerificationMeta(
    'maxVideoDuration',
  );
  @override
  late final GeneratedColumn<int> maxVideoDuration = GeneratedColumn<int>(
    'max_video_duration',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(60000),
  );
  static const VerificationMeta _showDurationMeta = const VerificationMeta(
    'showDuration',
  );
  @override
  late final GeneratedColumn<bool> showDuration = GeneratedColumn<bool>(
    'show_duration',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_duration" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _showStartTimeMeta = const VerificationMeta(
    'showStartTime',
  );
  @override
  late final GeneratedColumn<bool> showStartTime = GeneratedColumn<bool>(
    'show_start_time',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_start_time" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _showEndTimeMeta = const VerificationMeta(
    'showEndTime',
  );
  @override
  late final GeneratedColumn<bool> showEndTime = GeneratedColumn<bool>(
    'show_end_time',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_end_time" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _hasSubtasksMeta = const VerificationMeta(
    'hasSubtasks',
  );
  @override
  late final GeneratedColumn<bool> hasSubtasks = GeneratedColumn<bool>(
    'has_subtasks',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_subtasks" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _hasNumericValuesMeta = const VerificationMeta(
    'hasNumericValues',
  );
  @override
  late final GeneratedColumn<bool> hasNumericValues = GeneratedColumn<bool>(
    'has_numeric_values',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_numeric_values" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _hasTextValuesMeta = const VerificationMeta(
    'hasTextValues',
  );
  @override
  late final GeneratedColumn<bool> hasTextValues = GeneratedColumn<bool>(
    'has_text_values',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_text_values" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _hasSelectionValuesMeta =
      const VerificationMeta('hasSelectionValues');
  @override
  late final GeneratedColumn<bool> hasSelectionValues = GeneratedColumn<bool>(
    'has_selection_values',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("has_selection_values" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _selectionOptionsMeta = const VerificationMeta(
    'selectionOptions',
  );
  @override
  late final GeneratedColumn<String> selectionOptions = GeneratedColumn<String>(
    'selection_options',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    categoryId,
    description,
    icon,
    color,
    isEnabled,
    sortOrder,
    requirePhoto,
    maxPhotos,
    requireLocation,
    locationAccuracy,
    locationTimeout,
    hasTimer,
    timerDuration,
    hasNotes,
    hasAttachments,
    hasAudioRecording,
    maxAudioDuration,
    hasVideoRecording,
    maxVideoDuration,
    showDuration,
    showStartTime,
    showEndTime,
    hasSubtasks,
    hasNumericValues,
    hasTextValues,
    hasSelectionValues,
    selectionOptions,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_types';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordType> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    }
    if (data.containsKey('is_enabled')) {
      context.handle(
        _isEnabledMeta,
        isEnabled.isAcceptableOrUnknown(data['is_enabled']!, _isEnabledMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('require_photo')) {
      context.handle(
        _requirePhotoMeta,
        requirePhoto.isAcceptableOrUnknown(
          data['require_photo']!,
          _requirePhotoMeta,
        ),
      );
    }
    if (data.containsKey('max_photos')) {
      context.handle(
        _maxPhotosMeta,
        maxPhotos.isAcceptableOrUnknown(data['max_photos']!, _maxPhotosMeta),
      );
    }
    if (data.containsKey('require_location')) {
      context.handle(
        _requireLocationMeta,
        requireLocation.isAcceptableOrUnknown(
          data['require_location']!,
          _requireLocationMeta,
        ),
      );
    }
    if (data.containsKey('location_accuracy')) {
      context.handle(
        _locationAccuracyMeta,
        locationAccuracy.isAcceptableOrUnknown(
          data['location_accuracy']!,
          _locationAccuracyMeta,
        ),
      );
    }
    if (data.containsKey('location_timeout')) {
      context.handle(
        _locationTimeoutMeta,
        locationTimeout.isAcceptableOrUnknown(
          data['location_timeout']!,
          _locationTimeoutMeta,
        ),
      );
    }
    if (data.containsKey('has_timer')) {
      context.handle(
        _hasTimerMeta,
        hasTimer.isAcceptableOrUnknown(data['has_timer']!, _hasTimerMeta),
      );
    }
    if (data.containsKey('timer_duration')) {
      context.handle(
        _timerDurationMeta,
        timerDuration.isAcceptableOrUnknown(
          data['timer_duration']!,
          _timerDurationMeta,
        ),
      );
    }
    if (data.containsKey('has_notes')) {
      context.handle(
        _hasNotesMeta,
        hasNotes.isAcceptableOrUnknown(data['has_notes']!, _hasNotesMeta),
      );
    }
    if (data.containsKey('has_attachments')) {
      context.handle(
        _hasAttachmentsMeta,
        hasAttachments.isAcceptableOrUnknown(
          data['has_attachments']!,
          _hasAttachmentsMeta,
        ),
      );
    }
    if (data.containsKey('has_audio_recording')) {
      context.handle(
        _hasAudioRecordingMeta,
        hasAudioRecording.isAcceptableOrUnknown(
          data['has_audio_recording']!,
          _hasAudioRecordingMeta,
        ),
      );
    }
    if (data.containsKey('max_audio_duration')) {
      context.handle(
        _maxAudioDurationMeta,
        maxAudioDuration.isAcceptableOrUnknown(
          data['max_audio_duration']!,
          _maxAudioDurationMeta,
        ),
      );
    }
    if (data.containsKey('has_video_recording')) {
      context.handle(
        _hasVideoRecordingMeta,
        hasVideoRecording.isAcceptableOrUnknown(
          data['has_video_recording']!,
          _hasVideoRecordingMeta,
        ),
      );
    }
    if (data.containsKey('max_video_duration')) {
      context.handle(
        _maxVideoDurationMeta,
        maxVideoDuration.isAcceptableOrUnknown(
          data['max_video_duration']!,
          _maxVideoDurationMeta,
        ),
      );
    }
    if (data.containsKey('show_duration')) {
      context.handle(
        _showDurationMeta,
        showDuration.isAcceptableOrUnknown(
          data['show_duration']!,
          _showDurationMeta,
        ),
      );
    }
    if (data.containsKey('show_start_time')) {
      context.handle(
        _showStartTimeMeta,
        showStartTime.isAcceptableOrUnknown(
          data['show_start_time']!,
          _showStartTimeMeta,
        ),
      );
    }
    if (data.containsKey('show_end_time')) {
      context.handle(
        _showEndTimeMeta,
        showEndTime.isAcceptableOrUnknown(
          data['show_end_time']!,
          _showEndTimeMeta,
        ),
      );
    }
    if (data.containsKey('has_subtasks')) {
      context.handle(
        _hasSubtasksMeta,
        hasSubtasks.isAcceptableOrUnknown(
          data['has_subtasks']!,
          _hasSubtasksMeta,
        ),
      );
    }
    if (data.containsKey('has_numeric_values')) {
      context.handle(
        _hasNumericValuesMeta,
        hasNumericValues.isAcceptableOrUnknown(
          data['has_numeric_values']!,
          _hasNumericValuesMeta,
        ),
      );
    }
    if (data.containsKey('has_text_values')) {
      context.handle(
        _hasTextValuesMeta,
        hasTextValues.isAcceptableOrUnknown(
          data['has_text_values']!,
          _hasTextValuesMeta,
        ),
      );
    }
    if (data.containsKey('has_selection_values')) {
      context.handle(
        _hasSelectionValuesMeta,
        hasSelectionValues.isAcceptableOrUnknown(
          data['has_selection_values']!,
          _hasSelectionValuesMeta,
        ),
      );
    }
    if (data.containsKey('selection_options')) {
      context.handle(
        _selectionOptionsMeta,
        selectionOptions.isAcceptableOrUnknown(
          data['selection_options']!,
          _selectionOptionsMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordType(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      ),
      isEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_enabled'],
      )!,
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      requirePhoto: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}require_photo'],
      )!,
      maxPhotos: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_photos'],
      )!,
      requireLocation: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}require_location'],
      )!,
      locationAccuracy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_accuracy'],
      )!,
      locationTimeout: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}location_timeout'],
      )!,
      hasTimer: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_timer'],
      )!,
      timerDuration: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}timer_duration'],
      )!,
      hasNotes: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_notes'],
      )!,
      hasAttachments: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_attachments'],
      )!,
      hasAudioRecording: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_audio_recording'],
      )!,
      maxAudioDuration: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_audio_duration'],
      )!,
      hasVideoRecording: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_video_recording'],
      )!,
      maxVideoDuration: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_video_duration'],
      )!,
      showDuration: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_duration'],
      )!,
      showStartTime: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_start_time'],
      )!,
      showEndTime: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_end_time'],
      )!,
      hasSubtasks: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_subtasks'],
      )!,
      hasNumericValues: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_numeric_values'],
      )!,
      hasTextValues: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_text_values'],
      )!,
      hasSelectionValues: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}has_selection_values'],
      )!,
      selectionOptions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selection_options'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $RecordTypesTable createAlias(String alias) {
    return $RecordTypesTable(attachedDatabase, alias);
  }
}

class RecordType extends DataClass implements Insertable<RecordType> {
  final int id;
  final String name;
  final int? categoryId;
  final String? description;
  final String? icon;
  final String? color;
  final bool isEnabled;
  final int sortOrder;
  final bool requirePhoto;
  final int maxPhotos;
  final bool requireLocation;
  final String locationAccuracy;
  final int locationTimeout;
  final bool hasTimer;
  final int timerDuration;
  final bool hasNotes;
  final bool hasAttachments;
  final bool hasAudioRecording;
  final int maxAudioDuration;
  final bool hasVideoRecording;
  final int maxVideoDuration;
  final bool showDuration;
  final bool showStartTime;
  final bool showEndTime;
  final bool hasSubtasks;
  final bool hasNumericValues;
  final bool hasTextValues;
  final bool hasSelectionValues;
  final String? selectionOptions;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const RecordType({
    required this.id,
    required this.name,
    this.categoryId,
    this.description,
    this.icon,
    this.color,
    required this.isEnabled,
    required this.sortOrder,
    required this.requirePhoto,
    required this.maxPhotos,
    required this.requireLocation,
    required this.locationAccuracy,
    required this.locationTimeout,
    required this.hasTimer,
    required this.timerDuration,
    required this.hasNotes,
    required this.hasAttachments,
    required this.hasAudioRecording,
    required this.maxAudioDuration,
    required this.hasVideoRecording,
    required this.maxVideoDuration,
    required this.showDuration,
    required this.showStartTime,
    required this.showEndTime,
    required this.hasSubtasks,
    required this.hasNumericValues,
    required this.hasTextValues,
    required this.hasSelectionValues,
    this.selectionOptions,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || categoryId != null) {
      map['category_id'] = Variable<int>(categoryId);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    if (!nullToAbsent || color != null) {
      map['color'] = Variable<String>(color);
    }
    map['is_enabled'] = Variable<bool>(isEnabled);
    map['sort_order'] = Variable<int>(sortOrder);
    map['require_photo'] = Variable<bool>(requirePhoto);
    map['max_photos'] = Variable<int>(maxPhotos);
    map['require_location'] = Variable<bool>(requireLocation);
    map['location_accuracy'] = Variable<String>(locationAccuracy);
    map['location_timeout'] = Variable<int>(locationTimeout);
    map['has_timer'] = Variable<bool>(hasTimer);
    map['timer_duration'] = Variable<int>(timerDuration);
    map['has_notes'] = Variable<bool>(hasNotes);
    map['has_attachments'] = Variable<bool>(hasAttachments);
    map['has_audio_recording'] = Variable<bool>(hasAudioRecording);
    map['max_audio_duration'] = Variable<int>(maxAudioDuration);
    map['has_video_recording'] = Variable<bool>(hasVideoRecording);
    map['max_video_duration'] = Variable<int>(maxVideoDuration);
    map['show_duration'] = Variable<bool>(showDuration);
    map['show_start_time'] = Variable<bool>(showStartTime);
    map['show_end_time'] = Variable<bool>(showEndTime);
    map['has_subtasks'] = Variable<bool>(hasSubtasks);
    map['has_numeric_values'] = Variable<bool>(hasNumericValues);
    map['has_text_values'] = Variable<bool>(hasTextValues);
    map['has_selection_values'] = Variable<bool>(hasSelectionValues);
    if (!nullToAbsent || selectionOptions != null) {
      map['selection_options'] = Variable<String>(selectionOptions);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  RecordTypesCompanion toCompanion(bool nullToAbsent) {
    return RecordTypesCompanion(
      id: Value(id),
      name: Value(name),
      categoryId: categoryId == null && nullToAbsent
          ? const Value.absent()
          : Value(categoryId),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      color: color == null && nullToAbsent
          ? const Value.absent()
          : Value(color),
      isEnabled: Value(isEnabled),
      sortOrder: Value(sortOrder),
      requirePhoto: Value(requirePhoto),
      maxPhotos: Value(maxPhotos),
      requireLocation: Value(requireLocation),
      locationAccuracy: Value(locationAccuracy),
      locationTimeout: Value(locationTimeout),
      hasTimer: Value(hasTimer),
      timerDuration: Value(timerDuration),
      hasNotes: Value(hasNotes),
      hasAttachments: Value(hasAttachments),
      hasAudioRecording: Value(hasAudioRecording),
      maxAudioDuration: Value(maxAudioDuration),
      hasVideoRecording: Value(hasVideoRecording),
      maxVideoDuration: Value(maxVideoDuration),
      showDuration: Value(showDuration),
      showStartTime: Value(showStartTime),
      showEndTime: Value(showEndTime),
      hasSubtasks: Value(hasSubtasks),
      hasNumericValues: Value(hasNumericValues),
      hasTextValues: Value(hasTextValues),
      hasSelectionValues: Value(hasSelectionValues),
      selectionOptions: selectionOptions == null && nullToAbsent
          ? const Value.absent()
          : Value(selectionOptions),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory RecordType.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordType(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      categoryId: serializer.fromJson<int?>(json['categoryId']),
      description: serializer.fromJson<String?>(json['description']),
      icon: serializer.fromJson<String?>(json['icon']),
      color: serializer.fromJson<String?>(json['color']),
      isEnabled: serializer.fromJson<bool>(json['isEnabled']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      requirePhoto: serializer.fromJson<bool>(json['requirePhoto']),
      maxPhotos: serializer.fromJson<int>(json['maxPhotos']),
      requireLocation: serializer.fromJson<bool>(json['requireLocation']),
      locationAccuracy: serializer.fromJson<String>(json['locationAccuracy']),
      locationTimeout: serializer.fromJson<int>(json['locationTimeout']),
      hasTimer: serializer.fromJson<bool>(json['hasTimer']),
      timerDuration: serializer.fromJson<int>(json['timerDuration']),
      hasNotes: serializer.fromJson<bool>(json['hasNotes']),
      hasAttachments: serializer.fromJson<bool>(json['hasAttachments']),
      hasAudioRecording: serializer.fromJson<bool>(json['hasAudioRecording']),
      maxAudioDuration: serializer.fromJson<int>(json['maxAudioDuration']),
      hasVideoRecording: serializer.fromJson<bool>(json['hasVideoRecording']),
      maxVideoDuration: serializer.fromJson<int>(json['maxVideoDuration']),
      showDuration: serializer.fromJson<bool>(json['showDuration']),
      showStartTime: serializer.fromJson<bool>(json['showStartTime']),
      showEndTime: serializer.fromJson<bool>(json['showEndTime']),
      hasSubtasks: serializer.fromJson<bool>(json['hasSubtasks']),
      hasNumericValues: serializer.fromJson<bool>(json['hasNumericValues']),
      hasTextValues: serializer.fromJson<bool>(json['hasTextValues']),
      hasSelectionValues: serializer.fromJson<bool>(json['hasSelectionValues']),
      selectionOptions: serializer.fromJson<String?>(json['selectionOptions']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'categoryId': serializer.toJson<int?>(categoryId),
      'description': serializer.toJson<String?>(description),
      'icon': serializer.toJson<String?>(icon),
      'color': serializer.toJson<String?>(color),
      'isEnabled': serializer.toJson<bool>(isEnabled),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'requirePhoto': serializer.toJson<bool>(requirePhoto),
      'maxPhotos': serializer.toJson<int>(maxPhotos),
      'requireLocation': serializer.toJson<bool>(requireLocation),
      'locationAccuracy': serializer.toJson<String>(locationAccuracy),
      'locationTimeout': serializer.toJson<int>(locationTimeout),
      'hasTimer': serializer.toJson<bool>(hasTimer),
      'timerDuration': serializer.toJson<int>(timerDuration),
      'hasNotes': serializer.toJson<bool>(hasNotes),
      'hasAttachments': serializer.toJson<bool>(hasAttachments),
      'hasAudioRecording': serializer.toJson<bool>(hasAudioRecording),
      'maxAudioDuration': serializer.toJson<int>(maxAudioDuration),
      'hasVideoRecording': serializer.toJson<bool>(hasVideoRecording),
      'maxVideoDuration': serializer.toJson<int>(maxVideoDuration),
      'showDuration': serializer.toJson<bool>(showDuration),
      'showStartTime': serializer.toJson<bool>(showStartTime),
      'showEndTime': serializer.toJson<bool>(showEndTime),
      'hasSubtasks': serializer.toJson<bool>(hasSubtasks),
      'hasNumericValues': serializer.toJson<bool>(hasNumericValues),
      'hasTextValues': serializer.toJson<bool>(hasTextValues),
      'hasSelectionValues': serializer.toJson<bool>(hasSelectionValues),
      'selectionOptions': serializer.toJson<String?>(selectionOptions),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  RecordType copyWith({
    int? id,
    String? name,
    Value<int?> categoryId = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> icon = const Value.absent(),
    Value<String?> color = const Value.absent(),
    bool? isEnabled,
    int? sortOrder,
    bool? requirePhoto,
    int? maxPhotos,
    bool? requireLocation,
    String? locationAccuracy,
    int? locationTimeout,
    bool? hasTimer,
    int? timerDuration,
    bool? hasNotes,
    bool? hasAttachments,
    bool? hasAudioRecording,
    int? maxAudioDuration,
    bool? hasVideoRecording,
    int? maxVideoDuration,
    bool? showDuration,
    bool? showStartTime,
    bool? showEndTime,
    bool? hasSubtasks,
    bool? hasNumericValues,
    bool? hasTextValues,
    bool? hasSelectionValues,
    Value<String?> selectionOptions = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => RecordType(
    id: id ?? this.id,
    name: name ?? this.name,
    categoryId: categoryId.present ? categoryId.value : this.categoryId,
    description: description.present ? description.value : this.description,
    icon: icon.present ? icon.value : this.icon,
    color: color.present ? color.value : this.color,
    isEnabled: isEnabled ?? this.isEnabled,
    sortOrder: sortOrder ?? this.sortOrder,
    requirePhoto: requirePhoto ?? this.requirePhoto,
    maxPhotos: maxPhotos ?? this.maxPhotos,
    requireLocation: requireLocation ?? this.requireLocation,
    locationAccuracy: locationAccuracy ?? this.locationAccuracy,
    locationTimeout: locationTimeout ?? this.locationTimeout,
    hasTimer: hasTimer ?? this.hasTimer,
    timerDuration: timerDuration ?? this.timerDuration,
    hasNotes: hasNotes ?? this.hasNotes,
    hasAttachments: hasAttachments ?? this.hasAttachments,
    hasAudioRecording: hasAudioRecording ?? this.hasAudioRecording,
    maxAudioDuration: maxAudioDuration ?? this.maxAudioDuration,
    hasVideoRecording: hasVideoRecording ?? this.hasVideoRecording,
    maxVideoDuration: maxVideoDuration ?? this.maxVideoDuration,
    showDuration: showDuration ?? this.showDuration,
    showStartTime: showStartTime ?? this.showStartTime,
    showEndTime: showEndTime ?? this.showEndTime,
    hasSubtasks: hasSubtasks ?? this.hasSubtasks,
    hasNumericValues: hasNumericValues ?? this.hasNumericValues,
    hasTextValues: hasTextValues ?? this.hasTextValues,
    hasSelectionValues: hasSelectionValues ?? this.hasSelectionValues,
    selectionOptions: selectionOptions.present
        ? selectionOptions.value
        : this.selectionOptions,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  RecordType copyWithCompanion(RecordTypesCompanion data) {
    return RecordType(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      description: data.description.present
          ? data.description.value
          : this.description,
      icon: data.icon.present ? data.icon.value : this.icon,
      color: data.color.present ? data.color.value : this.color,
      isEnabled: data.isEnabled.present ? data.isEnabled.value : this.isEnabled,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      requirePhoto: data.requirePhoto.present
          ? data.requirePhoto.value
          : this.requirePhoto,
      maxPhotos: data.maxPhotos.present ? data.maxPhotos.value : this.maxPhotos,
      requireLocation: data.requireLocation.present
          ? data.requireLocation.value
          : this.requireLocation,
      locationAccuracy: data.locationAccuracy.present
          ? data.locationAccuracy.value
          : this.locationAccuracy,
      locationTimeout: data.locationTimeout.present
          ? data.locationTimeout.value
          : this.locationTimeout,
      hasTimer: data.hasTimer.present ? data.hasTimer.value : this.hasTimer,
      timerDuration: data.timerDuration.present
          ? data.timerDuration.value
          : this.timerDuration,
      hasNotes: data.hasNotes.present ? data.hasNotes.value : this.hasNotes,
      hasAttachments: data.hasAttachments.present
          ? data.hasAttachments.value
          : this.hasAttachments,
      hasAudioRecording: data.hasAudioRecording.present
          ? data.hasAudioRecording.value
          : this.hasAudioRecording,
      maxAudioDuration: data.maxAudioDuration.present
          ? data.maxAudioDuration.value
          : this.maxAudioDuration,
      hasVideoRecording: data.hasVideoRecording.present
          ? data.hasVideoRecording.value
          : this.hasVideoRecording,
      maxVideoDuration: data.maxVideoDuration.present
          ? data.maxVideoDuration.value
          : this.maxVideoDuration,
      showDuration: data.showDuration.present
          ? data.showDuration.value
          : this.showDuration,
      showStartTime: data.showStartTime.present
          ? data.showStartTime.value
          : this.showStartTime,
      showEndTime: data.showEndTime.present
          ? data.showEndTime.value
          : this.showEndTime,
      hasSubtasks: data.hasSubtasks.present
          ? data.hasSubtasks.value
          : this.hasSubtasks,
      hasNumericValues: data.hasNumericValues.present
          ? data.hasNumericValues.value
          : this.hasNumericValues,
      hasTextValues: data.hasTextValues.present
          ? data.hasTextValues.value
          : this.hasTextValues,
      hasSelectionValues: data.hasSelectionValues.present
          ? data.hasSelectionValues.value
          : this.hasSelectionValues,
      selectionOptions: data.selectionOptions.present
          ? data.selectionOptions.value
          : this.selectionOptions,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordType(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('categoryId: $categoryId, ')
          ..write('description: $description, ')
          ..write('icon: $icon, ')
          ..write('color: $color, ')
          ..write('isEnabled: $isEnabled, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('requirePhoto: $requirePhoto, ')
          ..write('maxPhotos: $maxPhotos, ')
          ..write('requireLocation: $requireLocation, ')
          ..write('locationAccuracy: $locationAccuracy, ')
          ..write('locationTimeout: $locationTimeout, ')
          ..write('hasTimer: $hasTimer, ')
          ..write('timerDuration: $timerDuration, ')
          ..write('hasNotes: $hasNotes, ')
          ..write('hasAttachments: $hasAttachments, ')
          ..write('hasAudioRecording: $hasAudioRecording, ')
          ..write('maxAudioDuration: $maxAudioDuration, ')
          ..write('hasVideoRecording: $hasVideoRecording, ')
          ..write('maxVideoDuration: $maxVideoDuration, ')
          ..write('showDuration: $showDuration, ')
          ..write('showStartTime: $showStartTime, ')
          ..write('showEndTime: $showEndTime, ')
          ..write('hasSubtasks: $hasSubtasks, ')
          ..write('hasNumericValues: $hasNumericValues, ')
          ..write('hasTextValues: $hasTextValues, ')
          ..write('hasSelectionValues: $hasSelectionValues, ')
          ..write('selectionOptions: $selectionOptions, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
    id,
    name,
    categoryId,
    description,
    icon,
    color,
    isEnabled,
    sortOrder,
    requirePhoto,
    maxPhotos,
    requireLocation,
    locationAccuracy,
    locationTimeout,
    hasTimer,
    timerDuration,
    hasNotes,
    hasAttachments,
    hasAudioRecording,
    maxAudioDuration,
    hasVideoRecording,
    maxVideoDuration,
    showDuration,
    showStartTime,
    showEndTime,
    hasSubtasks,
    hasNumericValues,
    hasTextValues,
    hasSelectionValues,
    selectionOptions,
    createdAt,
    updatedAt,
  ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordType &&
          other.id == this.id &&
          other.name == this.name &&
          other.categoryId == this.categoryId &&
          other.description == this.description &&
          other.icon == this.icon &&
          other.color == this.color &&
          other.isEnabled == this.isEnabled &&
          other.sortOrder == this.sortOrder &&
          other.requirePhoto == this.requirePhoto &&
          other.maxPhotos == this.maxPhotos &&
          other.requireLocation == this.requireLocation &&
          other.locationAccuracy == this.locationAccuracy &&
          other.locationTimeout == this.locationTimeout &&
          other.hasTimer == this.hasTimer &&
          other.timerDuration == this.timerDuration &&
          other.hasNotes == this.hasNotes &&
          other.hasAttachments == this.hasAttachments &&
          other.hasAudioRecording == this.hasAudioRecording &&
          other.maxAudioDuration == this.maxAudioDuration &&
          other.hasVideoRecording == this.hasVideoRecording &&
          other.maxVideoDuration == this.maxVideoDuration &&
          other.showDuration == this.showDuration &&
          other.showStartTime == this.showStartTime &&
          other.showEndTime == this.showEndTime &&
          other.hasSubtasks == this.hasSubtasks &&
          other.hasNumericValues == this.hasNumericValues &&
          other.hasTextValues == this.hasTextValues &&
          other.hasSelectionValues == this.hasSelectionValues &&
          other.selectionOptions == this.selectionOptions &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RecordTypesCompanion extends UpdateCompanion<RecordType> {
  final Value<int> id;
  final Value<String> name;
  final Value<int?> categoryId;
  final Value<String?> description;
  final Value<String?> icon;
  final Value<String?> color;
  final Value<bool> isEnabled;
  final Value<int> sortOrder;
  final Value<bool> requirePhoto;
  final Value<int> maxPhotos;
  final Value<bool> requireLocation;
  final Value<String> locationAccuracy;
  final Value<int> locationTimeout;
  final Value<bool> hasTimer;
  final Value<int> timerDuration;
  final Value<bool> hasNotes;
  final Value<bool> hasAttachments;
  final Value<bool> hasAudioRecording;
  final Value<int> maxAudioDuration;
  final Value<bool> hasVideoRecording;
  final Value<int> maxVideoDuration;
  final Value<bool> showDuration;
  final Value<bool> showStartTime;
  final Value<bool> showEndTime;
  final Value<bool> hasSubtasks;
  final Value<bool> hasNumericValues;
  final Value<bool> hasTextValues;
  final Value<bool> hasSelectionValues;
  final Value<String?> selectionOptions;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  const RecordTypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.description = const Value.absent(),
    this.icon = const Value.absent(),
    this.color = const Value.absent(),
    this.isEnabled = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.requirePhoto = const Value.absent(),
    this.maxPhotos = const Value.absent(),
    this.requireLocation = const Value.absent(),
    this.locationAccuracy = const Value.absent(),
    this.locationTimeout = const Value.absent(),
    this.hasTimer = const Value.absent(),
    this.timerDuration = const Value.absent(),
    this.hasNotes = const Value.absent(),
    this.hasAttachments = const Value.absent(),
    this.hasAudioRecording = const Value.absent(),
    this.maxAudioDuration = const Value.absent(),
    this.hasVideoRecording = const Value.absent(),
    this.maxVideoDuration = const Value.absent(),
    this.showDuration = const Value.absent(),
    this.showStartTime = const Value.absent(),
    this.showEndTime = const Value.absent(),
    this.hasSubtasks = const Value.absent(),
    this.hasNumericValues = const Value.absent(),
    this.hasTextValues = const Value.absent(),
    this.hasSelectionValues = const Value.absent(),
    this.selectionOptions = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RecordTypesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    this.categoryId = const Value.absent(),
    this.description = const Value.absent(),
    this.icon = const Value.absent(),
    this.color = const Value.absent(),
    this.isEnabled = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.requirePhoto = const Value.absent(),
    this.maxPhotos = const Value.absent(),
    this.requireLocation = const Value.absent(),
    this.locationAccuracy = const Value.absent(),
    this.locationTimeout = const Value.absent(),
    this.hasTimer = const Value.absent(),
    this.timerDuration = const Value.absent(),
    this.hasNotes = const Value.absent(),
    this.hasAttachments = const Value.absent(),
    this.hasAudioRecording = const Value.absent(),
    this.maxAudioDuration = const Value.absent(),
    this.hasVideoRecording = const Value.absent(),
    this.maxVideoDuration = const Value.absent(),
    this.showDuration = const Value.absent(),
    this.showStartTime = const Value.absent(),
    this.showEndTime = const Value.absent(),
    this.hasSubtasks = const Value.absent(),
    this.hasNumericValues = const Value.absent(),
    this.hasTextValues = const Value.absent(),
    this.hasSelectionValues = const Value.absent(),
    this.selectionOptions = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : name = Value(name);
  static Insertable<RecordType> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<int>? categoryId,
    Expression<String>? description,
    Expression<String>? icon,
    Expression<String>? color,
    Expression<bool>? isEnabled,
    Expression<int>? sortOrder,
    Expression<bool>? requirePhoto,
    Expression<int>? maxPhotos,
    Expression<bool>? requireLocation,
    Expression<String>? locationAccuracy,
    Expression<int>? locationTimeout,
    Expression<bool>? hasTimer,
    Expression<int>? timerDuration,
    Expression<bool>? hasNotes,
    Expression<bool>? hasAttachments,
    Expression<bool>? hasAudioRecording,
    Expression<int>? maxAudioDuration,
    Expression<bool>? hasVideoRecording,
    Expression<int>? maxVideoDuration,
    Expression<bool>? showDuration,
    Expression<bool>? showStartTime,
    Expression<bool>? showEndTime,
    Expression<bool>? hasSubtasks,
    Expression<bool>? hasNumericValues,
    Expression<bool>? hasTextValues,
    Expression<bool>? hasSelectionValues,
    Expression<String>? selectionOptions,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (categoryId != null) 'category_id': categoryId,
      if (description != null) 'description': description,
      if (icon != null) 'icon': icon,
      if (color != null) 'color': color,
      if (isEnabled != null) 'is_enabled': isEnabled,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (requirePhoto != null) 'require_photo': requirePhoto,
      if (maxPhotos != null) 'max_photos': maxPhotos,
      if (requireLocation != null) 'require_location': requireLocation,
      if (locationAccuracy != null) 'location_accuracy': locationAccuracy,
      if (locationTimeout != null) 'location_timeout': locationTimeout,
      if (hasTimer != null) 'has_timer': hasTimer,
      if (timerDuration != null) 'timer_duration': timerDuration,
      if (hasNotes != null) 'has_notes': hasNotes,
      if (hasAttachments != null) 'has_attachments': hasAttachments,
      if (hasAudioRecording != null) 'has_audio_recording': hasAudioRecording,
      if (maxAudioDuration != null) 'max_audio_duration': maxAudioDuration,
      if (hasVideoRecording != null) 'has_video_recording': hasVideoRecording,
      if (maxVideoDuration != null) 'max_video_duration': maxVideoDuration,
      if (showDuration != null) 'show_duration': showDuration,
      if (showStartTime != null) 'show_start_time': showStartTime,
      if (showEndTime != null) 'show_end_time': showEndTime,
      if (hasSubtasks != null) 'has_subtasks': hasSubtasks,
      if (hasNumericValues != null) 'has_numeric_values': hasNumericValues,
      if (hasTextValues != null) 'has_text_values': hasTextValues,
      if (hasSelectionValues != null)
        'has_selection_values': hasSelectionValues,
      if (selectionOptions != null) 'selection_options': selectionOptions,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  RecordTypesCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<int?>? categoryId,
    Value<String?>? description,
    Value<String?>? icon,
    Value<String?>? color,
    Value<bool>? isEnabled,
    Value<int>? sortOrder,
    Value<bool>? requirePhoto,
    Value<int>? maxPhotos,
    Value<bool>? requireLocation,
    Value<String>? locationAccuracy,
    Value<int>? locationTimeout,
    Value<bool>? hasTimer,
    Value<int>? timerDuration,
    Value<bool>? hasNotes,
    Value<bool>? hasAttachments,
    Value<bool>? hasAudioRecording,
    Value<int>? maxAudioDuration,
    Value<bool>? hasVideoRecording,
    Value<int>? maxVideoDuration,
    Value<bool>? showDuration,
    Value<bool>? showStartTime,
    Value<bool>? showEndTime,
    Value<bool>? hasSubtasks,
    Value<bool>? hasNumericValues,
    Value<bool>? hasTextValues,
    Value<bool>? hasSelectionValues,
    Value<String?>? selectionOptions,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
  }) {
    return RecordTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      categoryId: categoryId ?? this.categoryId,
      description: description ?? this.description,
      icon: icon ?? this.icon,
      color: color ?? this.color,
      isEnabled: isEnabled ?? this.isEnabled,
      sortOrder: sortOrder ?? this.sortOrder,
      requirePhoto: requirePhoto ?? this.requirePhoto,
      maxPhotos: maxPhotos ?? this.maxPhotos,
      requireLocation: requireLocation ?? this.requireLocation,
      locationAccuracy: locationAccuracy ?? this.locationAccuracy,
      locationTimeout: locationTimeout ?? this.locationTimeout,
      hasTimer: hasTimer ?? this.hasTimer,
      timerDuration: timerDuration ?? this.timerDuration,
      hasNotes: hasNotes ?? this.hasNotes,
      hasAttachments: hasAttachments ?? this.hasAttachments,
      hasAudioRecording: hasAudioRecording ?? this.hasAudioRecording,
      maxAudioDuration: maxAudioDuration ?? this.maxAudioDuration,
      hasVideoRecording: hasVideoRecording ?? this.hasVideoRecording,
      maxVideoDuration: maxVideoDuration ?? this.maxVideoDuration,
      showDuration: showDuration ?? this.showDuration,
      showStartTime: showStartTime ?? this.showStartTime,
      showEndTime: showEndTime ?? this.showEndTime,
      hasSubtasks: hasSubtasks ?? this.hasSubtasks,
      hasNumericValues: hasNumericValues ?? this.hasNumericValues,
      hasTextValues: hasTextValues ?? this.hasTextValues,
      hasSelectionValues: hasSelectionValues ?? this.hasSelectionValues,
      selectionOptions: selectionOptions ?? this.selectionOptions,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (isEnabled.present) {
      map['is_enabled'] = Variable<bool>(isEnabled.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (requirePhoto.present) {
      map['require_photo'] = Variable<bool>(requirePhoto.value);
    }
    if (maxPhotos.present) {
      map['max_photos'] = Variable<int>(maxPhotos.value);
    }
    if (requireLocation.present) {
      map['require_location'] = Variable<bool>(requireLocation.value);
    }
    if (locationAccuracy.present) {
      map['location_accuracy'] = Variable<String>(locationAccuracy.value);
    }
    if (locationTimeout.present) {
      map['location_timeout'] = Variable<int>(locationTimeout.value);
    }
    if (hasTimer.present) {
      map['has_timer'] = Variable<bool>(hasTimer.value);
    }
    if (timerDuration.present) {
      map['timer_duration'] = Variable<int>(timerDuration.value);
    }
    if (hasNotes.present) {
      map['has_notes'] = Variable<bool>(hasNotes.value);
    }
    if (hasAttachments.present) {
      map['has_attachments'] = Variable<bool>(hasAttachments.value);
    }
    if (hasAudioRecording.present) {
      map['has_audio_recording'] = Variable<bool>(hasAudioRecording.value);
    }
    if (maxAudioDuration.present) {
      map['max_audio_duration'] = Variable<int>(maxAudioDuration.value);
    }
    if (hasVideoRecording.present) {
      map['has_video_recording'] = Variable<bool>(hasVideoRecording.value);
    }
    if (maxVideoDuration.present) {
      map['max_video_duration'] = Variable<int>(maxVideoDuration.value);
    }
    if (showDuration.present) {
      map['show_duration'] = Variable<bool>(showDuration.value);
    }
    if (showStartTime.present) {
      map['show_start_time'] = Variable<bool>(showStartTime.value);
    }
    if (showEndTime.present) {
      map['show_end_time'] = Variable<bool>(showEndTime.value);
    }
    if (hasSubtasks.present) {
      map['has_subtasks'] = Variable<bool>(hasSubtasks.value);
    }
    if (hasNumericValues.present) {
      map['has_numeric_values'] = Variable<bool>(hasNumericValues.value);
    }
    if (hasTextValues.present) {
      map['has_text_values'] = Variable<bool>(hasTextValues.value);
    }
    if (hasSelectionValues.present) {
      map['has_selection_values'] = Variable<bool>(hasSelectionValues.value);
    }
    if (selectionOptions.present) {
      map['selection_options'] = Variable<String>(selectionOptions.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('categoryId: $categoryId, ')
          ..write('description: $description, ')
          ..write('icon: $icon, ')
          ..write('color: $color, ')
          ..write('isEnabled: $isEnabled, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('requirePhoto: $requirePhoto, ')
          ..write('maxPhotos: $maxPhotos, ')
          ..write('requireLocation: $requireLocation, ')
          ..write('locationAccuracy: $locationAccuracy, ')
          ..write('locationTimeout: $locationTimeout, ')
          ..write('hasTimer: $hasTimer, ')
          ..write('timerDuration: $timerDuration, ')
          ..write('hasNotes: $hasNotes, ')
          ..write('hasAttachments: $hasAttachments, ')
          ..write('hasAudioRecording: $hasAudioRecording, ')
          ..write('maxAudioDuration: $maxAudioDuration, ')
          ..write('hasVideoRecording: $hasVideoRecording, ')
          ..write('maxVideoDuration: $maxVideoDuration, ')
          ..write('showDuration: $showDuration, ')
          ..write('showStartTime: $showStartTime, ')
          ..write('showEndTime: $showEndTime, ')
          ..write('hasSubtasks: $hasSubtasks, ')
          ..write('hasNumericValues: $hasNumericValues, ')
          ..write('hasTextValues: $hasTextValues, ')
          ..write('hasSelectionValues: $hasSelectionValues, ')
          ..write('selectionOptions: $selectionOptions, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RecordsTable extends Records with TableInfo<$RecordsTable, Record> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _startTimeMeta = const VerificationMeta(
    'startTime',
  );
  @override
  late final GeneratedColumn<DateTime> startTime = GeneratedColumn<DateTime>(
    'start_time',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _endTimeMeta = const VerificationMeta(
    'endTime',
  );
  @override
  late final GeneratedColumn<DateTime> endTime = GeneratedColumn<DateTime>(
    'end_time',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _durationSecondsMeta = const VerificationMeta(
    'durationSeconds',
  );
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
    'duration_seconds',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _locationNameMeta = const VerificationMeta(
    'locationName',
  );
  @override
  late final GeneratedColumn<String> locationName = GeneratedColumn<String>(
    'location_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _accuracyMeta = const VerificationMeta(
    'accuracy',
  );
  @override
  late final GeneratedColumn<double> accuracy = GeneratedColumn<double>(
    'accuracy',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
    'status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('draft'),
  );
  static const VerificationMeta _tagsJsonMeta = const VerificationMeta(
    'tagsJson',
  );
  @override
  late final GeneratedColumn<String> tagsJson = GeneratedColumn<String>(
    'tags_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _metadataJsonMeta = const VerificationMeta(
    'metadataJson',
  );
  @override
  late final GeneratedColumn<String> metadataJson = GeneratedColumn<String>(
    'metadata_json',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    title,
    content,
    startTime,
    endTime,
    durationSeconds,
    locationName,
    latitude,
    longitude,
    accuracy,
    status,
    tagsJson,
    metadataJson,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'records';
  @override
  VerificationContext validateIntegrity(
    Insertable<Record> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    }
    if (data.containsKey('start_time')) {
      context.handle(
        _startTimeMeta,
        startTime.isAcceptableOrUnknown(data['start_time']!, _startTimeMeta),
      );
    }
    if (data.containsKey('end_time')) {
      context.handle(
        _endTimeMeta,
        endTime.isAcceptableOrUnknown(data['end_time']!, _endTimeMeta),
      );
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
        _durationSecondsMeta,
        durationSeconds.isAcceptableOrUnknown(
          data['duration_seconds']!,
          _durationSecondsMeta,
        ),
      );
    }
    if (data.containsKey('location_name')) {
      context.handle(
        _locationNameMeta,
        locationName.isAcceptableOrUnknown(
          data['location_name']!,
          _locationNameMeta,
        ),
      );
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('accuracy')) {
      context.handle(
        _accuracyMeta,
        accuracy.isAcceptableOrUnknown(data['accuracy']!, _accuracyMeta),
      );
    }
    if (data.containsKey('status')) {
      context.handle(
        _statusMeta,
        status.isAcceptableOrUnknown(data['status']!, _statusMeta),
      );
    }
    if (data.containsKey('tags_json')) {
      context.handle(
        _tagsJsonMeta,
        tagsJson.isAcceptableOrUnknown(data['tags_json']!, _tagsJsonMeta),
      );
    }
    if (data.containsKey('metadata_json')) {
      context.handle(
        _metadataJsonMeta,
        metadataJson.isAcceptableOrUnknown(
          data['metadata_json']!,
          _metadataJsonMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Record map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Record(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      ),
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      ),
      startTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}start_time'],
      ),
      endTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_time'],
      ),
      durationSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_seconds'],
      ),
      locationName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_name'],
      ),
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      accuracy: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}accuracy'],
      ),
      status: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}status'],
      )!,
      tagsJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags_json'],
      ),
      metadataJson: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}metadata_json'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $RecordsTable createAlias(String alias) {
    return $RecordsTable(attachedDatabase, alias);
  }
}

class Record extends DataClass implements Insertable<Record> {
  final int id;
  final int recordTypeId;
  final String? title;
  final String? content;
  final DateTime? startTime;
  final DateTime? endTime;
  final int? durationSeconds;
  final String? locationName;
  final double? latitude;
  final double? longitude;
  final double? accuracy;
  final String status;
  final String? tagsJson;
  final String? metadataJson;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const Record({
    required this.id,
    required this.recordTypeId,
    this.title,
    this.content,
    this.startTime,
    this.endTime,
    this.durationSeconds,
    this.locationName,
    this.latitude,
    this.longitude,
    this.accuracy,
    required this.status,
    this.tagsJson,
    this.metadataJson,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || startTime != null) {
      map['start_time'] = Variable<DateTime>(startTime);
    }
    if (!nullToAbsent || endTime != null) {
      map['end_time'] = Variable<DateTime>(endTime);
    }
    if (!nullToAbsent || durationSeconds != null) {
      map['duration_seconds'] = Variable<int>(durationSeconds);
    }
    if (!nullToAbsent || locationName != null) {
      map['location_name'] = Variable<String>(locationName);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || accuracy != null) {
      map['accuracy'] = Variable<double>(accuracy);
    }
    map['status'] = Variable<String>(status);
    if (!nullToAbsent || tagsJson != null) {
      map['tags_json'] = Variable<String>(tagsJson);
    }
    if (!nullToAbsent || metadataJson != null) {
      map['metadata_json'] = Variable<String>(metadataJson);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  RecordsCompanion toCompanion(bool nullToAbsent) {
    return RecordsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      title: title == null && nullToAbsent
          ? const Value.absent()
          : Value(title),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      startTime: startTime == null && nullToAbsent
          ? const Value.absent()
          : Value(startTime),
      endTime: endTime == null && nullToAbsent
          ? const Value.absent()
          : Value(endTime),
      durationSeconds: durationSeconds == null && nullToAbsent
          ? const Value.absent()
          : Value(durationSeconds),
      locationName: locationName == null && nullToAbsent
          ? const Value.absent()
          : Value(locationName),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      accuracy: accuracy == null && nullToAbsent
          ? const Value.absent()
          : Value(accuracy),
      status: Value(status),
      tagsJson: tagsJson == null && nullToAbsent
          ? const Value.absent()
          : Value(tagsJson),
      metadataJson: metadataJson == null && nullToAbsent
          ? const Value.absent()
          : Value(metadataJson),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory Record.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Record(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      title: serializer.fromJson<String?>(json['title']),
      content: serializer.fromJson<String?>(json['content']),
      startTime: serializer.fromJson<DateTime?>(json['startTime']),
      endTime: serializer.fromJson<DateTime?>(json['endTime']),
      durationSeconds: serializer.fromJson<int?>(json['durationSeconds']),
      locationName: serializer.fromJson<String?>(json['locationName']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      accuracy: serializer.fromJson<double?>(json['accuracy']),
      status: serializer.fromJson<String>(json['status']),
      tagsJson: serializer.fromJson<String?>(json['tagsJson']),
      metadataJson: serializer.fromJson<String?>(json['metadataJson']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'title': serializer.toJson<String?>(title),
      'content': serializer.toJson<String?>(content),
      'startTime': serializer.toJson<DateTime?>(startTime),
      'endTime': serializer.toJson<DateTime?>(endTime),
      'durationSeconds': serializer.toJson<int?>(durationSeconds),
      'locationName': serializer.toJson<String?>(locationName),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'accuracy': serializer.toJson<double?>(accuracy),
      'status': serializer.toJson<String>(status),
      'tagsJson': serializer.toJson<String?>(tagsJson),
      'metadataJson': serializer.toJson<String?>(metadataJson),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  Record copyWith({
    int? id,
    int? recordTypeId,
    Value<String?> title = const Value.absent(),
    Value<String?> content = const Value.absent(),
    Value<DateTime?> startTime = const Value.absent(),
    Value<DateTime?> endTime = const Value.absent(),
    Value<int?> durationSeconds = const Value.absent(),
    Value<String?> locationName = const Value.absent(),
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    Value<double?> accuracy = const Value.absent(),
    String? status,
    Value<String?> tagsJson = const Value.absent(),
    Value<String?> metadataJson = const Value.absent(),
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => Record(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    title: title.present ? title.value : this.title,
    content: content.present ? content.value : this.content,
    startTime: startTime.present ? startTime.value : this.startTime,
    endTime: endTime.present ? endTime.value : this.endTime,
    durationSeconds: durationSeconds.present
        ? durationSeconds.value
        : this.durationSeconds,
    locationName: locationName.present ? locationName.value : this.locationName,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    accuracy: accuracy.present ? accuracy.value : this.accuracy,
    status: status ?? this.status,
    tagsJson: tagsJson.present ? tagsJson.value : this.tagsJson,
    metadataJson: metadataJson.present ? metadataJson.value : this.metadataJson,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  Record copyWithCompanion(RecordsCompanion data) {
    return Record(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      startTime: data.startTime.present ? data.startTime.value : this.startTime,
      endTime: data.endTime.present ? data.endTime.value : this.endTime,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
      locationName: data.locationName.present
          ? data.locationName.value
          : this.locationName,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      accuracy: data.accuracy.present ? data.accuracy.value : this.accuracy,
      status: data.status.present ? data.status.value : this.status,
      tagsJson: data.tagsJson.present ? data.tagsJson.value : this.tagsJson,
      metadataJson: data.metadataJson.present
          ? data.metadataJson.value
          : this.metadataJson,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Record(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('locationName: $locationName, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('accuracy: $accuracy, ')
          ..write('status: $status, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('metadataJson: $metadataJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordTypeId,
    title,
    content,
    startTime,
    endTime,
    durationSeconds,
    locationName,
    latitude,
    longitude,
    accuracy,
    status,
    tagsJson,
    metadataJson,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Record &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.title == this.title &&
          other.content == this.content &&
          other.startTime == this.startTime &&
          other.endTime == this.endTime &&
          other.durationSeconds == this.durationSeconds &&
          other.locationName == this.locationName &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.accuracy == this.accuracy &&
          other.status == this.status &&
          other.tagsJson == this.tagsJson &&
          other.metadataJson == this.metadataJson &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RecordsCompanion extends UpdateCompanion<Record> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<String?> title;
  final Value<String?> content;
  final Value<DateTime?> startTime;
  final Value<DateTime?> endTime;
  final Value<int?> durationSeconds;
  final Value<String?> locationName;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<double?> accuracy;
  final Value<String> status;
  final Value<String?> tagsJson;
  final Value<String?> metadataJson;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  const RecordsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.locationName = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.status = const Value.absent(),
    this.tagsJson = const Value.absent(),
    this.metadataJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RecordsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.startTime = const Value.absent(),
    this.endTime = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.locationName = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.status = const Value.absent(),
    this.tagsJson = const Value.absent(),
    this.metadataJson = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId);
  static Insertable<Record> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime>? startTime,
    Expression<DateTime>? endTime,
    Expression<int>? durationSeconds,
    Expression<String>? locationName,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? accuracy,
    Expression<String>? status,
    Expression<String>? tagsJson,
    Expression<String>? metadataJson,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (startTime != null) 'start_time': startTime,
      if (endTime != null) 'end_time': endTime,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
      if (locationName != null) 'location_name': locationName,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (accuracy != null) 'accuracy': accuracy,
      if (status != null) 'status': status,
      if (tagsJson != null) 'tags_json': tagsJson,
      if (metadataJson != null) 'metadata_json': metadataJson,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  RecordsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<String?>? title,
    Value<String?>? content,
    Value<DateTime?>? startTime,
    Value<DateTime?>? endTime,
    Value<int?>? durationSeconds,
    Value<String?>? locationName,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<double?>? accuracy,
    Value<String>? status,
    Value<String?>? tagsJson,
    Value<String?>? metadataJson,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
  }) {
    return RecordsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      title: title ?? this.title,
      content: content ?? this.content,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      locationName: locationName ?? this.locationName,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      accuracy: accuracy ?? this.accuracy,
      status: status ?? this.status,
      tagsJson: tagsJson ?? this.tagsJson,
      metadataJson: metadataJson ?? this.metadataJson,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (startTime.present) {
      map['start_time'] = Variable<DateTime>(startTime.value);
    }
    if (endTime.present) {
      map['end_time'] = Variable<DateTime>(endTime.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    if (locationName.present) {
      map['location_name'] = Variable<String>(locationName.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (accuracy.present) {
      map['accuracy'] = Variable<double>(accuracy.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (tagsJson.present) {
      map['tags_json'] = Variable<String>(tagsJson.value);
    }
    if (metadataJson.present) {
      map['metadata_json'] = Variable<String>(metadataJson.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('startTime: $startTime, ')
          ..write('endTime: $endTime, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('locationName: $locationName, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('accuracy: $accuracy, ')
          ..write('status: $status, ')
          ..write('tagsJson: $tagsJson, ')
          ..write('metadataJson: $metadataJson, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RecordValuesTable extends RecordValues
    with TableInfo<$RecordValuesTable, RecordValue> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordValuesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<int> recordId = GeneratedColumn<int>(
    'record_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES records (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _fieldNameMeta = const VerificationMeta(
    'fieldName',
  );
  @override
  late final GeneratedColumn<String> fieldName = GeneratedColumn<String>(
    'field_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldValueMeta = const VerificationMeta(
    'fieldValue',
  );
  @override
  late final GeneratedColumn<double> fieldValue = GeneratedColumn<double>(
    'field_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fieldTextValueMeta = const VerificationMeta(
    'fieldTextValue',
  );
  @override
  late final GeneratedColumn<String> fieldTextValue = GeneratedColumn<String>(
    'field_text_value',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fieldTypeMeta = const VerificationMeta(
    'fieldType',
  );
  @override
  late final GeneratedColumn<String> fieldType = GeneratedColumn<String>(
    'field_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('numeric'),
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _valueTypeMeta = const VerificationMeta(
    'valueType',
  );
  @override
  late final GeneratedColumn<String> valueType = GeneratedColumn<String>(
    'value_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('decimal'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordId,
    fieldName,
    fieldValue,
    fieldTextValue,
    fieldType,
    unit,
    valueType,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_values';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordValue> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('field_name')) {
      context.handle(
        _fieldNameMeta,
        fieldName.isAcceptableOrUnknown(data['field_name']!, _fieldNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldNameMeta);
    }
    if (data.containsKey('field_value')) {
      context.handle(
        _fieldValueMeta,
        fieldValue.isAcceptableOrUnknown(data['field_value']!, _fieldValueMeta),
      );
    }
    if (data.containsKey('field_text_value')) {
      context.handle(
        _fieldTextValueMeta,
        fieldTextValue.isAcceptableOrUnknown(
          data['field_text_value']!,
          _fieldTextValueMeta,
        ),
      );
    }
    if (data.containsKey('field_type')) {
      context.handle(
        _fieldTypeMeta,
        fieldType.isAcceptableOrUnknown(data['field_type']!, _fieldTypeMeta),
      );
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    if (data.containsKey('value_type')) {
      context.handle(
        _valueTypeMeta,
        valueType.isAcceptableOrUnknown(data['value_type']!, _valueTypeMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordValue map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordValue(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      fieldName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_name'],
      )!,
      fieldValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}field_value'],
      ),
      fieldTextValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_text_value'],
      ),
      fieldType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_type'],
      )!,
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      ),
      valueType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value_type'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordValuesTable createAlias(String alias) {
    return $RecordValuesTable(attachedDatabase, alias);
  }
}

class RecordValue extends DataClass implements Insertable<RecordValue> {
  final int id;
  final int recordId;
  final String fieldName;
  final double? fieldValue;
  final String? fieldTextValue;
  final String fieldType;
  final String? unit;
  final String valueType;
  final DateTime createdAt;
  const RecordValue({
    required this.id,
    required this.recordId,
    required this.fieldName,
    this.fieldValue,
    this.fieldTextValue,
    required this.fieldType,
    this.unit,
    required this.valueType,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_id'] = Variable<int>(recordId);
    map['field_name'] = Variable<String>(fieldName);
    if (!nullToAbsent || fieldValue != null) {
      map['field_value'] = Variable<double>(fieldValue);
    }
    if (!nullToAbsent || fieldTextValue != null) {
      map['field_text_value'] = Variable<String>(fieldTextValue);
    }
    map['field_type'] = Variable<String>(fieldType);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    map['value_type'] = Variable<String>(valueType);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordValuesCompanion toCompanion(bool nullToAbsent) {
    return RecordValuesCompanion(
      id: Value(id),
      recordId: Value(recordId),
      fieldName: Value(fieldName),
      fieldValue: fieldValue == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldValue),
      fieldTextValue: fieldTextValue == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldTextValue),
      fieldType: Value(fieldType),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      valueType: Value(valueType),
      createdAt: Value(createdAt),
    );
  }

  factory RecordValue.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordValue(
      id: serializer.fromJson<int>(json['id']),
      recordId: serializer.fromJson<int>(json['recordId']),
      fieldName: serializer.fromJson<String>(json['fieldName']),
      fieldValue: serializer.fromJson<double?>(json['fieldValue']),
      fieldTextValue: serializer.fromJson<String?>(json['fieldTextValue']),
      fieldType: serializer.fromJson<String>(json['fieldType']),
      unit: serializer.fromJson<String?>(json['unit']),
      valueType: serializer.fromJson<String>(json['valueType']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordId': serializer.toJson<int>(recordId),
      'fieldName': serializer.toJson<String>(fieldName),
      'fieldValue': serializer.toJson<double?>(fieldValue),
      'fieldTextValue': serializer.toJson<String?>(fieldTextValue),
      'fieldType': serializer.toJson<String>(fieldType),
      'unit': serializer.toJson<String?>(unit),
      'valueType': serializer.toJson<String>(valueType),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordValue copyWith({
    int? id,
    int? recordId,
    String? fieldName,
    Value<double?> fieldValue = const Value.absent(),
    Value<String?> fieldTextValue = const Value.absent(),
    String? fieldType,
    Value<String?> unit = const Value.absent(),
    String? valueType,
    DateTime? createdAt,
  }) => RecordValue(
    id: id ?? this.id,
    recordId: recordId ?? this.recordId,
    fieldName: fieldName ?? this.fieldName,
    fieldValue: fieldValue.present ? fieldValue.value : this.fieldValue,
    fieldTextValue: fieldTextValue.present
        ? fieldTextValue.value
        : this.fieldTextValue,
    fieldType: fieldType ?? this.fieldType,
    unit: unit.present ? unit.value : this.unit,
    valueType: valueType ?? this.valueType,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordValue copyWithCompanion(RecordValuesCompanion data) {
    return RecordValue(
      id: data.id.present ? data.id.value : this.id,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      fieldName: data.fieldName.present ? data.fieldName.value : this.fieldName,
      fieldValue: data.fieldValue.present
          ? data.fieldValue.value
          : this.fieldValue,
      fieldTextValue: data.fieldTextValue.present
          ? data.fieldTextValue.value
          : this.fieldTextValue,
      fieldType: data.fieldType.present ? data.fieldType.value : this.fieldType,
      unit: data.unit.present ? data.unit.value : this.unit,
      valueType: data.valueType.present ? data.valueType.value : this.valueType,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordValue(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldValue: $fieldValue, ')
          ..write('fieldTextValue: $fieldTextValue, ')
          ..write('fieldType: $fieldType, ')
          ..write('unit: $unit, ')
          ..write('valueType: $valueType, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordId,
    fieldName,
    fieldValue,
    fieldTextValue,
    fieldType,
    unit,
    valueType,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordValue &&
          other.id == this.id &&
          other.recordId == this.recordId &&
          other.fieldName == this.fieldName &&
          other.fieldValue == this.fieldValue &&
          other.fieldTextValue == this.fieldTextValue &&
          other.fieldType == this.fieldType &&
          other.unit == this.unit &&
          other.valueType == this.valueType &&
          other.createdAt == this.createdAt);
}

class RecordValuesCompanion extends UpdateCompanion<RecordValue> {
  final Value<int> id;
  final Value<int> recordId;
  final Value<String> fieldName;
  final Value<double?> fieldValue;
  final Value<String?> fieldTextValue;
  final Value<String> fieldType;
  final Value<String?> unit;
  final Value<String> valueType;
  final Value<DateTime> createdAt;
  const RecordValuesCompanion({
    this.id = const Value.absent(),
    this.recordId = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.fieldValue = const Value.absent(),
    this.fieldTextValue = const Value.absent(),
    this.fieldType = const Value.absent(),
    this.unit = const Value.absent(),
    this.valueType = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordValuesCompanion.insert({
    this.id = const Value.absent(),
    required int recordId,
    required String fieldName,
    this.fieldValue = const Value.absent(),
    this.fieldTextValue = const Value.absent(),
    this.fieldType = const Value.absent(),
    this.unit = const Value.absent(),
    this.valueType = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordId = Value(recordId),
       fieldName = Value(fieldName);
  static Insertable<RecordValue> custom({
    Expression<int>? id,
    Expression<int>? recordId,
    Expression<String>? fieldName,
    Expression<double>? fieldValue,
    Expression<String>? fieldTextValue,
    Expression<String>? fieldType,
    Expression<String>? unit,
    Expression<String>? valueType,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordId != null) 'record_id': recordId,
      if (fieldName != null) 'field_name': fieldName,
      if (fieldValue != null) 'field_value': fieldValue,
      if (fieldTextValue != null) 'field_text_value': fieldTextValue,
      if (fieldType != null) 'field_type': fieldType,
      if (unit != null) 'unit': unit,
      if (valueType != null) 'value_type': valueType,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordValuesCompanion copyWith({
    Value<int>? id,
    Value<int>? recordId,
    Value<String>? fieldName,
    Value<double?>? fieldValue,
    Value<String?>? fieldTextValue,
    Value<String>? fieldType,
    Value<String?>? unit,
    Value<String>? valueType,
    Value<DateTime>? createdAt,
  }) {
    return RecordValuesCompanion(
      id: id ?? this.id,
      recordId: recordId ?? this.recordId,
      fieldName: fieldName ?? this.fieldName,
      fieldValue: fieldValue ?? this.fieldValue,
      fieldTextValue: fieldTextValue ?? this.fieldTextValue,
      fieldType: fieldType ?? this.fieldType,
      unit: unit ?? this.unit,
      valueType: valueType ?? this.valueType,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (fieldName.present) {
      map['field_name'] = Variable<String>(fieldName.value);
    }
    if (fieldValue.present) {
      map['field_value'] = Variable<double>(fieldValue.value);
    }
    if (fieldTextValue.present) {
      map['field_text_value'] = Variable<String>(fieldTextValue.value);
    }
    if (fieldType.present) {
      map['field_type'] = Variable<String>(fieldType.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (valueType.present) {
      map['value_type'] = Variable<String>(valueType.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordValuesCompanion(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldValue: $fieldValue, ')
          ..write('fieldTextValue: $fieldTextValue, ')
          ..write('fieldType: $fieldType, ')
          ..write('unit: $unit, ')
          ..write('valueType: $valueType, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordStepsTable extends RecordSteps
    with TableInfo<$RecordStepsTable, RecordStep> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordStepsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<int> recordId = GeneratedColumn<int>(
    'record_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES records (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _stepNameMeta = const VerificationMeta(
    'stepName',
  );
  @override
  late final GeneratedColumn<String> stepName = GeneratedColumn<String>(
    'step_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stepOrderMeta = const VerificationMeta(
    'stepOrder',
  );
  @override
  late final GeneratedColumn<int> stepOrder = GeneratedColumn<int>(
    'step_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stepStatusMeta = const VerificationMeta(
    'stepStatus',
  );
  @override
  late final GeneratedColumn<String> stepStatus = GeneratedColumn<String>(
    'step_status',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _completedAtMeta = const VerificationMeta(
    'completedAt',
  );
  @override
  late final GeneratedColumn<DateTime> completedAt = GeneratedColumn<DateTime>(
    'completed_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
    'note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordId,
    stepName,
    stepOrder,
    stepStatus,
    completedAt,
    note,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_steps';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordStep> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('step_name')) {
      context.handle(
        _stepNameMeta,
        stepName.isAcceptableOrUnknown(data['step_name']!, _stepNameMeta),
      );
    } else if (isInserting) {
      context.missing(_stepNameMeta);
    }
    if (data.containsKey('step_order')) {
      context.handle(
        _stepOrderMeta,
        stepOrder.isAcceptableOrUnknown(data['step_order']!, _stepOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_stepOrderMeta);
    }
    if (data.containsKey('step_status')) {
      context.handle(
        _stepStatusMeta,
        stepStatus.isAcceptableOrUnknown(data['step_status']!, _stepStatusMeta),
      );
    }
    if (data.containsKey('completed_at')) {
      context.handle(
        _completedAtMeta,
        completedAt.isAcceptableOrUnknown(
          data['completed_at']!,
          _completedAtMeta,
        ),
      );
    }
    if (data.containsKey('note')) {
      context.handle(
        _noteMeta,
        note.isAcceptableOrUnknown(data['note']!, _noteMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordStep map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordStep(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      stepName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}step_name'],
      )!,
      stepOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_order'],
      )!,
      stepStatus: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}step_status'],
      )!,
      completedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}completed_at'],
      ),
      note: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}note'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordStepsTable createAlias(String alias) {
    return $RecordStepsTable(attachedDatabase, alias);
  }
}

class RecordStep extends DataClass implements Insertable<RecordStep> {
  final int id;
  final int recordId;
  final String stepName;
  final int stepOrder;
  final String stepStatus;
  final DateTime? completedAt;
  final String? note;
  final DateTime createdAt;
  const RecordStep({
    required this.id,
    required this.recordId,
    required this.stepName,
    required this.stepOrder,
    required this.stepStatus,
    this.completedAt,
    this.note,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_id'] = Variable<int>(recordId);
    map['step_name'] = Variable<String>(stepName);
    map['step_order'] = Variable<int>(stepOrder);
    map['step_status'] = Variable<String>(stepStatus);
    if (!nullToAbsent || completedAt != null) {
      map['completed_at'] = Variable<DateTime>(completedAt);
    }
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String>(note);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordStepsCompanion toCompanion(bool nullToAbsent) {
    return RecordStepsCompanion(
      id: Value(id),
      recordId: Value(recordId),
      stepName: Value(stepName),
      stepOrder: Value(stepOrder),
      stepStatus: Value(stepStatus),
      completedAt: completedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(completedAt),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      createdAt: Value(createdAt),
    );
  }

  factory RecordStep.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordStep(
      id: serializer.fromJson<int>(json['id']),
      recordId: serializer.fromJson<int>(json['recordId']),
      stepName: serializer.fromJson<String>(json['stepName']),
      stepOrder: serializer.fromJson<int>(json['stepOrder']),
      stepStatus: serializer.fromJson<String>(json['stepStatus']),
      completedAt: serializer.fromJson<DateTime?>(json['completedAt']),
      note: serializer.fromJson<String?>(json['note']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordId': serializer.toJson<int>(recordId),
      'stepName': serializer.toJson<String>(stepName),
      'stepOrder': serializer.toJson<int>(stepOrder),
      'stepStatus': serializer.toJson<String>(stepStatus),
      'completedAt': serializer.toJson<DateTime?>(completedAt),
      'note': serializer.toJson<String?>(note),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordStep copyWith({
    int? id,
    int? recordId,
    String? stepName,
    int? stepOrder,
    String? stepStatus,
    Value<DateTime?> completedAt = const Value.absent(),
    Value<String?> note = const Value.absent(),
    DateTime? createdAt,
  }) => RecordStep(
    id: id ?? this.id,
    recordId: recordId ?? this.recordId,
    stepName: stepName ?? this.stepName,
    stepOrder: stepOrder ?? this.stepOrder,
    stepStatus: stepStatus ?? this.stepStatus,
    completedAt: completedAt.present ? completedAt.value : this.completedAt,
    note: note.present ? note.value : this.note,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordStep copyWithCompanion(RecordStepsCompanion data) {
    return RecordStep(
      id: data.id.present ? data.id.value : this.id,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      stepName: data.stepName.present ? data.stepName.value : this.stepName,
      stepOrder: data.stepOrder.present ? data.stepOrder.value : this.stepOrder,
      stepStatus: data.stepStatus.present
          ? data.stepStatus.value
          : this.stepStatus,
      completedAt: data.completedAt.present
          ? data.completedAt.value
          : this.completedAt,
      note: data.note.present ? data.note.value : this.note,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordStep(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('stepName: $stepName, ')
          ..write('stepOrder: $stepOrder, ')
          ..write('stepStatus: $stepStatus, ')
          ..write('completedAt: $completedAt, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordId,
    stepName,
    stepOrder,
    stepStatus,
    completedAt,
    note,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordStep &&
          other.id == this.id &&
          other.recordId == this.recordId &&
          other.stepName == this.stepName &&
          other.stepOrder == this.stepOrder &&
          other.stepStatus == this.stepStatus &&
          other.completedAt == this.completedAt &&
          other.note == this.note &&
          other.createdAt == this.createdAt);
}

class RecordStepsCompanion extends UpdateCompanion<RecordStep> {
  final Value<int> id;
  final Value<int> recordId;
  final Value<String> stepName;
  final Value<int> stepOrder;
  final Value<String> stepStatus;
  final Value<DateTime?> completedAt;
  final Value<String?> note;
  final Value<DateTime> createdAt;
  const RecordStepsCompanion({
    this.id = const Value.absent(),
    this.recordId = const Value.absent(),
    this.stepName = const Value.absent(),
    this.stepOrder = const Value.absent(),
    this.stepStatus = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordStepsCompanion.insert({
    this.id = const Value.absent(),
    required int recordId,
    required String stepName,
    required int stepOrder,
    this.stepStatus = const Value.absent(),
    this.completedAt = const Value.absent(),
    this.note = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordId = Value(recordId),
       stepName = Value(stepName),
       stepOrder = Value(stepOrder);
  static Insertable<RecordStep> custom({
    Expression<int>? id,
    Expression<int>? recordId,
    Expression<String>? stepName,
    Expression<int>? stepOrder,
    Expression<String>? stepStatus,
    Expression<DateTime>? completedAt,
    Expression<String>? note,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordId != null) 'record_id': recordId,
      if (stepName != null) 'step_name': stepName,
      if (stepOrder != null) 'step_order': stepOrder,
      if (stepStatus != null) 'step_status': stepStatus,
      if (completedAt != null) 'completed_at': completedAt,
      if (note != null) 'note': note,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordStepsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordId,
    Value<String>? stepName,
    Value<int>? stepOrder,
    Value<String>? stepStatus,
    Value<DateTime?>? completedAt,
    Value<String?>? note,
    Value<DateTime>? createdAt,
  }) {
    return RecordStepsCompanion(
      id: id ?? this.id,
      recordId: recordId ?? this.recordId,
      stepName: stepName ?? this.stepName,
      stepOrder: stepOrder ?? this.stepOrder,
      stepStatus: stepStatus ?? this.stepStatus,
      completedAt: completedAt ?? this.completedAt,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (stepName.present) {
      map['step_name'] = Variable<String>(stepName.value);
    }
    if (stepOrder.present) {
      map['step_order'] = Variable<int>(stepOrder.value);
    }
    if (stepStatus.present) {
      map['step_status'] = Variable<String>(stepStatus.value);
    }
    if (completedAt.present) {
      map['completed_at'] = Variable<DateTime>(completedAt.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordStepsCompanion(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('stepName: $stepName, ')
          ..write('stepOrder: $stepOrder, ')
          ..write('stepStatus: $stepStatus, ')
          ..write('completedAt: $completedAt, ')
          ..write('note: $note, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordPhotosTable extends RecordPhotos
    with TableInfo<$RecordPhotosTable, RecordPhoto> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordPhotosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<int> recordId = GeneratedColumn<int>(
    'record_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES records (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _photoPathMeta = const VerificationMeta(
    'photoPath',
  );
  @override
  late final GeneratedColumn<String> photoPath = GeneratedColumn<String>(
    'photo_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _photoUrlMeta = const VerificationMeta(
    'photoUrl',
  );
  @override
  late final GeneratedColumn<String> photoUrl = GeneratedColumn<String>(
    'photo_url',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _thumbnailPathMeta = const VerificationMeta(
    'thumbnailPath',
  );
  @override
  late final GeneratedColumn<String> thumbnailPath = GeneratedColumn<String>(
    'thumbnail_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
    'width',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
    'height',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fileSizeMeta = const VerificationMeta(
    'fileSize',
  );
  @override
  late final GeneratedColumn<int> fileSize = GeneratedColumn<int>(
    'file_size',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _sortOrderMeta = const VerificationMeta(
    'sortOrder',
  );
  @override
  late final GeneratedColumn<int> sortOrder = GeneratedColumn<int>(
    'sort_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordId,
    photoPath,
    photoUrl,
    thumbnailPath,
    description,
    width,
    height,
    fileSize,
    sortOrder,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_photos';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordPhoto> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('photo_path')) {
      context.handle(
        _photoPathMeta,
        photoPath.isAcceptableOrUnknown(data['photo_path']!, _photoPathMeta),
      );
    }
    if (data.containsKey('photo_url')) {
      context.handle(
        _photoUrlMeta,
        photoUrl.isAcceptableOrUnknown(data['photo_url']!, _photoUrlMeta),
      );
    }
    if (data.containsKey('thumbnail_path')) {
      context.handle(
        _thumbnailPathMeta,
        thumbnailPath.isAcceptableOrUnknown(
          data['thumbnail_path']!,
          _thumbnailPathMeta,
        ),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    }
    if (data.containsKey('width')) {
      context.handle(
        _widthMeta,
        width.isAcceptableOrUnknown(data['width']!, _widthMeta),
      );
    }
    if (data.containsKey('height')) {
      context.handle(
        _heightMeta,
        height.isAcceptableOrUnknown(data['height']!, _heightMeta),
      );
    }
    if (data.containsKey('file_size')) {
      context.handle(
        _fileSizeMeta,
        fileSize.isAcceptableOrUnknown(data['file_size']!, _fileSizeMeta),
      );
    }
    if (data.containsKey('sort_order')) {
      context.handle(
        _sortOrderMeta,
        sortOrder.isAcceptableOrUnknown(data['sort_order']!, _sortOrderMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordPhoto map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordPhoto(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      photoPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_path'],
      ),
      photoUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_url'],
      ),
      thumbnailPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnail_path'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      width: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}width'],
      ),
      height: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}height'],
      ),
      fileSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}file_size'],
      ),
      sortOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_order'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordPhotosTable createAlias(String alias) {
    return $RecordPhotosTable(attachedDatabase, alias);
  }
}

class RecordPhoto extends DataClass implements Insertable<RecordPhoto> {
  final int id;
  final int recordId;
  final String? photoPath;
  final String? photoUrl;
  final String? thumbnailPath;
  final String? description;
  final int? width;
  final int? height;
  final int? fileSize;
  final int sortOrder;
  final DateTime createdAt;
  const RecordPhoto({
    required this.id,
    required this.recordId,
    this.photoPath,
    this.photoUrl,
    this.thumbnailPath,
    this.description,
    this.width,
    this.height,
    this.fileSize,
    required this.sortOrder,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_id'] = Variable<int>(recordId);
    if (!nullToAbsent || photoPath != null) {
      map['photo_path'] = Variable<String>(photoPath);
    }
    if (!nullToAbsent || photoUrl != null) {
      map['photo_url'] = Variable<String>(photoUrl);
    }
    if (!nullToAbsent || thumbnailPath != null) {
      map['thumbnail_path'] = Variable<String>(thumbnailPath);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || width != null) {
      map['width'] = Variable<int>(width);
    }
    if (!nullToAbsent || height != null) {
      map['height'] = Variable<int>(height);
    }
    if (!nullToAbsent || fileSize != null) {
      map['file_size'] = Variable<int>(fileSize);
    }
    map['sort_order'] = Variable<int>(sortOrder);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordPhotosCompanion toCompanion(bool nullToAbsent) {
    return RecordPhotosCompanion(
      id: Value(id),
      recordId: Value(recordId),
      photoPath: photoPath == null && nullToAbsent
          ? const Value.absent()
          : Value(photoPath),
      photoUrl: photoUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(photoUrl),
      thumbnailPath: thumbnailPath == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnailPath),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      width: width == null && nullToAbsent
          ? const Value.absent()
          : Value(width),
      height: height == null && nullToAbsent
          ? const Value.absent()
          : Value(height),
      fileSize: fileSize == null && nullToAbsent
          ? const Value.absent()
          : Value(fileSize),
      sortOrder: Value(sortOrder),
      createdAt: Value(createdAt),
    );
  }

  factory RecordPhoto.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordPhoto(
      id: serializer.fromJson<int>(json['id']),
      recordId: serializer.fromJson<int>(json['recordId']),
      photoPath: serializer.fromJson<String?>(json['photoPath']),
      photoUrl: serializer.fromJson<String?>(json['photoUrl']),
      thumbnailPath: serializer.fromJson<String?>(json['thumbnailPath']),
      description: serializer.fromJson<String?>(json['description']),
      width: serializer.fromJson<int?>(json['width']),
      height: serializer.fromJson<int?>(json['height']),
      fileSize: serializer.fromJson<int?>(json['fileSize']),
      sortOrder: serializer.fromJson<int>(json['sortOrder']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordId': serializer.toJson<int>(recordId),
      'photoPath': serializer.toJson<String?>(photoPath),
      'photoUrl': serializer.toJson<String?>(photoUrl),
      'thumbnailPath': serializer.toJson<String?>(thumbnailPath),
      'description': serializer.toJson<String?>(description),
      'width': serializer.toJson<int?>(width),
      'height': serializer.toJson<int?>(height),
      'fileSize': serializer.toJson<int?>(fileSize),
      'sortOrder': serializer.toJson<int>(sortOrder),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordPhoto copyWith({
    int? id,
    int? recordId,
    Value<String?> photoPath = const Value.absent(),
    Value<String?> photoUrl = const Value.absent(),
    Value<String?> thumbnailPath = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<int?> width = const Value.absent(),
    Value<int?> height = const Value.absent(),
    Value<int?> fileSize = const Value.absent(),
    int? sortOrder,
    DateTime? createdAt,
  }) => RecordPhoto(
    id: id ?? this.id,
    recordId: recordId ?? this.recordId,
    photoPath: photoPath.present ? photoPath.value : this.photoPath,
    photoUrl: photoUrl.present ? photoUrl.value : this.photoUrl,
    thumbnailPath: thumbnailPath.present
        ? thumbnailPath.value
        : this.thumbnailPath,
    description: description.present ? description.value : this.description,
    width: width.present ? width.value : this.width,
    height: height.present ? height.value : this.height,
    fileSize: fileSize.present ? fileSize.value : this.fileSize,
    sortOrder: sortOrder ?? this.sortOrder,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordPhoto copyWithCompanion(RecordPhotosCompanion data) {
    return RecordPhoto(
      id: data.id.present ? data.id.value : this.id,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      photoPath: data.photoPath.present ? data.photoPath.value : this.photoPath,
      photoUrl: data.photoUrl.present ? data.photoUrl.value : this.photoUrl,
      thumbnailPath: data.thumbnailPath.present
          ? data.thumbnailPath.value
          : this.thumbnailPath,
      description: data.description.present
          ? data.description.value
          : this.description,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      fileSize: data.fileSize.present ? data.fileSize.value : this.fileSize,
      sortOrder: data.sortOrder.present ? data.sortOrder.value : this.sortOrder,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordPhoto(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('photoPath: $photoPath, ')
          ..write('photoUrl: $photoUrl, ')
          ..write('thumbnailPath: $thumbnailPath, ')
          ..write('description: $description, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('fileSize: $fileSize, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordId,
    photoPath,
    photoUrl,
    thumbnailPath,
    description,
    width,
    height,
    fileSize,
    sortOrder,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordPhoto &&
          other.id == this.id &&
          other.recordId == this.recordId &&
          other.photoPath == this.photoPath &&
          other.photoUrl == this.photoUrl &&
          other.thumbnailPath == this.thumbnailPath &&
          other.description == this.description &&
          other.width == this.width &&
          other.height == this.height &&
          other.fileSize == this.fileSize &&
          other.sortOrder == this.sortOrder &&
          other.createdAt == this.createdAt);
}

class RecordPhotosCompanion extends UpdateCompanion<RecordPhoto> {
  final Value<int> id;
  final Value<int> recordId;
  final Value<String?> photoPath;
  final Value<String?> photoUrl;
  final Value<String?> thumbnailPath;
  final Value<String?> description;
  final Value<int?> width;
  final Value<int?> height;
  final Value<int?> fileSize;
  final Value<int> sortOrder;
  final Value<DateTime> createdAt;
  const RecordPhotosCompanion({
    this.id = const Value.absent(),
    this.recordId = const Value.absent(),
    this.photoPath = const Value.absent(),
    this.photoUrl = const Value.absent(),
    this.thumbnailPath = const Value.absent(),
    this.description = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.fileSize = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordPhotosCompanion.insert({
    this.id = const Value.absent(),
    required int recordId,
    this.photoPath = const Value.absent(),
    this.photoUrl = const Value.absent(),
    this.thumbnailPath = const Value.absent(),
    this.description = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.fileSize = const Value.absent(),
    this.sortOrder = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordId = Value(recordId);
  static Insertable<RecordPhoto> custom({
    Expression<int>? id,
    Expression<int>? recordId,
    Expression<String>? photoPath,
    Expression<String>? photoUrl,
    Expression<String>? thumbnailPath,
    Expression<String>? description,
    Expression<int>? width,
    Expression<int>? height,
    Expression<int>? fileSize,
    Expression<int>? sortOrder,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordId != null) 'record_id': recordId,
      if (photoPath != null) 'photo_path': photoPath,
      if (photoUrl != null) 'photo_url': photoUrl,
      if (thumbnailPath != null) 'thumbnail_path': thumbnailPath,
      if (description != null) 'description': description,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (fileSize != null) 'file_size': fileSize,
      if (sortOrder != null) 'sort_order': sortOrder,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordPhotosCompanion copyWith({
    Value<int>? id,
    Value<int>? recordId,
    Value<String?>? photoPath,
    Value<String?>? photoUrl,
    Value<String?>? thumbnailPath,
    Value<String?>? description,
    Value<int?>? width,
    Value<int?>? height,
    Value<int?>? fileSize,
    Value<int>? sortOrder,
    Value<DateTime>? createdAt,
  }) {
    return RecordPhotosCompanion(
      id: id ?? this.id,
      recordId: recordId ?? this.recordId,
      photoPath: photoPath ?? this.photoPath,
      photoUrl: photoUrl ?? this.photoUrl,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
      description: description ?? this.description,
      width: width ?? this.width,
      height: height ?? this.height,
      fileSize: fileSize ?? this.fileSize,
      sortOrder: sortOrder ?? this.sortOrder,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (photoPath.present) {
      map['photo_path'] = Variable<String>(photoPath.value);
    }
    if (photoUrl.present) {
      map['photo_url'] = Variable<String>(photoUrl.value);
    }
    if (thumbnailPath.present) {
      map['thumbnail_path'] = Variable<String>(thumbnailPath.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (fileSize.present) {
      map['file_size'] = Variable<int>(fileSize.value);
    }
    if (sortOrder.present) {
      map['sort_order'] = Variable<int>(sortOrder.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordPhotosCompanion(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('photoPath: $photoPath, ')
          ..write('photoUrl: $photoUrl, ')
          ..write('thumbnailPath: $thumbnailPath, ')
          ..write('description: $description, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('fileSize: $fileSize, ')
          ..write('sortOrder: $sortOrder, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordLocationsTable extends RecordLocations
    with TableInfo<$RecordLocationsTable, RecordLocation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordLocationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<int> recordId = GeneratedColumn<int>(
    'record_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES records (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _addressMeta = const VerificationMeta(
    'address',
  );
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
    'address',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _locationNameMeta = const VerificationMeta(
    'locationName',
  );
  @override
  late final GeneratedColumn<String> locationName = GeneratedColumn<String>(
    'location_name',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _accuracyMeta = const VerificationMeta(
    'accuracy',
  );
  @override
  late final GeneratedColumn<double> accuracy = GeneratedColumn<double>(
    'accuracy',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _altitudeMeta = const VerificationMeta(
    'altitude',
  );
  @override
  late final GeneratedColumn<double> altitude = GeneratedColumn<double>(
    'altitude',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _speedMeta = const VerificationMeta('speed');
  @override
  late final GeneratedColumn<double> speed = GeneratedColumn<double>(
    'speed',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _headingMeta = const VerificationMeta(
    'heading',
  );
  @override
  late final GeneratedColumn<double> heading = GeneratedColumn<double>(
    'heading',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordId,
    latitude,
    longitude,
    address,
    locationName,
    accuracy,
    altitude,
    speed,
    heading,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_locations';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordLocation> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    }
    if (data.containsKey('address')) {
      context.handle(
        _addressMeta,
        address.isAcceptableOrUnknown(data['address']!, _addressMeta),
      );
    }
    if (data.containsKey('location_name')) {
      context.handle(
        _locationNameMeta,
        locationName.isAcceptableOrUnknown(
          data['location_name']!,
          _locationNameMeta,
        ),
      );
    }
    if (data.containsKey('accuracy')) {
      context.handle(
        _accuracyMeta,
        accuracy.isAcceptableOrUnknown(data['accuracy']!, _accuracyMeta),
      );
    }
    if (data.containsKey('altitude')) {
      context.handle(
        _altitudeMeta,
        altitude.isAcceptableOrUnknown(data['altitude']!, _altitudeMeta),
      );
    }
    if (data.containsKey('speed')) {
      context.handle(
        _speedMeta,
        speed.isAcceptableOrUnknown(data['speed']!, _speedMeta),
      );
    }
    if (data.containsKey('heading')) {
      context.handle(
        _headingMeta,
        heading.isAcceptableOrUnknown(data['heading']!, _headingMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordLocation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordLocation(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      ),
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      ),
      address: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}address'],
      ),
      locationName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_name'],
      ),
      accuracy: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}accuracy'],
      ),
      altitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}altitude'],
      ),
      speed: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}speed'],
      ),
      heading: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}heading'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordLocationsTable createAlias(String alias) {
    return $RecordLocationsTable(attachedDatabase, alias);
  }
}

class RecordLocation extends DataClass implements Insertable<RecordLocation> {
  final int id;
  final int recordId;
  final double? latitude;
  final double? longitude;
  final String? address;
  final String? locationName;
  final double? accuracy;
  final double? altitude;
  final double? speed;
  final double? heading;
  final DateTime createdAt;
  const RecordLocation({
    required this.id,
    required this.recordId,
    this.latitude,
    this.longitude,
    this.address,
    this.locationName,
    this.accuracy,
    this.altitude,
    this.speed,
    this.heading,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_id'] = Variable<int>(recordId);
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || locationName != null) {
      map['location_name'] = Variable<String>(locationName);
    }
    if (!nullToAbsent || accuracy != null) {
      map['accuracy'] = Variable<double>(accuracy);
    }
    if (!nullToAbsent || altitude != null) {
      map['altitude'] = Variable<double>(altitude);
    }
    if (!nullToAbsent || speed != null) {
      map['speed'] = Variable<double>(speed);
    }
    if (!nullToAbsent || heading != null) {
      map['heading'] = Variable<double>(heading);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordLocationsCompanion toCompanion(bool nullToAbsent) {
    return RecordLocationsCompanion(
      id: Value(id),
      recordId: Value(recordId),
      latitude: latitude == null && nullToAbsent
          ? const Value.absent()
          : Value(latitude),
      longitude: longitude == null && nullToAbsent
          ? const Value.absent()
          : Value(longitude),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      locationName: locationName == null && nullToAbsent
          ? const Value.absent()
          : Value(locationName),
      accuracy: accuracy == null && nullToAbsent
          ? const Value.absent()
          : Value(accuracy),
      altitude: altitude == null && nullToAbsent
          ? const Value.absent()
          : Value(altitude),
      speed: speed == null && nullToAbsent
          ? const Value.absent()
          : Value(speed),
      heading: heading == null && nullToAbsent
          ? const Value.absent()
          : Value(heading),
      createdAt: Value(createdAt),
    );
  }

  factory RecordLocation.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordLocation(
      id: serializer.fromJson<int>(json['id']),
      recordId: serializer.fromJson<int>(json['recordId']),
      latitude: serializer.fromJson<double?>(json['latitude']),
      longitude: serializer.fromJson<double?>(json['longitude']),
      address: serializer.fromJson<String?>(json['address']),
      locationName: serializer.fromJson<String?>(json['locationName']),
      accuracy: serializer.fromJson<double?>(json['accuracy']),
      altitude: serializer.fromJson<double?>(json['altitude']),
      speed: serializer.fromJson<double?>(json['speed']),
      heading: serializer.fromJson<double?>(json['heading']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordId': serializer.toJson<int>(recordId),
      'latitude': serializer.toJson<double?>(latitude),
      'longitude': serializer.toJson<double?>(longitude),
      'address': serializer.toJson<String?>(address),
      'locationName': serializer.toJson<String?>(locationName),
      'accuracy': serializer.toJson<double?>(accuracy),
      'altitude': serializer.toJson<double?>(altitude),
      'speed': serializer.toJson<double?>(speed),
      'heading': serializer.toJson<double?>(heading),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordLocation copyWith({
    int? id,
    int? recordId,
    Value<double?> latitude = const Value.absent(),
    Value<double?> longitude = const Value.absent(),
    Value<String?> address = const Value.absent(),
    Value<String?> locationName = const Value.absent(),
    Value<double?> accuracy = const Value.absent(),
    Value<double?> altitude = const Value.absent(),
    Value<double?> speed = const Value.absent(),
    Value<double?> heading = const Value.absent(),
    DateTime? createdAt,
  }) => RecordLocation(
    id: id ?? this.id,
    recordId: recordId ?? this.recordId,
    latitude: latitude.present ? latitude.value : this.latitude,
    longitude: longitude.present ? longitude.value : this.longitude,
    address: address.present ? address.value : this.address,
    locationName: locationName.present ? locationName.value : this.locationName,
    accuracy: accuracy.present ? accuracy.value : this.accuracy,
    altitude: altitude.present ? altitude.value : this.altitude,
    speed: speed.present ? speed.value : this.speed,
    heading: heading.present ? heading.value : this.heading,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordLocation copyWithCompanion(RecordLocationsCompanion data) {
    return RecordLocation(
      id: data.id.present ? data.id.value : this.id,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      address: data.address.present ? data.address.value : this.address,
      locationName: data.locationName.present
          ? data.locationName.value
          : this.locationName,
      accuracy: data.accuracy.present ? data.accuracy.value : this.accuracy,
      altitude: data.altitude.present ? data.altitude.value : this.altitude,
      speed: data.speed.present ? data.speed.value : this.speed,
      heading: data.heading.present ? data.heading.value : this.heading,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordLocation(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('address: $address, ')
          ..write('locationName: $locationName, ')
          ..write('accuracy: $accuracy, ')
          ..write('altitude: $altitude, ')
          ..write('speed: $speed, ')
          ..write('heading: $heading, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordId,
    latitude,
    longitude,
    address,
    locationName,
    accuracy,
    altitude,
    speed,
    heading,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordLocation &&
          other.id == this.id &&
          other.recordId == this.recordId &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.address == this.address &&
          other.locationName == this.locationName &&
          other.accuracy == this.accuracy &&
          other.altitude == this.altitude &&
          other.speed == this.speed &&
          other.heading == this.heading &&
          other.createdAt == this.createdAt);
}

class RecordLocationsCompanion extends UpdateCompanion<RecordLocation> {
  final Value<int> id;
  final Value<int> recordId;
  final Value<double?> latitude;
  final Value<double?> longitude;
  final Value<String?> address;
  final Value<String?> locationName;
  final Value<double?> accuracy;
  final Value<double?> altitude;
  final Value<double?> speed;
  final Value<double?> heading;
  final Value<DateTime> createdAt;
  const RecordLocationsCompanion({
    this.id = const Value.absent(),
    this.recordId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.address = const Value.absent(),
    this.locationName = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.altitude = const Value.absent(),
    this.speed = const Value.absent(),
    this.heading = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordLocationsCompanion.insert({
    this.id = const Value.absent(),
    required int recordId,
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.address = const Value.absent(),
    this.locationName = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.altitude = const Value.absent(),
    this.speed = const Value.absent(),
    this.heading = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordId = Value(recordId);
  static Insertable<RecordLocation> custom({
    Expression<int>? id,
    Expression<int>? recordId,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<String>? address,
    Expression<String>? locationName,
    Expression<double>? accuracy,
    Expression<double>? altitude,
    Expression<double>? speed,
    Expression<double>? heading,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordId != null) 'record_id': recordId,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (address != null) 'address': address,
      if (locationName != null) 'location_name': locationName,
      if (accuracy != null) 'accuracy': accuracy,
      if (altitude != null) 'altitude': altitude,
      if (speed != null) 'speed': speed,
      if (heading != null) 'heading': heading,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordLocationsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordId,
    Value<double?>? latitude,
    Value<double?>? longitude,
    Value<String?>? address,
    Value<String?>? locationName,
    Value<double?>? accuracy,
    Value<double?>? altitude,
    Value<double?>? speed,
    Value<double?>? heading,
    Value<DateTime>? createdAt,
  }) {
    return RecordLocationsCompanion(
      id: id ?? this.id,
      recordId: recordId ?? this.recordId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      address: address ?? this.address,
      locationName: locationName ?? this.locationName,
      accuracy: accuracy ?? this.accuracy,
      altitude: altitude ?? this.altitude,
      speed: speed ?? this.speed,
      heading: heading ?? this.heading,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (locationName.present) {
      map['location_name'] = Variable<String>(locationName.value);
    }
    if (accuracy.present) {
      map['accuracy'] = Variable<double>(accuracy.value);
    }
    if (altitude.present) {
      map['altitude'] = Variable<double>(altitude.value);
    }
    if (speed.present) {
      map['speed'] = Variable<double>(speed.value);
    }
    if (heading.present) {
      map['heading'] = Variable<double>(heading.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordLocationsCompanion(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('address: $address, ')
          ..write('locationName: $locationName, ')
          ..write('accuracy: $accuracy, ')
          ..write('altitude: $altitude, ')
          ..write('speed: $speed, ')
          ..write('heading: $heading, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordTagsTable extends RecordTags
    with TableInfo<$RecordTagsTable, RecordTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<int> recordId = GeneratedColumn<int>(
    'record_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES records (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tagNameMeta = const VerificationMeta(
    'tagName',
  );
  @override
  late final GeneratedColumn<String> tagName = GeneratedColumn<String>(
    'tag_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tagColorMeta = const VerificationMeta(
    'tagColor',
  );
  @override
  late final GeneratedColumn<String> tagColor = GeneratedColumn<String>(
    'tag_color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordId,
    tagName,
    tagColor,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_tags';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordTag> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('tag_name')) {
      context.handle(
        _tagNameMeta,
        tagName.isAcceptableOrUnknown(data['tag_name']!, _tagNameMeta),
      );
    } else if (isInserting) {
      context.missing(_tagNameMeta);
    }
    if (data.containsKey('tag_color')) {
      context.handle(
        _tagColorMeta,
        tagColor.isAcceptableOrUnknown(data['tag_color']!, _tagColorMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordTag(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      tagName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_name'],
      )!,
      tagColor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_color'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordTagsTable createAlias(String alias) {
    return $RecordTagsTable(attachedDatabase, alias);
  }
}

class RecordTag extends DataClass implements Insertable<RecordTag> {
  final int id;
  final int recordId;
  final String tagName;
  final String? tagColor;
  final DateTime createdAt;
  const RecordTag({
    required this.id,
    required this.recordId,
    required this.tagName,
    this.tagColor,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_id'] = Variable<int>(recordId);
    map['tag_name'] = Variable<String>(tagName);
    if (!nullToAbsent || tagColor != null) {
      map['tag_color'] = Variable<String>(tagColor);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordTagsCompanion toCompanion(bool nullToAbsent) {
    return RecordTagsCompanion(
      id: Value(id),
      recordId: Value(recordId),
      tagName: Value(tagName),
      tagColor: tagColor == null && nullToAbsent
          ? const Value.absent()
          : Value(tagColor),
      createdAt: Value(createdAt),
    );
  }

  factory RecordTag.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordTag(
      id: serializer.fromJson<int>(json['id']),
      recordId: serializer.fromJson<int>(json['recordId']),
      tagName: serializer.fromJson<String>(json['tagName']),
      tagColor: serializer.fromJson<String?>(json['tagColor']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordId': serializer.toJson<int>(recordId),
      'tagName': serializer.toJson<String>(tagName),
      'tagColor': serializer.toJson<String?>(tagColor),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordTag copyWith({
    int? id,
    int? recordId,
    String? tagName,
    Value<String?> tagColor = const Value.absent(),
    DateTime? createdAt,
  }) => RecordTag(
    id: id ?? this.id,
    recordId: recordId ?? this.recordId,
    tagName: tagName ?? this.tagName,
    tagColor: tagColor.present ? tagColor.value : this.tagColor,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordTag copyWithCompanion(RecordTagsCompanion data) {
    return RecordTag(
      id: data.id.present ? data.id.value : this.id,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      tagName: data.tagName.present ? data.tagName.value : this.tagName,
      tagColor: data.tagColor.present ? data.tagColor.value : this.tagColor,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordTag(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('tagName: $tagName, ')
          ..write('tagColor: $tagColor, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, recordId, tagName, tagColor, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordTag &&
          other.id == this.id &&
          other.recordId == this.recordId &&
          other.tagName == this.tagName &&
          other.tagColor == this.tagColor &&
          other.createdAt == this.createdAt);
}

class RecordTagsCompanion extends UpdateCompanion<RecordTag> {
  final Value<int> id;
  final Value<int> recordId;
  final Value<String> tagName;
  final Value<String?> tagColor;
  final Value<DateTime> createdAt;
  const RecordTagsCompanion({
    this.id = const Value.absent(),
    this.recordId = const Value.absent(),
    this.tagName = const Value.absent(),
    this.tagColor = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordTagsCompanion.insert({
    this.id = const Value.absent(),
    required int recordId,
    required String tagName,
    this.tagColor = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordId = Value(recordId),
       tagName = Value(tagName);
  static Insertable<RecordTag> custom({
    Expression<int>? id,
    Expression<int>? recordId,
    Expression<String>? tagName,
    Expression<String>? tagColor,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordId != null) 'record_id': recordId,
      if (tagName != null) 'tag_name': tagName,
      if (tagColor != null) 'tag_color': tagColor,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordTagsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordId,
    Value<String>? tagName,
    Value<String?>? tagColor,
    Value<DateTime>? createdAt,
  }) {
    return RecordTagsCompanion(
      id: id ?? this.id,
      recordId: recordId ?? this.recordId,
      tagName: tagName ?? this.tagName,
      tagColor: tagColor ?? this.tagColor,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (tagName.present) {
      map['tag_name'] = Variable<String>(tagName.value);
    }
    if (tagColor.present) {
      map['tag_color'] = Variable<String>(tagColor.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordTagsCompanion(')
          ..write('id: $id, ')
          ..write('recordId: $recordId, ')
          ..write('tagName: $tagName, ')
          ..write('tagColor: $tagColor, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $CategoryRecordsTable extends CategoryRecords
    with TableInfo<$CategoryRecordsTable, CategoryRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryRecordsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES categories (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _recordIdMeta = const VerificationMeta(
    'recordId',
  );
  @override
  late final GeneratedColumn<int> recordId = GeneratedColumn<int>(
    'record_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES records (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [id, categoryId, recordId, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_records';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryRecord> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  List<Set<GeneratedColumn>> get uniqueKeys => [
    {categoryId, recordId},
  ];
  @override
  CategoryRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryRecord(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $CategoryRecordsTable createAlias(String alias) {
    return $CategoryRecordsTable(attachedDatabase, alias);
  }
}

class CategoryRecord extends DataClass implements Insertable<CategoryRecord> {
  final int id;
  final int categoryId;
  final int recordId;
  final DateTime createdAt;
  const CategoryRecord({
    required this.id,
    required this.categoryId,
    required this.recordId,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category_id'] = Variable<int>(categoryId);
    map['record_id'] = Variable<int>(recordId);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  CategoryRecordsCompanion toCompanion(bool nullToAbsent) {
    return CategoryRecordsCompanion(
      id: Value(id),
      categoryId: Value(categoryId),
      recordId: Value(recordId),
      createdAt: Value(createdAt),
    );
  }

  factory CategoryRecord.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryRecord(
      id: serializer.fromJson<int>(json['id']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryId': serializer.toJson<int>(categoryId),
      'recordId': serializer.toJson<int>(recordId),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  CategoryRecord copyWith({
    int? id,
    int? categoryId,
    int? recordId,
    DateTime? createdAt,
  }) => CategoryRecord(
    id: id ?? this.id,
    categoryId: categoryId ?? this.categoryId,
    recordId: recordId ?? this.recordId,
    createdAt: createdAt ?? this.createdAt,
  );
  CategoryRecord copyWithCompanion(CategoryRecordsCompanion data) {
    return CategoryRecord(
      id: data.id.present ? data.id.value : this.id,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryRecord(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('recordId: $recordId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, categoryId, recordId, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryRecord &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.recordId == this.recordId &&
          other.createdAt == this.createdAt);
}

class CategoryRecordsCompanion extends UpdateCompanion<CategoryRecord> {
  final Value<int> id;
  final Value<int> categoryId;
  final Value<int> recordId;
  final Value<DateTime> createdAt;
  const CategoryRecordsCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  CategoryRecordsCompanion.insert({
    this.id = const Value.absent(),
    required int categoryId,
    required int recordId,
    this.createdAt = const Value.absent(),
  }) : categoryId = Value(categoryId),
       recordId = Value(recordId);
  static Insertable<CategoryRecord> custom({
    Expression<int>? id,
    Expression<int>? categoryId,
    Expression<int>? recordId,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (recordId != null) 'record_id': recordId,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  CategoryRecordsCompanion copyWith({
    Value<int>? id,
    Value<int>? categoryId,
    Value<int>? recordId,
    Value<DateTime>? createdAt,
  }) {
    return CategoryRecordsCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      recordId: recordId ?? this.recordId,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryRecordsCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('recordId: $recordId, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordTypeConfigsTable extends RecordTypeConfigs
    with TableInfo<$RecordTypeConfigsTable, RecordTypeConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordTypeConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _configKeyMeta = const VerificationMeta(
    'configKey',
  );
  @override
  late final GeneratedColumn<String> configKey = GeneratedColumn<String>(
    'config_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _configValueMeta = const VerificationMeta(
    'configValue',
  );
  @override
  late final GeneratedColumn<String> configValue = GeneratedColumn<String>(
    'config_value',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _configTypeMeta = const VerificationMeta(
    'configType',
  );
  @override
  late final GeneratedColumn<String> configType = GeneratedColumn<String>(
    'config_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('string'),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    configKey,
    configValue,
    configType,
    createdAt,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_type_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordTypeConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('config_key')) {
      context.handle(
        _configKeyMeta,
        configKey.isAcceptableOrUnknown(data['config_key']!, _configKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_configKeyMeta);
    }
    if (data.containsKey('config_value')) {
      context.handle(
        _configValueMeta,
        configValue.isAcceptableOrUnknown(
          data['config_value']!,
          _configValueMeta,
        ),
      );
    }
    if (data.containsKey('config_type')) {
      context.handle(
        _configTypeMeta,
        configType.isAcceptableOrUnknown(data['config_type']!, _configTypeMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordTypeConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordTypeConfig(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      configKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}config_key'],
      )!,
      configValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}config_value'],
      ),
      configType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}config_type'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      ),
    );
  }

  @override
  $RecordTypeConfigsTable createAlias(String alias) {
    return $RecordTypeConfigsTable(attachedDatabase, alias);
  }
}

class RecordTypeConfig extends DataClass
    implements Insertable<RecordTypeConfig> {
  final int id;
  final int recordTypeId;
  final String configKey;
  final String? configValue;
  final String configType;
  final DateTime createdAt;
  final DateTime? updatedAt;
  const RecordTypeConfig({
    required this.id,
    required this.recordTypeId,
    required this.configKey,
    this.configValue,
    required this.configType,
    required this.createdAt,
    this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    map['config_key'] = Variable<String>(configKey);
    if (!nullToAbsent || configValue != null) {
      map['config_value'] = Variable<String>(configValue);
    }
    map['config_type'] = Variable<String>(configType);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  RecordTypeConfigsCompanion toCompanion(bool nullToAbsent) {
    return RecordTypeConfigsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      configKey: Value(configKey),
      configValue: configValue == null && nullToAbsent
          ? const Value.absent()
          : Value(configValue),
      configType: Value(configType),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory RecordTypeConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordTypeConfig(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      configKey: serializer.fromJson<String>(json['configKey']),
      configValue: serializer.fromJson<String?>(json['configValue']),
      configType: serializer.fromJson<String>(json['configType']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'configKey': serializer.toJson<String>(configKey),
      'configValue': serializer.toJson<String?>(configValue),
      'configType': serializer.toJson<String>(configType),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  RecordTypeConfig copyWith({
    int? id,
    int? recordTypeId,
    String? configKey,
    Value<String?> configValue = const Value.absent(),
    String? configType,
    DateTime? createdAt,
    Value<DateTime?> updatedAt = const Value.absent(),
  }) => RecordTypeConfig(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    configKey: configKey ?? this.configKey,
    configValue: configValue.present ? configValue.value : this.configValue,
    configType: configType ?? this.configType,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
  );
  RecordTypeConfig copyWithCompanion(RecordTypeConfigsCompanion data) {
    return RecordTypeConfig(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      configKey: data.configKey.present ? data.configKey.value : this.configKey,
      configValue: data.configValue.present
          ? data.configValue.value
          : this.configValue,
      configType: data.configType.present
          ? data.configType.value
          : this.configType,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordTypeConfig(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('configKey: $configKey, ')
          ..write('configValue: $configValue, ')
          ..write('configType: $configType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordTypeId,
    configKey,
    configValue,
    configType,
    createdAt,
    updatedAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordTypeConfig &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.configKey == this.configKey &&
          other.configValue == this.configValue &&
          other.configType == this.configType &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class RecordTypeConfigsCompanion extends UpdateCompanion<RecordTypeConfig> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<String> configKey;
  final Value<String?> configValue;
  final Value<String> configType;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  const RecordTypeConfigsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.configKey = const Value.absent(),
    this.configValue = const Value.absent(),
    this.configType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  RecordTypeConfigsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    required String configKey,
    this.configValue = const Value.absent(),
    this.configType = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId),
       configKey = Value(configKey);
  static Insertable<RecordTypeConfig> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<String>? configKey,
    Expression<String>? configValue,
    Expression<String>? configType,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (configKey != null) 'config_key': configKey,
      if (configValue != null) 'config_value': configValue,
      if (configType != null) 'config_type': configType,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  RecordTypeConfigsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<String>? configKey,
    Value<String?>? configValue,
    Value<String>? configType,
    Value<DateTime>? createdAt,
    Value<DateTime?>? updatedAt,
  }) {
    return RecordTypeConfigsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      configKey: configKey ?? this.configKey,
      configValue: configValue ?? this.configValue,
      configType: configType ?? this.configType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (configKey.present) {
      map['config_key'] = Variable<String>(configKey.value);
    }
    if (configValue.present) {
      map['config_value'] = Variable<String>(configValue.value);
    }
    if (configType.present) {
      map['config_type'] = Variable<String>(configType.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordTypeConfigsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('configKey: $configKey, ')
          ..write('configValue: $configValue, ')
          ..write('configType: $configType, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $RecordStepConfigsTable extends RecordStepConfigs
    with TableInfo<$RecordStepConfigsTable, RecordStepConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordStepConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _stepNameMeta = const VerificationMeta(
    'stepName',
  );
  @override
  late final GeneratedColumn<String> stepName = GeneratedColumn<String>(
    'step_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _stepDescriptionMeta = const VerificationMeta(
    'stepDescription',
  );
  @override
  late final GeneratedColumn<String> stepDescription = GeneratedColumn<String>(
    'step_description',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _stepOrderMeta = const VerificationMeta(
    'stepOrder',
  );
  @override
  late final GeneratedColumn<int> stepOrder = GeneratedColumn<int>(
    'step_order',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _requiredMeta = const VerificationMeta(
    'required',
  );
  @override
  late final GeneratedColumn<bool> required = GeneratedColumn<bool>(
    'required',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("required" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _allowSkipMeta = const VerificationMeta(
    'allowSkip',
  );
  @override
  late final GeneratedColumn<bool> allowSkip = GeneratedColumn<bool>(
    'allow_skip',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("allow_skip" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    stepName,
    stepDescription,
    stepOrder,
    required,
    allowSkip,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_step_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordStepConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('step_name')) {
      context.handle(
        _stepNameMeta,
        stepName.isAcceptableOrUnknown(data['step_name']!, _stepNameMeta),
      );
    } else if (isInserting) {
      context.missing(_stepNameMeta);
    }
    if (data.containsKey('step_description')) {
      context.handle(
        _stepDescriptionMeta,
        stepDescription.isAcceptableOrUnknown(
          data['step_description']!,
          _stepDescriptionMeta,
        ),
      );
    }
    if (data.containsKey('step_order')) {
      context.handle(
        _stepOrderMeta,
        stepOrder.isAcceptableOrUnknown(data['step_order']!, _stepOrderMeta),
      );
    } else if (isInserting) {
      context.missing(_stepOrderMeta);
    }
    if (data.containsKey('required')) {
      context.handle(
        _requiredMeta,
        required.isAcceptableOrUnknown(data['required']!, _requiredMeta),
      );
    }
    if (data.containsKey('allow_skip')) {
      context.handle(
        _allowSkipMeta,
        allowSkip.isAcceptableOrUnknown(data['allow_skip']!, _allowSkipMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordStepConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordStepConfig(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      stepName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}step_name'],
      )!,
      stepDescription: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}step_description'],
      ),
      stepOrder: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_order'],
      )!,
      required: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}required'],
      )!,
      allowSkip: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}allow_skip'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordStepConfigsTable createAlias(String alias) {
    return $RecordStepConfigsTable(attachedDatabase, alias);
  }
}

class RecordStepConfig extends DataClass
    implements Insertable<RecordStepConfig> {
  final int id;
  final int recordTypeId;
  final String stepName;
  final String? stepDescription;
  final int stepOrder;
  final bool required;
  final bool allowSkip;
  final DateTime createdAt;
  const RecordStepConfig({
    required this.id,
    required this.recordTypeId,
    required this.stepName,
    this.stepDescription,
    required this.stepOrder,
    required this.required,
    required this.allowSkip,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    map['step_name'] = Variable<String>(stepName);
    if (!nullToAbsent || stepDescription != null) {
      map['step_description'] = Variable<String>(stepDescription);
    }
    map['step_order'] = Variable<int>(stepOrder);
    map['required'] = Variable<bool>(required);
    map['allow_skip'] = Variable<bool>(allowSkip);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordStepConfigsCompanion toCompanion(bool nullToAbsent) {
    return RecordStepConfigsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      stepName: Value(stepName),
      stepDescription: stepDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(stepDescription),
      stepOrder: Value(stepOrder),
      required: Value(required),
      allowSkip: Value(allowSkip),
      createdAt: Value(createdAt),
    );
  }

  factory RecordStepConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordStepConfig(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      stepName: serializer.fromJson<String>(json['stepName']),
      stepDescription: serializer.fromJson<String?>(json['stepDescription']),
      stepOrder: serializer.fromJson<int>(json['stepOrder']),
      required: serializer.fromJson<bool>(json['required']),
      allowSkip: serializer.fromJson<bool>(json['allowSkip']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'stepName': serializer.toJson<String>(stepName),
      'stepDescription': serializer.toJson<String?>(stepDescription),
      'stepOrder': serializer.toJson<int>(stepOrder),
      'required': serializer.toJson<bool>(required),
      'allowSkip': serializer.toJson<bool>(allowSkip),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordStepConfig copyWith({
    int? id,
    int? recordTypeId,
    String? stepName,
    Value<String?> stepDescription = const Value.absent(),
    int? stepOrder,
    bool? required,
    bool? allowSkip,
    DateTime? createdAt,
  }) => RecordStepConfig(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    stepName: stepName ?? this.stepName,
    stepDescription: stepDescription.present
        ? stepDescription.value
        : this.stepDescription,
    stepOrder: stepOrder ?? this.stepOrder,
    required: required ?? this.required,
    allowSkip: allowSkip ?? this.allowSkip,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordStepConfig copyWithCompanion(RecordStepConfigsCompanion data) {
    return RecordStepConfig(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      stepName: data.stepName.present ? data.stepName.value : this.stepName,
      stepDescription: data.stepDescription.present
          ? data.stepDescription.value
          : this.stepDescription,
      stepOrder: data.stepOrder.present ? data.stepOrder.value : this.stepOrder,
      required: data.required.present ? data.required.value : this.required,
      allowSkip: data.allowSkip.present ? data.allowSkip.value : this.allowSkip,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordStepConfig(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('stepName: $stepName, ')
          ..write('stepDescription: $stepDescription, ')
          ..write('stepOrder: $stepOrder, ')
          ..write('required: $required, ')
          ..write('allowSkip: $allowSkip, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordTypeId,
    stepName,
    stepDescription,
    stepOrder,
    required,
    allowSkip,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordStepConfig &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.stepName == this.stepName &&
          other.stepDescription == this.stepDescription &&
          other.stepOrder == this.stepOrder &&
          other.required == this.required &&
          other.allowSkip == this.allowSkip &&
          other.createdAt == this.createdAt);
}

class RecordStepConfigsCompanion extends UpdateCompanion<RecordStepConfig> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<String> stepName;
  final Value<String?> stepDescription;
  final Value<int> stepOrder;
  final Value<bool> required;
  final Value<bool> allowSkip;
  final Value<DateTime> createdAt;
  const RecordStepConfigsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.stepName = const Value.absent(),
    this.stepDescription = const Value.absent(),
    this.stepOrder = const Value.absent(),
    this.required = const Value.absent(),
    this.allowSkip = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordStepConfigsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    required String stepName,
    this.stepDescription = const Value.absent(),
    required int stepOrder,
    this.required = const Value.absent(),
    this.allowSkip = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId),
       stepName = Value(stepName),
       stepOrder = Value(stepOrder);
  static Insertable<RecordStepConfig> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<String>? stepName,
    Expression<String>? stepDescription,
    Expression<int>? stepOrder,
    Expression<bool>? required,
    Expression<bool>? allowSkip,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (stepName != null) 'step_name': stepName,
      if (stepDescription != null) 'step_description': stepDescription,
      if (stepOrder != null) 'step_order': stepOrder,
      if (required != null) 'required': required,
      if (allowSkip != null) 'allow_skip': allowSkip,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordStepConfigsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<String>? stepName,
    Value<String?>? stepDescription,
    Value<int>? stepOrder,
    Value<bool>? required,
    Value<bool>? allowSkip,
    Value<DateTime>? createdAt,
  }) {
    return RecordStepConfigsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      stepName: stepName ?? this.stepName,
      stepDescription: stepDescription ?? this.stepDescription,
      stepOrder: stepOrder ?? this.stepOrder,
      required: required ?? this.required,
      allowSkip: allowSkip ?? this.allowSkip,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (stepName.present) {
      map['step_name'] = Variable<String>(stepName.value);
    }
    if (stepDescription.present) {
      map['step_description'] = Variable<String>(stepDescription.value);
    }
    if (stepOrder.present) {
      map['step_order'] = Variable<int>(stepOrder.value);
    }
    if (required.present) {
      map['required'] = Variable<bool>(required.value);
    }
    if (allowSkip.present) {
      map['allow_skip'] = Variable<bool>(allowSkip.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordStepConfigsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('stepName: $stepName, ')
          ..write('stepDescription: $stepDescription, ')
          ..write('stepOrder: $stepOrder, ')
          ..write('required: $required, ')
          ..write('allowSkip: $allowSkip, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordValueConfigsTable extends RecordValueConfigs
    with TableInfo<$RecordValueConfigsTable, RecordValueConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordValueConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _fieldNameMeta = const VerificationMeta(
    'fieldName',
  );
  @override
  late final GeneratedColumn<String> fieldName = GeneratedColumn<String>(
    'field_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fieldLabelMeta = const VerificationMeta(
    'fieldLabel',
  );
  @override
  late final GeneratedColumn<String> fieldLabel = GeneratedColumn<String>(
    'field_label',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _fieldTypeMeta = const VerificationMeta(
    'fieldType',
  );
  @override
  late final GeneratedColumn<String> fieldType = GeneratedColumn<String>(
    'field_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('numeric'),
  );
  static const VerificationMeta _unitMeta = const VerificationMeta('unit');
  @override
  late final GeneratedColumn<String> unit = GeneratedColumn<String>(
    'unit',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _minValueMeta = const VerificationMeta(
    'minValue',
  );
  @override
  late final GeneratedColumn<double> minValue = GeneratedColumn<double>(
    'min_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _maxValueMeta = const VerificationMeta(
    'maxValue',
  );
  @override
  late final GeneratedColumn<double> maxValue = GeneratedColumn<double>(
    'max_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _defaultValueMeta = const VerificationMeta(
    'defaultValue',
  );
  @override
  late final GeneratedColumn<double> defaultValue = GeneratedColumn<double>(
    'default_value',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _selectionOptionsMeta = const VerificationMeta(
    'selectionOptions',
  );
  @override
  late final GeneratedColumn<String> selectionOptions = GeneratedColumn<String>(
    'selection_options',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isRequiredMeta = const VerificationMeta(
    'isRequired',
  );
  @override
  late final GeneratedColumn<bool> isRequired = GeneratedColumn<bool>(
    'is_required',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_required" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    fieldName,
    fieldLabel,
    fieldType,
    unit,
    minValue,
    maxValue,
    defaultValue,
    selectionOptions,
    isRequired,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_value_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordValueConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('field_name')) {
      context.handle(
        _fieldNameMeta,
        fieldName.isAcceptableOrUnknown(data['field_name']!, _fieldNameMeta),
      );
    } else if (isInserting) {
      context.missing(_fieldNameMeta);
    }
    if (data.containsKey('field_label')) {
      context.handle(
        _fieldLabelMeta,
        fieldLabel.isAcceptableOrUnknown(data['field_label']!, _fieldLabelMeta),
      );
    }
    if (data.containsKey('field_type')) {
      context.handle(
        _fieldTypeMeta,
        fieldType.isAcceptableOrUnknown(data['field_type']!, _fieldTypeMeta),
      );
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    if (data.containsKey('min_value')) {
      context.handle(
        _minValueMeta,
        minValue.isAcceptableOrUnknown(data['min_value']!, _minValueMeta),
      );
    }
    if (data.containsKey('max_value')) {
      context.handle(
        _maxValueMeta,
        maxValue.isAcceptableOrUnknown(data['max_value']!, _maxValueMeta),
      );
    }
    if (data.containsKey('default_value')) {
      context.handle(
        _defaultValueMeta,
        defaultValue.isAcceptableOrUnknown(
          data['default_value']!,
          _defaultValueMeta,
        ),
      );
    }
    if (data.containsKey('selection_options')) {
      context.handle(
        _selectionOptionsMeta,
        selectionOptions.isAcceptableOrUnknown(
          data['selection_options']!,
          _selectionOptionsMeta,
        ),
      );
    }
    if (data.containsKey('is_required')) {
      context.handle(
        _isRequiredMeta,
        isRequired.isAcceptableOrUnknown(data['is_required']!, _isRequiredMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordValueConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordValueConfig(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      fieldName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_name'],
      )!,
      fieldLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_label'],
      ),
      fieldType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}field_type'],
      )!,
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      ),
      minValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}min_value'],
      ),
      maxValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}max_value'],
      ),
      defaultValue: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}default_value'],
      ),
      selectionOptions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selection_options'],
      ),
      isRequired: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_required'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordValueConfigsTable createAlias(String alias) {
    return $RecordValueConfigsTable(attachedDatabase, alias);
  }
}

class RecordValueConfig extends DataClass
    implements Insertable<RecordValueConfig> {
  final int id;
  final int recordTypeId;
  final String fieldName;
  final String? fieldLabel;
  final String fieldType;
  final String? unit;
  final double? minValue;
  final double? maxValue;
  final double? defaultValue;
  final String? selectionOptions;
  final bool isRequired;
  final DateTime createdAt;
  const RecordValueConfig({
    required this.id,
    required this.recordTypeId,
    required this.fieldName,
    this.fieldLabel,
    required this.fieldType,
    this.unit,
    this.minValue,
    this.maxValue,
    this.defaultValue,
    this.selectionOptions,
    required this.isRequired,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    map['field_name'] = Variable<String>(fieldName);
    if (!nullToAbsent || fieldLabel != null) {
      map['field_label'] = Variable<String>(fieldLabel);
    }
    map['field_type'] = Variable<String>(fieldType);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    if (!nullToAbsent || minValue != null) {
      map['min_value'] = Variable<double>(minValue);
    }
    if (!nullToAbsent || maxValue != null) {
      map['max_value'] = Variable<double>(maxValue);
    }
    if (!nullToAbsent || defaultValue != null) {
      map['default_value'] = Variable<double>(defaultValue);
    }
    if (!nullToAbsent || selectionOptions != null) {
      map['selection_options'] = Variable<String>(selectionOptions);
    }
    map['is_required'] = Variable<bool>(isRequired);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordValueConfigsCompanion toCompanion(bool nullToAbsent) {
    return RecordValueConfigsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      fieldName: Value(fieldName),
      fieldLabel: fieldLabel == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldLabel),
      fieldType: Value(fieldType),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
      minValue: minValue == null && nullToAbsent
          ? const Value.absent()
          : Value(minValue),
      maxValue: maxValue == null && nullToAbsent
          ? const Value.absent()
          : Value(maxValue),
      defaultValue: defaultValue == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultValue),
      selectionOptions: selectionOptions == null && nullToAbsent
          ? const Value.absent()
          : Value(selectionOptions),
      isRequired: Value(isRequired),
      createdAt: Value(createdAt),
    );
  }

  factory RecordValueConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordValueConfig(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      fieldName: serializer.fromJson<String>(json['fieldName']),
      fieldLabel: serializer.fromJson<String?>(json['fieldLabel']),
      fieldType: serializer.fromJson<String>(json['fieldType']),
      unit: serializer.fromJson<String?>(json['unit']),
      minValue: serializer.fromJson<double?>(json['minValue']),
      maxValue: serializer.fromJson<double?>(json['maxValue']),
      defaultValue: serializer.fromJson<double?>(json['defaultValue']),
      selectionOptions: serializer.fromJson<String?>(json['selectionOptions']),
      isRequired: serializer.fromJson<bool>(json['isRequired']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'fieldName': serializer.toJson<String>(fieldName),
      'fieldLabel': serializer.toJson<String?>(fieldLabel),
      'fieldType': serializer.toJson<String>(fieldType),
      'unit': serializer.toJson<String?>(unit),
      'minValue': serializer.toJson<double?>(minValue),
      'maxValue': serializer.toJson<double?>(maxValue),
      'defaultValue': serializer.toJson<double?>(defaultValue),
      'selectionOptions': serializer.toJson<String?>(selectionOptions),
      'isRequired': serializer.toJson<bool>(isRequired),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  RecordValueConfig copyWith({
    int? id,
    int? recordTypeId,
    String? fieldName,
    Value<String?> fieldLabel = const Value.absent(),
    String? fieldType,
    Value<String?> unit = const Value.absent(),
    Value<double?> minValue = const Value.absent(),
    Value<double?> maxValue = const Value.absent(),
    Value<double?> defaultValue = const Value.absent(),
    Value<String?> selectionOptions = const Value.absent(),
    bool? isRequired,
    DateTime? createdAt,
  }) => RecordValueConfig(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    fieldName: fieldName ?? this.fieldName,
    fieldLabel: fieldLabel.present ? fieldLabel.value : this.fieldLabel,
    fieldType: fieldType ?? this.fieldType,
    unit: unit.present ? unit.value : this.unit,
    minValue: minValue.present ? minValue.value : this.minValue,
    maxValue: maxValue.present ? maxValue.value : this.maxValue,
    defaultValue: defaultValue.present ? defaultValue.value : this.defaultValue,
    selectionOptions: selectionOptions.present
        ? selectionOptions.value
        : this.selectionOptions,
    isRequired: isRequired ?? this.isRequired,
    createdAt: createdAt ?? this.createdAt,
  );
  RecordValueConfig copyWithCompanion(RecordValueConfigsCompanion data) {
    return RecordValueConfig(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      fieldName: data.fieldName.present ? data.fieldName.value : this.fieldName,
      fieldLabel: data.fieldLabel.present
          ? data.fieldLabel.value
          : this.fieldLabel,
      fieldType: data.fieldType.present ? data.fieldType.value : this.fieldType,
      unit: data.unit.present ? data.unit.value : this.unit,
      minValue: data.minValue.present ? data.minValue.value : this.minValue,
      maxValue: data.maxValue.present ? data.maxValue.value : this.maxValue,
      defaultValue: data.defaultValue.present
          ? data.defaultValue.value
          : this.defaultValue,
      selectionOptions: data.selectionOptions.present
          ? data.selectionOptions.value
          : this.selectionOptions,
      isRequired: data.isRequired.present
          ? data.isRequired.value
          : this.isRequired,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordValueConfig(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldLabel: $fieldLabel, ')
          ..write('fieldType: $fieldType, ')
          ..write('unit: $unit, ')
          ..write('minValue: $minValue, ')
          ..write('maxValue: $maxValue, ')
          ..write('defaultValue: $defaultValue, ')
          ..write('selectionOptions: $selectionOptions, ')
          ..write('isRequired: $isRequired, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordTypeId,
    fieldName,
    fieldLabel,
    fieldType,
    unit,
    minValue,
    maxValue,
    defaultValue,
    selectionOptions,
    isRequired,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordValueConfig &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.fieldName == this.fieldName &&
          other.fieldLabel == this.fieldLabel &&
          other.fieldType == this.fieldType &&
          other.unit == this.unit &&
          other.minValue == this.minValue &&
          other.maxValue == this.maxValue &&
          other.defaultValue == this.defaultValue &&
          other.selectionOptions == this.selectionOptions &&
          other.isRequired == this.isRequired &&
          other.createdAt == this.createdAt);
}

class RecordValueConfigsCompanion extends UpdateCompanion<RecordValueConfig> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<String> fieldName;
  final Value<String?> fieldLabel;
  final Value<String> fieldType;
  final Value<String?> unit;
  final Value<double?> minValue;
  final Value<double?> maxValue;
  final Value<double?> defaultValue;
  final Value<String?> selectionOptions;
  final Value<bool> isRequired;
  final Value<DateTime> createdAt;
  const RecordValueConfigsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.fieldLabel = const Value.absent(),
    this.fieldType = const Value.absent(),
    this.unit = const Value.absent(),
    this.minValue = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.defaultValue = const Value.absent(),
    this.selectionOptions = const Value.absent(),
    this.isRequired = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordValueConfigsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    required String fieldName,
    this.fieldLabel = const Value.absent(),
    this.fieldType = const Value.absent(),
    this.unit = const Value.absent(),
    this.minValue = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.defaultValue = const Value.absent(),
    this.selectionOptions = const Value.absent(),
    this.isRequired = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId),
       fieldName = Value(fieldName);
  static Insertable<RecordValueConfig> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<String>? fieldName,
    Expression<String>? fieldLabel,
    Expression<String>? fieldType,
    Expression<String>? unit,
    Expression<double>? minValue,
    Expression<double>? maxValue,
    Expression<double>? defaultValue,
    Expression<String>? selectionOptions,
    Expression<bool>? isRequired,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (fieldName != null) 'field_name': fieldName,
      if (fieldLabel != null) 'field_label': fieldLabel,
      if (fieldType != null) 'field_type': fieldType,
      if (unit != null) 'unit': unit,
      if (minValue != null) 'min_value': minValue,
      if (maxValue != null) 'max_value': maxValue,
      if (defaultValue != null) 'default_value': defaultValue,
      if (selectionOptions != null) 'selection_options': selectionOptions,
      if (isRequired != null) 'is_required': isRequired,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordValueConfigsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<String>? fieldName,
    Value<String?>? fieldLabel,
    Value<String>? fieldType,
    Value<String?>? unit,
    Value<double?>? minValue,
    Value<double?>? maxValue,
    Value<double?>? defaultValue,
    Value<String?>? selectionOptions,
    Value<bool>? isRequired,
    Value<DateTime>? createdAt,
  }) {
    return RecordValueConfigsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      fieldName: fieldName ?? this.fieldName,
      fieldLabel: fieldLabel ?? this.fieldLabel,
      fieldType: fieldType ?? this.fieldType,
      unit: unit ?? this.unit,
      minValue: minValue ?? this.minValue,
      maxValue: maxValue ?? this.maxValue,
      defaultValue: defaultValue ?? this.defaultValue,
      selectionOptions: selectionOptions ?? this.selectionOptions,
      isRequired: isRequired ?? this.isRequired,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (fieldName.present) {
      map['field_name'] = Variable<String>(fieldName.value);
    }
    if (fieldLabel.present) {
      map['field_label'] = Variable<String>(fieldLabel.value);
    }
    if (fieldType.present) {
      map['field_type'] = Variable<String>(fieldType.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    if (minValue.present) {
      map['min_value'] = Variable<double>(minValue.value);
    }
    if (maxValue.present) {
      map['max_value'] = Variable<double>(maxValue.value);
    }
    if (defaultValue.present) {
      map['default_value'] = Variable<double>(defaultValue.value);
    }
    if (selectionOptions.present) {
      map['selection_options'] = Variable<String>(selectionOptions.value);
    }
    if (isRequired.present) {
      map['is_required'] = Variable<bool>(isRequired.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordValueConfigsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldLabel: $fieldLabel, ')
          ..write('fieldType: $fieldType, ')
          ..write('unit: $unit, ')
          ..write('minValue: $minValue, ')
          ..write('maxValue: $maxValue, ')
          ..write('defaultValue: $defaultValue, ')
          ..write('selectionOptions: $selectionOptions, ')
          ..write('isRequired: $isRequired, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $TagConfigsTable extends TagConfigs
    with TableInfo<$TagConfigsTable, TagConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _tagNameMeta = const VerificationMeta(
    'tagName',
  );
  @override
  late final GeneratedColumn<String> tagName = GeneratedColumn<String>(
    'tag_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _tagColorMeta = const VerificationMeta(
    'tagColor',
  );
  @override
  late final GeneratedColumn<String> tagColor = GeneratedColumn<String>(
    'tag_color',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isPresetMeta = const VerificationMeta(
    'isPreset',
  );
  @override
  late final GeneratedColumn<bool> isPreset = GeneratedColumn<bool>(
    'is_preset',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_preset" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    tagName,
    tagColor,
    isPreset,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tag_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<TagConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('tag_name')) {
      context.handle(
        _tagNameMeta,
        tagName.isAcceptableOrUnknown(data['tag_name']!, _tagNameMeta),
      );
    } else if (isInserting) {
      context.missing(_tagNameMeta);
    }
    if (data.containsKey('tag_color')) {
      context.handle(
        _tagColorMeta,
        tagColor.isAcceptableOrUnknown(data['tag_color']!, _tagColorMeta),
      );
    }
    if (data.containsKey('is_preset')) {
      context.handle(
        _isPresetMeta,
        isPreset.isAcceptableOrUnknown(data['is_preset']!, _isPresetMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TagConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagConfig(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      tagName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_name'],
      )!,
      tagColor: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tag_color'],
      ),
      isPreset: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_preset'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $TagConfigsTable createAlias(String alias) {
    return $TagConfigsTable(attachedDatabase, alias);
  }
}

class TagConfig extends DataClass implements Insertable<TagConfig> {
  final int id;
  final int recordTypeId;
  final String tagName;
  final String? tagColor;
  final bool isPreset;
  final DateTime createdAt;
  const TagConfig({
    required this.id,
    required this.recordTypeId,
    required this.tagName,
    this.tagColor,
    required this.isPreset,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    map['tag_name'] = Variable<String>(tagName);
    if (!nullToAbsent || tagColor != null) {
      map['tag_color'] = Variable<String>(tagColor);
    }
    map['is_preset'] = Variable<bool>(isPreset);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TagConfigsCompanion toCompanion(bool nullToAbsent) {
    return TagConfigsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      tagName: Value(tagName),
      tagColor: tagColor == null && nullToAbsent
          ? const Value.absent()
          : Value(tagColor),
      isPreset: Value(isPreset),
      createdAt: Value(createdAt),
    );
  }

  factory TagConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagConfig(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      tagName: serializer.fromJson<String>(json['tagName']),
      tagColor: serializer.fromJson<String?>(json['tagColor']),
      isPreset: serializer.fromJson<bool>(json['isPreset']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'tagName': serializer.toJson<String>(tagName),
      'tagColor': serializer.toJson<String?>(tagColor),
      'isPreset': serializer.toJson<bool>(isPreset),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  TagConfig copyWith({
    int? id,
    int? recordTypeId,
    String? tagName,
    Value<String?> tagColor = const Value.absent(),
    bool? isPreset,
    DateTime? createdAt,
  }) => TagConfig(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    tagName: tagName ?? this.tagName,
    tagColor: tagColor.present ? tagColor.value : this.tagColor,
    isPreset: isPreset ?? this.isPreset,
    createdAt: createdAt ?? this.createdAt,
  );
  TagConfig copyWithCompanion(TagConfigsCompanion data) {
    return TagConfig(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      tagName: data.tagName.present ? data.tagName.value : this.tagName,
      tagColor: data.tagColor.present ? data.tagColor.value : this.tagColor,
      isPreset: data.isPreset.present ? data.isPreset.value : this.isPreset,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagConfig(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('tagName: $tagName, ')
          ..write('tagColor: $tagColor, ')
          ..write('isPreset: $isPreset, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, recordTypeId, tagName, tagColor, isPreset, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagConfig &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.tagName == this.tagName &&
          other.tagColor == this.tagColor &&
          other.isPreset == this.isPreset &&
          other.createdAt == this.createdAt);
}

class TagConfigsCompanion extends UpdateCompanion<TagConfig> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<String> tagName;
  final Value<String?> tagColor;
  final Value<bool> isPreset;
  final Value<DateTime> createdAt;
  const TagConfigsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.tagName = const Value.absent(),
    this.tagColor = const Value.absent(),
    this.isPreset = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TagConfigsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    required String tagName,
    this.tagColor = const Value.absent(),
    this.isPreset = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId),
       tagName = Value(tagName);
  static Insertable<TagConfig> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<String>? tagName,
    Expression<String>? tagColor,
    Expression<bool>? isPreset,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (tagName != null) 'tag_name': tagName,
      if (tagColor != null) 'tag_color': tagColor,
      if (isPreset != null) 'is_preset': isPreset,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TagConfigsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<String>? tagName,
    Value<String?>? tagColor,
    Value<bool>? isPreset,
    Value<DateTime>? createdAt,
  }) {
    return TagConfigsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      tagName: tagName ?? this.tagName,
      tagColor: tagColor ?? this.tagColor,
      isPreset: isPreset ?? this.isPreset,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (tagName.present) {
      map['tag_name'] = Variable<String>(tagName.value);
    }
    if (tagColor.present) {
      map['tag_color'] = Variable<String>(tagColor.value);
    }
    if (isPreset.present) {
      map['is_preset'] = Variable<bool>(isPreset.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagConfigsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('tagName: $tagName, ')
          ..write('tagColor: $tagColor, ')
          ..write('isPreset: $isPreset, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $PhotoConfigsTable extends PhotoConfigs
    with TableInfo<$PhotoConfigsTable, PhotoConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PhotoConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _maxPhotosMeta = const VerificationMeta(
    'maxPhotos',
  );
  @override
  late final GeneratedColumn<int> maxPhotos = GeneratedColumn<int>(
    'max_photos',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(10),
  );
  static const VerificationMeta _requirePhotoMeta = const VerificationMeta(
    'requirePhoto',
  );
  @override
  late final GeneratedColumn<bool> requirePhoto = GeneratedColumn<bool>(
    'require_photo',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("require_photo" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _photoQualityMeta = const VerificationMeta(
    'photoQuality',
  );
  @override
  late final GeneratedColumn<String> photoQuality = GeneratedColumn<String>(
    'photo_quality',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('medium'),
  );
  static const VerificationMeta _allowMultipleMeta = const VerificationMeta(
    'allowMultiple',
  );
  @override
  late final GeneratedColumn<bool> allowMultiple = GeneratedColumn<bool>(
    'allow_multiple',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("allow_multiple" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _enableThumbnailMeta = const VerificationMeta(
    'enableThumbnail',
  );
  @override
  late final GeneratedColumn<bool> enableThumbnail = GeneratedColumn<bool>(
    'enable_thumbnail',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_thumbnail" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    maxPhotos,
    requirePhoto,
    photoQuality,
    allowMultiple,
    enableThumbnail,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'photo_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<PhotoConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('max_photos')) {
      context.handle(
        _maxPhotosMeta,
        maxPhotos.isAcceptableOrUnknown(data['max_photos']!, _maxPhotosMeta),
      );
    }
    if (data.containsKey('require_photo')) {
      context.handle(
        _requirePhotoMeta,
        requirePhoto.isAcceptableOrUnknown(
          data['require_photo']!,
          _requirePhotoMeta,
        ),
      );
    }
    if (data.containsKey('photo_quality')) {
      context.handle(
        _photoQualityMeta,
        photoQuality.isAcceptableOrUnknown(
          data['photo_quality']!,
          _photoQualityMeta,
        ),
      );
    }
    if (data.containsKey('allow_multiple')) {
      context.handle(
        _allowMultipleMeta,
        allowMultiple.isAcceptableOrUnknown(
          data['allow_multiple']!,
          _allowMultipleMeta,
        ),
      );
    }
    if (data.containsKey('enable_thumbnail')) {
      context.handle(
        _enableThumbnailMeta,
        enableThumbnail.isAcceptableOrUnknown(
          data['enable_thumbnail']!,
          _enableThumbnailMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PhotoConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PhotoConfig(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      maxPhotos: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_photos'],
      )!,
      requirePhoto: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}require_photo'],
      )!,
      photoQuality: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}photo_quality'],
      )!,
      allowMultiple: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}allow_multiple'],
      )!,
      enableThumbnail: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_thumbnail'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $PhotoConfigsTable createAlias(String alias) {
    return $PhotoConfigsTable(attachedDatabase, alias);
  }
}

class PhotoConfig extends DataClass implements Insertable<PhotoConfig> {
  final int id;
  final int recordTypeId;
  final int maxPhotos;
  final bool requirePhoto;
  final String photoQuality;
  final bool allowMultiple;
  final bool enableThumbnail;
  final DateTime createdAt;
  const PhotoConfig({
    required this.id,
    required this.recordTypeId,
    required this.maxPhotos,
    required this.requirePhoto,
    required this.photoQuality,
    required this.allowMultiple,
    required this.enableThumbnail,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    map['max_photos'] = Variable<int>(maxPhotos);
    map['require_photo'] = Variable<bool>(requirePhoto);
    map['photo_quality'] = Variable<String>(photoQuality);
    map['allow_multiple'] = Variable<bool>(allowMultiple);
    map['enable_thumbnail'] = Variable<bool>(enableThumbnail);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  PhotoConfigsCompanion toCompanion(bool nullToAbsent) {
    return PhotoConfigsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      maxPhotos: Value(maxPhotos),
      requirePhoto: Value(requirePhoto),
      photoQuality: Value(photoQuality),
      allowMultiple: Value(allowMultiple),
      enableThumbnail: Value(enableThumbnail),
      createdAt: Value(createdAt),
    );
  }

  factory PhotoConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PhotoConfig(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      maxPhotos: serializer.fromJson<int>(json['maxPhotos']),
      requirePhoto: serializer.fromJson<bool>(json['requirePhoto']),
      photoQuality: serializer.fromJson<String>(json['photoQuality']),
      allowMultiple: serializer.fromJson<bool>(json['allowMultiple']),
      enableThumbnail: serializer.fromJson<bool>(json['enableThumbnail']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'maxPhotos': serializer.toJson<int>(maxPhotos),
      'requirePhoto': serializer.toJson<bool>(requirePhoto),
      'photoQuality': serializer.toJson<String>(photoQuality),
      'allowMultiple': serializer.toJson<bool>(allowMultiple),
      'enableThumbnail': serializer.toJson<bool>(enableThumbnail),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  PhotoConfig copyWith({
    int? id,
    int? recordTypeId,
    int? maxPhotos,
    bool? requirePhoto,
    String? photoQuality,
    bool? allowMultiple,
    bool? enableThumbnail,
    DateTime? createdAt,
  }) => PhotoConfig(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    maxPhotos: maxPhotos ?? this.maxPhotos,
    requirePhoto: requirePhoto ?? this.requirePhoto,
    photoQuality: photoQuality ?? this.photoQuality,
    allowMultiple: allowMultiple ?? this.allowMultiple,
    enableThumbnail: enableThumbnail ?? this.enableThumbnail,
    createdAt: createdAt ?? this.createdAt,
  );
  PhotoConfig copyWithCompanion(PhotoConfigsCompanion data) {
    return PhotoConfig(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      maxPhotos: data.maxPhotos.present ? data.maxPhotos.value : this.maxPhotos,
      requirePhoto: data.requirePhoto.present
          ? data.requirePhoto.value
          : this.requirePhoto,
      photoQuality: data.photoQuality.present
          ? data.photoQuality.value
          : this.photoQuality,
      allowMultiple: data.allowMultiple.present
          ? data.allowMultiple.value
          : this.allowMultiple,
      enableThumbnail: data.enableThumbnail.present
          ? data.enableThumbnail.value
          : this.enableThumbnail,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PhotoConfig(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('maxPhotos: $maxPhotos, ')
          ..write('requirePhoto: $requirePhoto, ')
          ..write('photoQuality: $photoQuality, ')
          ..write('allowMultiple: $allowMultiple, ')
          ..write('enableThumbnail: $enableThumbnail, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordTypeId,
    maxPhotos,
    requirePhoto,
    photoQuality,
    allowMultiple,
    enableThumbnail,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PhotoConfig &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.maxPhotos == this.maxPhotos &&
          other.requirePhoto == this.requirePhoto &&
          other.photoQuality == this.photoQuality &&
          other.allowMultiple == this.allowMultiple &&
          other.enableThumbnail == this.enableThumbnail &&
          other.createdAt == this.createdAt);
}

class PhotoConfigsCompanion extends UpdateCompanion<PhotoConfig> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<int> maxPhotos;
  final Value<bool> requirePhoto;
  final Value<String> photoQuality;
  final Value<bool> allowMultiple;
  final Value<bool> enableThumbnail;
  final Value<DateTime> createdAt;
  const PhotoConfigsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.maxPhotos = const Value.absent(),
    this.requirePhoto = const Value.absent(),
    this.photoQuality = const Value.absent(),
    this.allowMultiple = const Value.absent(),
    this.enableThumbnail = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  PhotoConfigsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    this.maxPhotos = const Value.absent(),
    this.requirePhoto = const Value.absent(),
    this.photoQuality = const Value.absent(),
    this.allowMultiple = const Value.absent(),
    this.enableThumbnail = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId);
  static Insertable<PhotoConfig> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<int>? maxPhotos,
    Expression<bool>? requirePhoto,
    Expression<String>? photoQuality,
    Expression<bool>? allowMultiple,
    Expression<bool>? enableThumbnail,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (maxPhotos != null) 'max_photos': maxPhotos,
      if (requirePhoto != null) 'require_photo': requirePhoto,
      if (photoQuality != null) 'photo_quality': photoQuality,
      if (allowMultiple != null) 'allow_multiple': allowMultiple,
      if (enableThumbnail != null) 'enable_thumbnail': enableThumbnail,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  PhotoConfigsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<int>? maxPhotos,
    Value<bool>? requirePhoto,
    Value<String>? photoQuality,
    Value<bool>? allowMultiple,
    Value<bool>? enableThumbnail,
    Value<DateTime>? createdAt,
  }) {
    return PhotoConfigsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      maxPhotos: maxPhotos ?? this.maxPhotos,
      requirePhoto: requirePhoto ?? this.requirePhoto,
      photoQuality: photoQuality ?? this.photoQuality,
      allowMultiple: allowMultiple ?? this.allowMultiple,
      enableThumbnail: enableThumbnail ?? this.enableThumbnail,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (maxPhotos.present) {
      map['max_photos'] = Variable<int>(maxPhotos.value);
    }
    if (requirePhoto.present) {
      map['require_photo'] = Variable<bool>(requirePhoto.value);
    }
    if (photoQuality.present) {
      map['photo_quality'] = Variable<String>(photoQuality.value);
    }
    if (allowMultiple.present) {
      map['allow_multiple'] = Variable<bool>(allowMultiple.value);
    }
    if (enableThumbnail.present) {
      map['enable_thumbnail'] = Variable<bool>(enableThumbnail.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PhotoConfigsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('maxPhotos: $maxPhotos, ')
          ..write('requirePhoto: $requirePhoto, ')
          ..write('photoQuality: $photoQuality, ')
          ..write('allowMultiple: $allowMultiple, ')
          ..write('enableThumbnail: $enableThumbnail, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $LocationConfigsTable extends LocationConfigs
    with TableInfo<$LocationConfigsTable, LocationConfig> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _recordTypeIdMeta = const VerificationMeta(
    'recordTypeId',
  );
  @override
  late final GeneratedColumn<int> recordTypeId = GeneratedColumn<int>(
    'record_type_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES record_types (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _requireLocationMeta = const VerificationMeta(
    'requireLocation',
  );
  @override
  late final GeneratedColumn<bool> requireLocation = GeneratedColumn<bool>(
    'require_location',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("require_location" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _locationAccuracyMeta = const VerificationMeta(
    'locationAccuracy',
  );
  @override
  late final GeneratedColumn<String> locationAccuracy = GeneratedColumn<String>(
    'location_accuracy',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('high'),
  );
  static const VerificationMeta _locationTimeoutMeta = const VerificationMeta(
    'locationTimeout',
  );
  @override
  late final GeneratedColumn<int> locationTimeout = GeneratedColumn<int>(
    'location_timeout',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(30000),
  );
  static const VerificationMeta _showLocationDetailsMeta =
      const VerificationMeta('showLocationDetails');
  @override
  late final GeneratedColumn<bool> showLocationDetails = GeneratedColumn<bool>(
    'show_location_details',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("show_location_details" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    recordTypeId,
    requireLocation,
    locationAccuracy,
    locationTimeout,
    showLocationDetails,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'location_configs';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocationConfig> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record_type_id')) {
      context.handle(
        _recordTypeIdMeta,
        recordTypeId.isAcceptableOrUnknown(
          data['record_type_id']!,
          _recordTypeIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_recordTypeIdMeta);
    }
    if (data.containsKey('require_location')) {
      context.handle(
        _requireLocationMeta,
        requireLocation.isAcceptableOrUnknown(
          data['require_location']!,
          _requireLocationMeta,
        ),
      );
    }
    if (data.containsKey('location_accuracy')) {
      context.handle(
        _locationAccuracyMeta,
        locationAccuracy.isAcceptableOrUnknown(
          data['location_accuracy']!,
          _locationAccuracyMeta,
        ),
      );
    }
    if (data.containsKey('location_timeout')) {
      context.handle(
        _locationTimeoutMeta,
        locationTimeout.isAcceptableOrUnknown(
          data['location_timeout']!,
          _locationTimeoutMeta,
        ),
      );
    }
    if (data.containsKey('show_location_details')) {
      context.handle(
        _showLocationDetailsMeta,
        showLocationDetails.isAcceptableOrUnknown(
          data['show_location_details']!,
          _showLocationDetailsMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocationConfig map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocationConfig(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      recordTypeId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_type_id'],
      )!,
      requireLocation: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}require_location'],
      )!,
      locationAccuracy: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_accuracy'],
      )!,
      locationTimeout: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}location_timeout'],
      )!,
      showLocationDetails: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}show_location_details'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $LocationConfigsTable createAlias(String alias) {
    return $LocationConfigsTable(attachedDatabase, alias);
  }
}

class LocationConfig extends DataClass implements Insertable<LocationConfig> {
  final int id;
  final int recordTypeId;
  final bool requireLocation;
  final String locationAccuracy;
  final int locationTimeout;
  final bool showLocationDetails;
  final DateTime createdAt;
  const LocationConfig({
    required this.id,
    required this.recordTypeId,
    required this.requireLocation,
    required this.locationAccuracy,
    required this.locationTimeout,
    required this.showLocationDetails,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record_type_id'] = Variable<int>(recordTypeId);
    map['require_location'] = Variable<bool>(requireLocation);
    map['location_accuracy'] = Variable<String>(locationAccuracy);
    map['location_timeout'] = Variable<int>(locationTimeout);
    map['show_location_details'] = Variable<bool>(showLocationDetails);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LocationConfigsCompanion toCompanion(bool nullToAbsent) {
    return LocationConfigsCompanion(
      id: Value(id),
      recordTypeId: Value(recordTypeId),
      requireLocation: Value(requireLocation),
      locationAccuracy: Value(locationAccuracy),
      locationTimeout: Value(locationTimeout),
      showLocationDetails: Value(showLocationDetails),
      createdAt: Value(createdAt),
    );
  }

  factory LocationConfig.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationConfig(
      id: serializer.fromJson<int>(json['id']),
      recordTypeId: serializer.fromJson<int>(json['recordTypeId']),
      requireLocation: serializer.fromJson<bool>(json['requireLocation']),
      locationAccuracy: serializer.fromJson<String>(json['locationAccuracy']),
      locationTimeout: serializer.fromJson<int>(json['locationTimeout']),
      showLocationDetails: serializer.fromJson<bool>(
        json['showLocationDetails'],
      ),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'recordTypeId': serializer.toJson<int>(recordTypeId),
      'requireLocation': serializer.toJson<bool>(requireLocation),
      'locationAccuracy': serializer.toJson<String>(locationAccuracy),
      'locationTimeout': serializer.toJson<int>(locationTimeout),
      'showLocationDetails': serializer.toJson<bool>(showLocationDetails),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LocationConfig copyWith({
    int? id,
    int? recordTypeId,
    bool? requireLocation,
    String? locationAccuracy,
    int? locationTimeout,
    bool? showLocationDetails,
    DateTime? createdAt,
  }) => LocationConfig(
    id: id ?? this.id,
    recordTypeId: recordTypeId ?? this.recordTypeId,
    requireLocation: requireLocation ?? this.requireLocation,
    locationAccuracy: locationAccuracy ?? this.locationAccuracy,
    locationTimeout: locationTimeout ?? this.locationTimeout,
    showLocationDetails: showLocationDetails ?? this.showLocationDetails,
    createdAt: createdAt ?? this.createdAt,
  );
  LocationConfig copyWithCompanion(LocationConfigsCompanion data) {
    return LocationConfig(
      id: data.id.present ? data.id.value : this.id,
      recordTypeId: data.recordTypeId.present
          ? data.recordTypeId.value
          : this.recordTypeId,
      requireLocation: data.requireLocation.present
          ? data.requireLocation.value
          : this.requireLocation,
      locationAccuracy: data.locationAccuracy.present
          ? data.locationAccuracy.value
          : this.locationAccuracy,
      locationTimeout: data.locationTimeout.present
          ? data.locationTimeout.value
          : this.locationTimeout,
      showLocationDetails: data.showLocationDetails.present
          ? data.showLocationDetails.value
          : this.showLocationDetails,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocationConfig(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('requireLocation: $requireLocation, ')
          ..write('locationAccuracy: $locationAccuracy, ')
          ..write('locationTimeout: $locationTimeout, ')
          ..write('showLocationDetails: $showLocationDetails, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    recordTypeId,
    requireLocation,
    locationAccuracy,
    locationTimeout,
    showLocationDetails,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationConfig &&
          other.id == this.id &&
          other.recordTypeId == this.recordTypeId &&
          other.requireLocation == this.requireLocation &&
          other.locationAccuracy == this.locationAccuracy &&
          other.locationTimeout == this.locationTimeout &&
          other.showLocationDetails == this.showLocationDetails &&
          other.createdAt == this.createdAt);
}

class LocationConfigsCompanion extends UpdateCompanion<LocationConfig> {
  final Value<int> id;
  final Value<int> recordTypeId;
  final Value<bool> requireLocation;
  final Value<String> locationAccuracy;
  final Value<int> locationTimeout;
  final Value<bool> showLocationDetails;
  final Value<DateTime> createdAt;
  const LocationConfigsCompanion({
    this.id = const Value.absent(),
    this.recordTypeId = const Value.absent(),
    this.requireLocation = const Value.absent(),
    this.locationAccuracy = const Value.absent(),
    this.locationTimeout = const Value.absent(),
    this.showLocationDetails = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  LocationConfigsCompanion.insert({
    this.id = const Value.absent(),
    required int recordTypeId,
    this.requireLocation = const Value.absent(),
    this.locationAccuracy = const Value.absent(),
    this.locationTimeout = const Value.absent(),
    this.showLocationDetails = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : recordTypeId = Value(recordTypeId);
  static Insertable<LocationConfig> custom({
    Expression<int>? id,
    Expression<int>? recordTypeId,
    Expression<bool>? requireLocation,
    Expression<String>? locationAccuracy,
    Expression<int>? locationTimeout,
    Expression<bool>? showLocationDetails,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (recordTypeId != null) 'record_type_id': recordTypeId,
      if (requireLocation != null) 'require_location': requireLocation,
      if (locationAccuracy != null) 'location_accuracy': locationAccuracy,
      if (locationTimeout != null) 'location_timeout': locationTimeout,
      if (showLocationDetails != null)
        'show_location_details': showLocationDetails,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  LocationConfigsCompanion copyWith({
    Value<int>? id,
    Value<int>? recordTypeId,
    Value<bool>? requireLocation,
    Value<String>? locationAccuracy,
    Value<int>? locationTimeout,
    Value<bool>? showLocationDetails,
    Value<DateTime>? createdAt,
  }) {
    return LocationConfigsCompanion(
      id: id ?? this.id,
      recordTypeId: recordTypeId ?? this.recordTypeId,
      requireLocation: requireLocation ?? this.requireLocation,
      locationAccuracy: locationAccuracy ?? this.locationAccuracy,
      locationTimeout: locationTimeout ?? this.locationTimeout,
      showLocationDetails: showLocationDetails ?? this.showLocationDetails,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (recordTypeId.present) {
      map['record_type_id'] = Variable<int>(recordTypeId.value);
    }
    if (requireLocation.present) {
      map['require_location'] = Variable<bool>(requireLocation.value);
    }
    if (locationAccuracy.present) {
      map['location_accuracy'] = Variable<String>(locationAccuracy.value);
    }
    if (locationTimeout.present) {
      map['location_timeout'] = Variable<int>(locationTimeout.value);
    }
    if (showLocationDetails.present) {
      map['show_location_details'] = Variable<bool>(showLocationDetails.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationConfigsCompanion(')
          ..write('id: $id, ')
          ..write('recordTypeId: $recordTypeId, ')
          ..write('requireLocation: $requireLocation, ')
          ..write('locationAccuracy: $locationAccuracy, ')
          ..write('locationTimeout: $locationTimeout, ')
          ..write('showLocationDetails: $showLocationDetails, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CategoriesTable categories = $CategoriesTable(this);
  late final $RecordTypesTable recordTypes = $RecordTypesTable(this);
  late final $RecordsTable records = $RecordsTable(this);
  late final $RecordValuesTable recordValues = $RecordValuesTable(this);
  late final $RecordStepsTable recordSteps = $RecordStepsTable(this);
  late final $RecordPhotosTable recordPhotos = $RecordPhotosTable(this);
  late final $RecordLocationsTable recordLocations = $RecordLocationsTable(
    this,
  );
  late final $RecordTagsTable recordTags = $RecordTagsTable(this);
  late final $CategoryRecordsTable categoryRecords = $CategoryRecordsTable(
    this,
  );
  late final $RecordTypeConfigsTable recordTypeConfigs =
      $RecordTypeConfigsTable(this);
  late final $RecordStepConfigsTable recordStepConfigs =
      $RecordStepConfigsTable(this);
  late final $RecordValueConfigsTable recordValueConfigs =
      $RecordValueConfigsTable(this);
  late final $TagConfigsTable tagConfigs = $TagConfigsTable(this);
  late final $PhotoConfigsTable photoConfigs = $PhotoConfigsTable(this);
  late final $LocationConfigsTable locationConfigs = $LocationConfigsTable(
    this,
  );
  late final CategoryDao categoryDao = CategoryDao(this as AppDatabase);
  late final RecordTypeDao recordTypeDao = RecordTypeDao(this as AppDatabase);
  late final RecordDao recordDao = RecordDao(this as AppDatabase);
  late final RecordValueDao recordValueDao = RecordValueDao(
    this as AppDatabase,
  );
  late final RecordStepDao recordStepDao = RecordStepDao(this as AppDatabase);
  late final RecordPhotoDao recordPhotoDao = RecordPhotoDao(
    this as AppDatabase,
  );
  late final CategoryRecordDao categoryRecordDao = CategoryRecordDao(
    this as AppDatabase,
  );
  late final LocationConfigDao locationConfigDao = LocationConfigDao(
    this as AppDatabase,
  );
  late final PhotoConfigDao photoConfigDao = PhotoConfigDao(
    this as AppDatabase,
  );
  late final RecordLocationDao recordLocationDao = RecordLocationDao(
    this as AppDatabase,
  );
  late final RecordStepConfigDao recordStepConfigDao = RecordStepConfigDao(
    this as AppDatabase,
  );
  late final RecordTagDao recordTagDao = RecordTagDao(this as AppDatabase);
  late final RecordTypeConfigDao recordTypeConfigDao = RecordTypeConfigDao(
    this as AppDatabase,
  );
  late final RecordValueConfigDao recordValueConfigDao = RecordValueConfigDao(
    this as AppDatabase,
  );
  late final TagConfigDao tagConfigDao = TagConfigDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    categories,
    recordTypes,
    records,
    recordValues,
    recordSteps,
    recordPhotos,
    recordLocations,
    recordTags,
    categoryRecords,
    recordTypeConfigs,
    recordStepConfigs,
    recordValueConfigs,
    tagConfigs,
    photoConfigs,
    locationConfigs,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'categories',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_types', kind: UpdateKind.update)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('records', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_values', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_steps', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_photos', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_locations', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_tags', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'categories',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('category_records', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('category_records', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_type_configs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_step_configs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_value_configs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('tag_configs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('photo_configs', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'record_types',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('location_configs', kind: UpdateKind.delete)],
    ),
  ]);
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$CategoriesTableCreateCompanionBuilder =
    CategoriesCompanion Function({
      Value<int> id,
      required String name,
      Value<String?> description,
      Value<String?> color,
      Value<String?> icon,
      Value<int> sortOrder,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });
typedef $$CategoriesTableUpdateCompanionBuilder =
    CategoriesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String?> description,
      Value<String?> color,
      Value<String?> icon,
      Value<int> sortOrder,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });

final class $$CategoriesTableReferences
    extends BaseReferences<_$AppDatabase, $CategoriesTable, Category> {
  $$CategoriesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RecordTypesTable, List<RecordType>>
  _recordTypesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordTypes,
    aliasName: $_aliasNameGenerator(
      db.categories.id,
      db.recordTypes.categoryId,
    ),
  );

  $$RecordTypesTableProcessedTableManager get recordTypesRefs {
    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordTypesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$CategoryRecordsTable, List<CategoryRecord>>
  _categoryRecordsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.categoryRecords,
    aliasName: $_aliasNameGenerator(
      db.categories.id,
      db.categoryRecords.categoryId,
    ),
  );

  $$CategoryRecordsTableProcessedTableManager get categoryRecordsRefs {
    final manager = $$CategoryRecordsTableTableManager(
      $_db,
      $_db.categoryRecords,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _categoryRecordsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoriesTableFilterComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> recordTypesRefs(
    Expression<bool> Function($$RecordTypesTableFilterComposer f) f,
  ) {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> categoryRecordsRefs(
    Expression<bool> Function($$CategoryRecordsTableFilterComposer f) f,
  ) {
    final $$CategoryRecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.categoryRecords,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryRecordsTableFilterComposer(
            $db: $db,
            $table: $db.categoryRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoriesTable> {
  $$CategoriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  Expression<T> recordTypesRefs<T extends Object>(
    Expression<T> Function($$RecordTypesTableAnnotationComposer a) f,
  ) {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> categoryRecordsRefs<T extends Object>(
    Expression<T> Function($$CategoryRecordsTableAnnotationComposer a) f,
  ) {
    final $$CategoryRecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.categoryRecords,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryRecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.categoryRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoriesTable,
          Category,
          $$CategoriesTableFilterComposer,
          $$CategoriesTableOrderingComposer,
          $$CategoriesTableAnnotationComposer,
          $$CategoriesTableCreateCompanionBuilder,
          $$CategoriesTableUpdateCompanionBuilder,
          (Category, $$CategoriesTableReferences),
          Category,
          PrefetchHooks Function({
            bool recordTypesRefs,
            bool categoryRecordsRefs,
          })
        > {
  $$CategoriesTableTableManager(_$AppDatabase db, $CategoriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => CategoriesCompanion(
                id: id,
                name: name,
                description: description,
                color: color,
                icon: icon,
                sortOrder: sortOrder,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<String?> description = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => CategoriesCompanion.insert(
                id: id,
                name: name,
                description: description,
                color: color,
                icon: icon,
                sortOrder: sortOrder,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CategoriesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({recordTypesRefs = false, categoryRecordsRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordTypesRefs) db.recordTypes,
                    if (categoryRecordsRefs) db.categoryRecords,
                  ],
                  addJoins: null,
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recordTypesRefs)
                        await $_getPrefetchedData<
                          Category,
                          $CategoriesTable,
                          RecordType
                        >(
                          currentTable: table,
                          referencedTable: $$CategoriesTableReferences
                              ._recordTypesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CategoriesTableReferences(
                                db,
                                table,
                                p0,
                              ).recordTypesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.categoryId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (categoryRecordsRefs)
                        await $_getPrefetchedData<
                          Category,
                          $CategoriesTable,
                          CategoryRecord
                        >(
                          currentTable: table,
                          referencedTable: $$CategoriesTableReferences
                              ._categoryRecordsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$CategoriesTableReferences(
                                db,
                                table,
                                p0,
                              ).categoryRecordsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.categoryId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$CategoriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoriesTable,
      Category,
      $$CategoriesTableFilterComposer,
      $$CategoriesTableOrderingComposer,
      $$CategoriesTableAnnotationComposer,
      $$CategoriesTableCreateCompanionBuilder,
      $$CategoriesTableUpdateCompanionBuilder,
      (Category, $$CategoriesTableReferences),
      Category,
      PrefetchHooks Function({bool recordTypesRefs, bool categoryRecordsRefs})
    >;
typedef $$RecordTypesTableCreateCompanionBuilder =
    RecordTypesCompanion Function({
      Value<int> id,
      required String name,
      Value<int?> categoryId,
      Value<String?> description,
      Value<String?> icon,
      Value<String?> color,
      Value<bool> isEnabled,
      Value<int> sortOrder,
      Value<bool> requirePhoto,
      Value<int> maxPhotos,
      Value<bool> requireLocation,
      Value<String> locationAccuracy,
      Value<int> locationTimeout,
      Value<bool> hasTimer,
      Value<int> timerDuration,
      Value<bool> hasNotes,
      Value<bool> hasAttachments,
      Value<bool> hasAudioRecording,
      Value<int> maxAudioDuration,
      Value<bool> hasVideoRecording,
      Value<int> maxVideoDuration,
      Value<bool> showDuration,
      Value<bool> showStartTime,
      Value<bool> showEndTime,
      Value<bool> hasSubtasks,
      Value<bool> hasNumericValues,
      Value<bool> hasTextValues,
      Value<bool> hasSelectionValues,
      Value<String?> selectionOptions,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });
typedef $$RecordTypesTableUpdateCompanionBuilder =
    RecordTypesCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<int?> categoryId,
      Value<String?> description,
      Value<String?> icon,
      Value<String?> color,
      Value<bool> isEnabled,
      Value<int> sortOrder,
      Value<bool> requirePhoto,
      Value<int> maxPhotos,
      Value<bool> requireLocation,
      Value<String> locationAccuracy,
      Value<int> locationTimeout,
      Value<bool> hasTimer,
      Value<int> timerDuration,
      Value<bool> hasNotes,
      Value<bool> hasAttachments,
      Value<bool> hasAudioRecording,
      Value<int> maxAudioDuration,
      Value<bool> hasVideoRecording,
      Value<int> maxVideoDuration,
      Value<bool> showDuration,
      Value<bool> showStartTime,
      Value<bool> showEndTime,
      Value<bool> hasSubtasks,
      Value<bool> hasNumericValues,
      Value<bool> hasTextValues,
      Value<bool> hasSelectionValues,
      Value<String?> selectionOptions,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });

final class $$RecordTypesTableReferences
    extends BaseReferences<_$AppDatabase, $RecordTypesTable, RecordType> {
  $$RecordTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoriesTable _categoryIdTable(_$AppDatabase db) =>
      db.categories.createAlias(
        $_aliasNameGenerator(db.recordTypes.categoryId, db.categories.id),
      );

  $$CategoriesTableProcessedTableManager? get categoryId {
    final $_column = $_itemColumn<int>('category_id');
    if ($_column == null) return null;
    final manager = $$CategoriesTableTableManager(
      $_db,
      $_db.categories,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$RecordsTable, List<Record>> _recordsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.records,
    aliasName: $_aliasNameGenerator(db.recordTypes.id, db.records.recordTypeId),
  );

  $$RecordsTableProcessedTableManager get recordsRefs {
    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordTypeConfigsTable, List<RecordTypeConfig>>
  _recordTypeConfigsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordTypeConfigs,
        aliasName: $_aliasNameGenerator(
          db.recordTypes.id,
          db.recordTypeConfigs.recordTypeId,
        ),
      );

  $$RecordTypeConfigsTableProcessedTableManager get recordTypeConfigsRefs {
    final manager = $$RecordTypeConfigsTableTableManager(
      $_db,
      $_db.recordTypeConfigs,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordTypeConfigsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordStepConfigsTable, List<RecordStepConfig>>
  _recordStepConfigsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordStepConfigs,
        aliasName: $_aliasNameGenerator(
          db.recordTypes.id,
          db.recordStepConfigs.recordTypeId,
        ),
      );

  $$RecordStepConfigsTableProcessedTableManager get recordStepConfigsRefs {
    final manager = $$RecordStepConfigsTableTableManager(
      $_db,
      $_db.recordStepConfigs,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordStepConfigsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordValueConfigsTable, List<RecordValueConfig>>
  _recordValueConfigsRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordValueConfigs,
        aliasName: $_aliasNameGenerator(
          db.recordTypes.id,
          db.recordValueConfigs.recordTypeId,
        ),
      );

  $$RecordValueConfigsTableProcessedTableManager get recordValueConfigsRefs {
    final manager = $$RecordValueConfigsTableTableManager(
      $_db,
      $_db.recordValueConfigs,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordValueConfigsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$TagConfigsTable, List<TagConfig>>
  _tagConfigsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.tagConfigs,
    aliasName: $_aliasNameGenerator(
      db.recordTypes.id,
      db.tagConfigs.recordTypeId,
    ),
  );

  $$TagConfigsTableProcessedTableManager get tagConfigsRefs {
    final manager = $$TagConfigsTableTableManager(
      $_db,
      $_db.tagConfigs,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_tagConfigsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$PhotoConfigsTable, List<PhotoConfig>>
  _photoConfigsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.photoConfigs,
    aliasName: $_aliasNameGenerator(
      db.recordTypes.id,
      db.photoConfigs.recordTypeId,
    ),
  );

  $$PhotoConfigsTableProcessedTableManager get photoConfigsRefs {
    final manager = $$PhotoConfigsTableTableManager(
      $_db,
      $_db.photoConfigs,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_photoConfigsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LocationConfigsTable, List<LocationConfig>>
  _locationConfigsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.locationConfigs,
    aliasName: $_aliasNameGenerator(
      db.recordTypes.id,
      db.locationConfigs.recordTypeId,
    ),
  );

  $$LocationConfigsTableProcessedTableManager get locationConfigsRefs {
    final manager = $$LocationConfigsTableTableManager(
      $_db,
      $_db.locationConfigs,
    ).filter((f) => f.recordTypeId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _locationConfigsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RecordTypesTableFilterComposer
    extends Composer<_$AppDatabase, $RecordTypesTable> {
  $$RecordTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isEnabled => $composableBuilder(
    column: $table.isEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get requirePhoto => $composableBuilder(
    column: $table.requirePhoto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxPhotos => $composableBuilder(
    column: $table.maxPhotos,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get requireLocation => $composableBuilder(
    column: $table.requireLocation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationAccuracy => $composableBuilder(
    column: $table.locationAccuracy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get locationTimeout => $composableBuilder(
    column: $table.locationTimeout,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasTimer => $composableBuilder(
    column: $table.hasTimer,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get timerDuration => $composableBuilder(
    column: $table.timerDuration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasNotes => $composableBuilder(
    column: $table.hasNotes,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasAttachments => $composableBuilder(
    column: $table.hasAttachments,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasAudioRecording => $composableBuilder(
    column: $table.hasAudioRecording,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxAudioDuration => $composableBuilder(
    column: $table.maxAudioDuration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasVideoRecording => $composableBuilder(
    column: $table.hasVideoRecording,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxVideoDuration => $composableBuilder(
    column: $table.maxVideoDuration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showDuration => $composableBuilder(
    column: $table.showDuration,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showStartTime => $composableBuilder(
    column: $table.showStartTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showEndTime => $composableBuilder(
    column: $table.showEndTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasSubtasks => $composableBuilder(
    column: $table.hasSubtasks,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasNumericValues => $composableBuilder(
    column: $table.hasNumericValues,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasTextValues => $composableBuilder(
    column: $table.hasTextValues,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get hasSelectionValues => $composableBuilder(
    column: $table.hasSelectionValues,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get selectionOptions => $composableBuilder(
    column: $table.selectionOptions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableFilterComposer get categoryId {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableFilterComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> recordsRefs(
    Expression<bool> Function($$RecordsTableFilterComposer f) f,
  ) {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordTypeConfigsRefs(
    Expression<bool> Function($$RecordTypeConfigsTableFilterComposer f) f,
  ) {
    final $$RecordTypeConfigsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTypeConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypeConfigsTableFilterComposer(
            $db: $db,
            $table: $db.recordTypeConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordStepConfigsRefs(
    Expression<bool> Function($$RecordStepConfigsTableFilterComposer f) f,
  ) {
    final $$RecordStepConfigsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStepConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepConfigsTableFilterComposer(
            $db: $db,
            $table: $db.recordStepConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordValueConfigsRefs(
    Expression<bool> Function($$RecordValueConfigsTableFilterComposer f) f,
  ) {
    final $$RecordValueConfigsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordValueConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordValueConfigsTableFilterComposer(
            $db: $db,
            $table: $db.recordValueConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> tagConfigsRefs(
    Expression<bool> Function($$TagConfigsTableFilterComposer f) f,
  ) {
    final $$TagConfigsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tagConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagConfigsTableFilterComposer(
            $db: $db,
            $table: $db.tagConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> photoConfigsRefs(
    Expression<bool> Function($$PhotoConfigsTableFilterComposer f) f,
  ) {
    final $$PhotoConfigsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.photoConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhotoConfigsTableFilterComposer(
            $db: $db,
            $table: $db.photoConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> locationConfigsRefs(
    Expression<bool> Function($$LocationConfigsTableFilterComposer f) f,
  ) {
    final $$LocationConfigsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.locationConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationConfigsTableFilterComposer(
            $db: $db,
            $table: $db.locationConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecordTypesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordTypesTable> {
  $$RecordTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isEnabled => $composableBuilder(
    column: $table.isEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get requirePhoto => $composableBuilder(
    column: $table.requirePhoto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxPhotos => $composableBuilder(
    column: $table.maxPhotos,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get requireLocation => $composableBuilder(
    column: $table.requireLocation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationAccuracy => $composableBuilder(
    column: $table.locationAccuracy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get locationTimeout => $composableBuilder(
    column: $table.locationTimeout,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasTimer => $composableBuilder(
    column: $table.hasTimer,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get timerDuration => $composableBuilder(
    column: $table.timerDuration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasNotes => $composableBuilder(
    column: $table.hasNotes,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasAttachments => $composableBuilder(
    column: $table.hasAttachments,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasAudioRecording => $composableBuilder(
    column: $table.hasAudioRecording,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxAudioDuration => $composableBuilder(
    column: $table.maxAudioDuration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasVideoRecording => $composableBuilder(
    column: $table.hasVideoRecording,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxVideoDuration => $composableBuilder(
    column: $table.maxVideoDuration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showDuration => $composableBuilder(
    column: $table.showDuration,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showStartTime => $composableBuilder(
    column: $table.showStartTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showEndTime => $composableBuilder(
    column: $table.showEndTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasSubtasks => $composableBuilder(
    column: $table.hasSubtasks,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasNumericValues => $composableBuilder(
    column: $table.hasNumericValues,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasTextValues => $composableBuilder(
    column: $table.hasTextValues,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get hasSelectionValues => $composableBuilder(
    column: $table.hasSelectionValues,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get selectionOptions => $composableBuilder(
    column: $table.selectionOptions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableOrderingComposer get categoryId {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableOrderingComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTypesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordTypesTable> {
  $$RecordTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<bool> get isEnabled =>
      $composableBuilder(column: $table.isEnabled, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<bool> get requirePhoto => $composableBuilder(
    column: $table.requirePhoto,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxPhotos =>
      $composableBuilder(column: $table.maxPhotos, builder: (column) => column);

  GeneratedColumn<bool> get requireLocation => $composableBuilder(
    column: $table.requireLocation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locationAccuracy => $composableBuilder(
    column: $table.locationAccuracy,
    builder: (column) => column,
  );

  GeneratedColumn<int> get locationTimeout => $composableBuilder(
    column: $table.locationTimeout,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasTimer =>
      $composableBuilder(column: $table.hasTimer, builder: (column) => column);

  GeneratedColumn<int> get timerDuration => $composableBuilder(
    column: $table.timerDuration,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasNotes =>
      $composableBuilder(column: $table.hasNotes, builder: (column) => column);

  GeneratedColumn<bool> get hasAttachments => $composableBuilder(
    column: $table.hasAttachments,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasAudioRecording => $composableBuilder(
    column: $table.hasAudioRecording,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxAudioDuration => $composableBuilder(
    column: $table.maxAudioDuration,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasVideoRecording => $composableBuilder(
    column: $table.hasVideoRecording,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxVideoDuration => $composableBuilder(
    column: $table.maxVideoDuration,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showDuration => $composableBuilder(
    column: $table.showDuration,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showStartTime => $composableBuilder(
    column: $table.showStartTime,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showEndTime => $composableBuilder(
    column: $table.showEndTime,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasSubtasks => $composableBuilder(
    column: $table.hasSubtasks,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasNumericValues => $composableBuilder(
    column: $table.hasNumericValues,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasTextValues => $composableBuilder(
    column: $table.hasTextValues,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get hasSelectionValues => $composableBuilder(
    column: $table.hasSelectionValues,
    builder: (column) => column,
  );

  GeneratedColumn<String> get selectionOptions => $composableBuilder(
    column: $table.selectionOptions,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$CategoriesTableAnnotationComposer get categoryId {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> recordsRefs<T extends Object>(
    Expression<T> Function($$RecordsTableAnnotationComposer a) f,
  ) {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordTypeConfigsRefs<T extends Object>(
    Expression<T> Function($$RecordTypeConfigsTableAnnotationComposer a) f,
  ) {
    final $$RecordTypeConfigsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordTypeConfigs,
          getReferencedColumn: (t) => t.recordTypeId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordTypeConfigsTableAnnotationComposer(
                $db: $db,
                $table: $db.recordTypeConfigs,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> recordStepConfigsRefs<T extends Object>(
    Expression<T> Function($$RecordStepConfigsTableAnnotationComposer a) f,
  ) {
    final $$RecordStepConfigsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordStepConfigs,
          getReferencedColumn: (t) => t.recordTypeId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordStepConfigsTableAnnotationComposer(
                $db: $db,
                $table: $db.recordStepConfigs,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> recordValueConfigsRefs<T extends Object>(
    Expression<T> Function($$RecordValueConfigsTableAnnotationComposer a) f,
  ) {
    final $$RecordValueConfigsTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordValueConfigs,
          getReferencedColumn: (t) => t.recordTypeId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordValueConfigsTableAnnotationComposer(
                $db: $db,
                $table: $db.recordValueConfigs,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> tagConfigsRefs<T extends Object>(
    Expression<T> Function($$TagConfigsTableAnnotationComposer a) f,
  ) {
    final $$TagConfigsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.tagConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagConfigsTableAnnotationComposer(
            $db: $db,
            $table: $db.tagConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> photoConfigsRefs<T extends Object>(
    Expression<T> Function($$PhotoConfigsTableAnnotationComposer a) f,
  ) {
    final $$PhotoConfigsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.photoConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PhotoConfigsTableAnnotationComposer(
            $db: $db,
            $table: $db.photoConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> locationConfigsRefs<T extends Object>(
    Expression<T> Function($$LocationConfigsTableAnnotationComposer a) f,
  ) {
    final $$LocationConfigsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.locationConfigs,
      getReferencedColumn: (t) => t.recordTypeId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationConfigsTableAnnotationComposer(
            $db: $db,
            $table: $db.locationConfigs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecordTypesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordTypesTable,
          RecordType,
          $$RecordTypesTableFilterComposer,
          $$RecordTypesTableOrderingComposer,
          $$RecordTypesTableAnnotationComposer,
          $$RecordTypesTableCreateCompanionBuilder,
          $$RecordTypesTableUpdateCompanionBuilder,
          (RecordType, $$RecordTypesTableReferences),
          RecordType,
          PrefetchHooks Function({
            bool categoryId,
            bool recordsRefs,
            bool recordTypeConfigsRefs,
            bool recordStepConfigsRefs,
            bool recordValueConfigsRefs,
            bool tagConfigsRefs,
            bool photoConfigsRefs,
            bool locationConfigsRefs,
          })
        > {
  $$RecordTypesTableTableManager(_$AppDatabase db, $RecordTypesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int?> categoryId = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<bool> isEnabled = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> requirePhoto = const Value.absent(),
                Value<int> maxPhotos = const Value.absent(),
                Value<bool> requireLocation = const Value.absent(),
                Value<String> locationAccuracy = const Value.absent(),
                Value<int> locationTimeout = const Value.absent(),
                Value<bool> hasTimer = const Value.absent(),
                Value<int> timerDuration = const Value.absent(),
                Value<bool> hasNotes = const Value.absent(),
                Value<bool> hasAttachments = const Value.absent(),
                Value<bool> hasAudioRecording = const Value.absent(),
                Value<int> maxAudioDuration = const Value.absent(),
                Value<bool> hasVideoRecording = const Value.absent(),
                Value<int> maxVideoDuration = const Value.absent(),
                Value<bool> showDuration = const Value.absent(),
                Value<bool> showStartTime = const Value.absent(),
                Value<bool> showEndTime = const Value.absent(),
                Value<bool> hasSubtasks = const Value.absent(),
                Value<bool> hasNumericValues = const Value.absent(),
                Value<bool> hasTextValues = const Value.absent(),
                Value<bool> hasSelectionValues = const Value.absent(),
                Value<String?> selectionOptions = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => RecordTypesCompanion(
                id: id,
                name: name,
                categoryId: categoryId,
                description: description,
                icon: icon,
                color: color,
                isEnabled: isEnabled,
                sortOrder: sortOrder,
                requirePhoto: requirePhoto,
                maxPhotos: maxPhotos,
                requireLocation: requireLocation,
                locationAccuracy: locationAccuracy,
                locationTimeout: locationTimeout,
                hasTimer: hasTimer,
                timerDuration: timerDuration,
                hasNotes: hasNotes,
                hasAttachments: hasAttachments,
                hasAudioRecording: hasAudioRecording,
                maxAudioDuration: maxAudioDuration,
                hasVideoRecording: hasVideoRecording,
                maxVideoDuration: maxVideoDuration,
                showDuration: showDuration,
                showStartTime: showStartTime,
                showEndTime: showEndTime,
                hasSubtasks: hasSubtasks,
                hasNumericValues: hasNumericValues,
                hasTextValues: hasTextValues,
                hasSelectionValues: hasSelectionValues,
                selectionOptions: selectionOptions,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                Value<int?> categoryId = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> color = const Value.absent(),
                Value<bool> isEnabled = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<bool> requirePhoto = const Value.absent(),
                Value<int> maxPhotos = const Value.absent(),
                Value<bool> requireLocation = const Value.absent(),
                Value<String> locationAccuracy = const Value.absent(),
                Value<int> locationTimeout = const Value.absent(),
                Value<bool> hasTimer = const Value.absent(),
                Value<int> timerDuration = const Value.absent(),
                Value<bool> hasNotes = const Value.absent(),
                Value<bool> hasAttachments = const Value.absent(),
                Value<bool> hasAudioRecording = const Value.absent(),
                Value<int> maxAudioDuration = const Value.absent(),
                Value<bool> hasVideoRecording = const Value.absent(),
                Value<int> maxVideoDuration = const Value.absent(),
                Value<bool> showDuration = const Value.absent(),
                Value<bool> showStartTime = const Value.absent(),
                Value<bool> showEndTime = const Value.absent(),
                Value<bool> hasSubtasks = const Value.absent(),
                Value<bool> hasNumericValues = const Value.absent(),
                Value<bool> hasTextValues = const Value.absent(),
                Value<bool> hasSelectionValues = const Value.absent(),
                Value<String?> selectionOptions = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => RecordTypesCompanion.insert(
                id: id,
                name: name,
                categoryId: categoryId,
                description: description,
                icon: icon,
                color: color,
                isEnabled: isEnabled,
                sortOrder: sortOrder,
                requirePhoto: requirePhoto,
                maxPhotos: maxPhotos,
                requireLocation: requireLocation,
                locationAccuracy: locationAccuracy,
                locationTimeout: locationTimeout,
                hasTimer: hasTimer,
                timerDuration: timerDuration,
                hasNotes: hasNotes,
                hasAttachments: hasAttachments,
                hasAudioRecording: hasAudioRecording,
                maxAudioDuration: maxAudioDuration,
                hasVideoRecording: hasVideoRecording,
                maxVideoDuration: maxVideoDuration,
                showDuration: showDuration,
                showStartTime: showStartTime,
                showEndTime: showEndTime,
                hasSubtasks: hasSubtasks,
                hasNumericValues: hasNumericValues,
                hasTextValues: hasTextValues,
                hasSelectionValues: hasSelectionValues,
                selectionOptions: selectionOptions,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordTypesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                categoryId = false,
                recordsRefs = false,
                recordTypeConfigsRefs = false,
                recordStepConfigsRefs = false,
                recordValueConfigsRefs = false,
                tagConfigsRefs = false,
                photoConfigsRefs = false,
                locationConfigsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordsRefs) db.records,
                    if (recordTypeConfigsRefs) db.recordTypeConfigs,
                    if (recordStepConfigsRefs) db.recordStepConfigs,
                    if (recordValueConfigsRefs) db.recordValueConfigs,
                    if (tagConfigsRefs) db.tagConfigs,
                    if (photoConfigsRefs) db.photoConfigs,
                    if (locationConfigsRefs) db.locationConfigs,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (categoryId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.categoryId,
                                    referencedTable:
                                        $$RecordTypesTableReferences
                                            ._categoryIdTable(db),
                                    referencedColumn:
                                        $$RecordTypesTableReferences
                                            ._categoryIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recordsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          Record
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._recordsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).recordsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordTypeConfigsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          RecordTypeConfig
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._recordTypeConfigsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).recordTypeConfigsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordStepConfigsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          RecordStepConfig
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._recordStepConfigsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).recordStepConfigsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordValueConfigsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          RecordValueConfig
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._recordValueConfigsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).recordValueConfigsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (tagConfigsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          TagConfig
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._tagConfigsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).tagConfigsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (photoConfigsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          PhotoConfig
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._photoConfigsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).photoConfigsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (locationConfigsRefs)
                        await $_getPrefetchedData<
                          RecordType,
                          $RecordTypesTable,
                          LocationConfig
                        >(
                          currentTable: table,
                          referencedTable: $$RecordTypesTableReferences
                              ._locationConfigsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordTypesTableReferences(
                                db,
                                table,
                                p0,
                              ).locationConfigsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordTypeId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RecordTypesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordTypesTable,
      RecordType,
      $$RecordTypesTableFilterComposer,
      $$RecordTypesTableOrderingComposer,
      $$RecordTypesTableAnnotationComposer,
      $$RecordTypesTableCreateCompanionBuilder,
      $$RecordTypesTableUpdateCompanionBuilder,
      (RecordType, $$RecordTypesTableReferences),
      RecordType,
      PrefetchHooks Function({
        bool categoryId,
        bool recordsRefs,
        bool recordTypeConfigsRefs,
        bool recordStepConfigsRefs,
        bool recordValueConfigsRefs,
        bool tagConfigsRefs,
        bool photoConfigsRefs,
        bool locationConfigsRefs,
      })
    >;
typedef $$RecordsTableCreateCompanionBuilder =
    RecordsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      Value<String?> title,
      Value<String?> content,
      Value<DateTime?> startTime,
      Value<DateTime?> endTime,
      Value<int?> durationSeconds,
      Value<String?> locationName,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<double?> accuracy,
      Value<String> status,
      Value<String?> tagsJson,
      Value<String?> metadataJson,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });
typedef $$RecordsTableUpdateCompanionBuilder =
    RecordsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<String?> title,
      Value<String?> content,
      Value<DateTime?> startTime,
      Value<DateTime?> endTime,
      Value<int?> durationSeconds,
      Value<String?> locationName,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<double?> accuracy,
      Value<String> status,
      Value<String?> tagsJson,
      Value<String?> metadataJson,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });

final class $$RecordsTableReferences
    extends BaseReferences<_$AppDatabase, $RecordsTable, Record> {
  $$RecordsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(db.records.recordTypeId, db.recordTypes.id),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$RecordValuesTable, List<RecordValue>>
  _recordValuesRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordValues,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordValues.recordId),
  );

  $$RecordValuesTableProcessedTableManager get recordValuesRefs {
    final manager = $$RecordValuesTableTableManager(
      $_db,
      $_db.recordValues,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordValuesRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordStepsTable, List<RecordStep>>
  _recordStepsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordSteps,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordSteps.recordId),
  );

  $$RecordStepsTableProcessedTableManager get recordStepsRefs {
    final manager = $$RecordStepsTableTableManager(
      $_db,
      $_db.recordSteps,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordStepsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordPhotosTable, List<RecordPhoto>>
  _recordPhotosRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordPhotos,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordPhotos.recordId),
  );

  $$RecordPhotosTableProcessedTableManager get recordPhotosRefs {
    final manager = $$RecordPhotosTableTableManager(
      $_db,
      $_db.recordPhotos,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordPhotosRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordLocationsTable, List<RecordLocation>>
  _recordLocationsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordLocations,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordLocations.recordId),
  );

  $$RecordLocationsTableProcessedTableManager get recordLocationsRefs {
    final manager = $$RecordLocationsTableTableManager(
      $_db,
      $_db.recordLocations,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordLocationsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordTagsTable, List<RecordTag>>
  _recordTagsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordTags,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordTags.recordId),
  );

  $$RecordTagsTableProcessedTableManager get recordTagsRefs {
    final manager = $$RecordTagsTableTableManager(
      $_db,
      $_db.recordTags,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordTagsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$CategoryRecordsTable, List<CategoryRecord>>
  _categoryRecordsRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.categoryRecords,
    aliasName: $_aliasNameGenerator(db.records.id, db.categoryRecords.recordId),
  );

  $$CategoryRecordsTableProcessedTableManager get categoryRecordsRefs {
    final manager = $$CategoryRecordsTableTableManager(
      $_db,
      $_db.categoryRecords,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _categoryRecordsRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$RecordsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordsTable> {
  $$RecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagsJson => $composableBuilder(
    column: $table.tagsJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metadataJson => $composableBuilder(
    column: $table.metadataJson,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> recordValuesRefs(
    Expression<bool> Function($$RecordValuesTableFilterComposer f) f,
  ) {
    final $$RecordValuesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordValues,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordValuesTableFilterComposer(
            $db: $db,
            $table: $db.recordValues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordStepsRefs(
    Expression<bool> Function($$RecordStepsTableFilterComposer f) f,
  ) {
    final $$RecordStepsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordSteps,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepsTableFilterComposer(
            $db: $db,
            $table: $db.recordSteps,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordPhotosRefs(
    Expression<bool> Function($$RecordPhotosTableFilterComposer f) f,
  ) {
    final $$RecordPhotosTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordPhotos,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordPhotosTableFilterComposer(
            $db: $db,
            $table: $db.recordPhotos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordLocationsRefs(
    Expression<bool> Function($$RecordLocationsTableFilterComposer f) f,
  ) {
    final $$RecordLocationsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordLocations,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordLocationsTableFilterComposer(
            $db: $db,
            $table: $db.recordLocations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordTagsRefs(
    Expression<bool> Function($$RecordTagsTableFilterComposer f) f,
  ) {
    final $$RecordTagsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTags,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagsTableFilterComposer(
            $db: $db,
            $table: $db.recordTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> categoryRecordsRefs(
    Expression<bool> Function($$CategoryRecordsTableFilterComposer f) f,
  ) {
    final $$CategoryRecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.categoryRecords,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryRecordsTableFilterComposer(
            $db: $db,
            $table: $db.categoryRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordsTable> {
  $$RecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get startTime => $composableBuilder(
    column: $table.startTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endTime => $composableBuilder(
    column: $table.endTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get status => $composableBuilder(
    column: $table.status,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagsJson => $composableBuilder(
    column: $table.tagsJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metadataJson => $composableBuilder(
    column: $table.metadataJson,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordsTable> {
  $$RecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<DateTime> get startTime =>
      $composableBuilder(column: $table.startTime, builder: (column) => column);

  GeneratedColumn<DateTime> get endTime =>
      $composableBuilder(column: $table.endTime, builder: (column) => column);

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<double> get accuracy =>
      $composableBuilder(column: $table.accuracy, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get tagsJson =>
      $composableBuilder(column: $table.tagsJson, builder: (column) => column);

  GeneratedColumn<String> get metadataJson => $composableBuilder(
    column: $table.metadataJson,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> recordValuesRefs<T extends Object>(
    Expression<T> Function($$RecordValuesTableAnnotationComposer a) f,
  ) {
    final $$RecordValuesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordValues,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordValuesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordValues,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordStepsRefs<T extends Object>(
    Expression<T> Function($$RecordStepsTableAnnotationComposer a) f,
  ) {
    final $$RecordStepsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordSteps,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepsTableAnnotationComposer(
            $db: $db,
            $table: $db.recordSteps,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordPhotosRefs<T extends Object>(
    Expression<T> Function($$RecordPhotosTableAnnotationComposer a) f,
  ) {
    final $$RecordPhotosTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordPhotos,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordPhotosTableAnnotationComposer(
            $db: $db,
            $table: $db.recordPhotos,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordLocationsRefs<T extends Object>(
    Expression<T> Function($$RecordLocationsTableAnnotationComposer a) f,
  ) {
    final $$RecordLocationsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordLocations,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordLocationsTableAnnotationComposer(
            $db: $db,
            $table: $db.recordLocations,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordTagsRefs<T extends Object>(
    Expression<T> Function($$RecordTagsTableAnnotationComposer a) f,
  ) {
    final $$RecordTagsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTags,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagsTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTags,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> categoryRecordsRefs<T extends Object>(
    Expression<T> Function($$CategoryRecordsTableAnnotationComposer a) f,
  ) {
    final $$CategoryRecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.categoryRecords,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryRecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.categoryRecords,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$RecordsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordsTable,
          Record,
          $$RecordsTableFilterComposer,
          $$RecordsTableOrderingComposer,
          $$RecordsTableAnnotationComposer,
          $$RecordsTableCreateCompanionBuilder,
          $$RecordsTableUpdateCompanionBuilder,
          (Record, $$RecordsTableReferences),
          Record,
          PrefetchHooks Function({
            bool recordTypeId,
            bool recordValuesRefs,
            bool recordStepsRefs,
            bool recordPhotosRefs,
            bool recordLocationsRefs,
            bool recordTagsRefs,
            bool categoryRecordsRefs,
          })
        > {
  $$RecordsTableTableManager(_$AppDatabase db, $RecordsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<String?> title = const Value.absent(),
                Value<String?> content = const Value.absent(),
                Value<DateTime?> startTime = const Value.absent(),
                Value<DateTime?> endTime = const Value.absent(),
                Value<int?> durationSeconds = const Value.absent(),
                Value<String?> locationName = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<double?> accuracy = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> tagsJson = const Value.absent(),
                Value<String?> metadataJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => RecordsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                title: title,
                content: content,
                startTime: startTime,
                endTime: endTime,
                durationSeconds: durationSeconds,
                locationName: locationName,
                latitude: latitude,
                longitude: longitude,
                accuracy: accuracy,
                status: status,
                tagsJson: tagsJson,
                metadataJson: metadataJson,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                Value<String?> title = const Value.absent(),
                Value<String?> content = const Value.absent(),
                Value<DateTime?> startTime = const Value.absent(),
                Value<DateTime?> endTime = const Value.absent(),
                Value<int?> durationSeconds = const Value.absent(),
                Value<String?> locationName = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<double?> accuracy = const Value.absent(),
                Value<String> status = const Value.absent(),
                Value<String?> tagsJson = const Value.absent(),
                Value<String?> metadataJson = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => RecordsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                title: title,
                content: content,
                startTime: startTime,
                endTime: endTime,
                durationSeconds: durationSeconds,
                locationName: locationName,
                latitude: latitude,
                longitude: longitude,
                accuracy: accuracy,
                status: status,
                tagsJson: tagsJson,
                metadataJson: metadataJson,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                recordTypeId = false,
                recordValuesRefs = false,
                recordStepsRefs = false,
                recordPhotosRefs = false,
                recordLocationsRefs = false,
                recordTagsRefs = false,
                categoryRecordsRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordValuesRefs) db.recordValues,
                    if (recordStepsRefs) db.recordSteps,
                    if (recordPhotosRefs) db.recordPhotos,
                    if (recordLocationsRefs) db.recordLocations,
                    if (recordTagsRefs) db.recordTags,
                    if (categoryRecordsRefs) db.categoryRecords,
                  ],
                  addJoins:
                      <
                        T extends TableManagerState<
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic,
                          dynamic
                        >
                      >(state) {
                        if (recordTypeId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.recordTypeId,
                                    referencedTable: $$RecordsTableReferences
                                        ._recordTypeIdTable(db),
                                    referencedColumn: $$RecordsTableReferences
                                        ._recordTypeIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recordValuesRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordValue
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordValuesRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordValuesRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordStepsRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordStep
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordStepsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordStepsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordPhotosRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordPhoto
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordPhotosRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordPhotosRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordLocationsRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordLocation
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordLocationsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordLocationsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordTagsRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordTag
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordTagsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordTagsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (categoryRecordsRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          CategoryRecord
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._categoryRecordsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).categoryRecordsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                    ];
                  },
                );
              },
        ),
      );
}

typedef $$RecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordsTable,
      Record,
      $$RecordsTableFilterComposer,
      $$RecordsTableOrderingComposer,
      $$RecordsTableAnnotationComposer,
      $$RecordsTableCreateCompanionBuilder,
      $$RecordsTableUpdateCompanionBuilder,
      (Record, $$RecordsTableReferences),
      Record,
      PrefetchHooks Function({
        bool recordTypeId,
        bool recordValuesRefs,
        bool recordStepsRefs,
        bool recordPhotosRefs,
        bool recordLocationsRefs,
        bool recordTagsRefs,
        bool categoryRecordsRefs,
      })
    >;
typedef $$RecordValuesTableCreateCompanionBuilder =
    RecordValuesCompanion Function({
      Value<int> id,
      required int recordId,
      required String fieldName,
      Value<double?> fieldValue,
      Value<String?> fieldTextValue,
      Value<String> fieldType,
      Value<String?> unit,
      Value<String> valueType,
      Value<DateTime> createdAt,
    });
typedef $$RecordValuesTableUpdateCompanionBuilder =
    RecordValuesCompanion Function({
      Value<int> id,
      Value<int> recordId,
      Value<String> fieldName,
      Value<double?> fieldValue,
      Value<String?> fieldTextValue,
      Value<String> fieldType,
      Value<String?> unit,
      Value<String> valueType,
      Value<DateTime> createdAt,
    });

final class $$RecordValuesTableReferences
    extends BaseReferences<_$AppDatabase, $RecordValuesTable, RecordValue> {
  $$RecordValuesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.recordValues.recordId, db.records.id),
      );

  $$RecordsTableProcessedTableManager get recordId {
    final $_column = $_itemColumn<int>('record_id')!;

    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordValuesTableFilterComposer
    extends Composer<_$AppDatabase, $RecordValuesTable> {
  $$RecordValuesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldName => $composableBuilder(
    column: $table.fieldName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get fieldValue => $composableBuilder(
    column: $table.fieldValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldTextValue => $composableBuilder(
    column: $table.fieldTextValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldType => $composableBuilder(
    column: $table.fieldType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get valueType => $composableBuilder(
    column: $table.valueType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordsTableFilterComposer get recordId {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordValuesTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordValuesTable> {
  $$RecordValuesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldName => $composableBuilder(
    column: $table.fieldName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get fieldValue => $composableBuilder(
    column: $table.fieldValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldTextValue => $composableBuilder(
    column: $table.fieldTextValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldType => $composableBuilder(
    column: $table.fieldType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get valueType => $composableBuilder(
    column: $table.valueType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordsTableOrderingComposer get recordId {
    final $$RecordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableOrderingComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordValuesTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordValuesTable> {
  $$RecordValuesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fieldName =>
      $composableBuilder(column: $table.fieldName, builder: (column) => column);

  GeneratedColumn<double> get fieldValue => $composableBuilder(
    column: $table.fieldValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fieldTextValue => $composableBuilder(
    column: $table.fieldTextValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fieldType =>
      $composableBuilder(column: $table.fieldType, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<String> get valueType =>
      $composableBuilder(column: $table.valueType, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordsTableAnnotationComposer get recordId {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordValuesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordValuesTable,
          RecordValue,
          $$RecordValuesTableFilterComposer,
          $$RecordValuesTableOrderingComposer,
          $$RecordValuesTableAnnotationComposer,
          $$RecordValuesTableCreateCompanionBuilder,
          $$RecordValuesTableUpdateCompanionBuilder,
          (RecordValue, $$RecordValuesTableReferences),
          RecordValue,
          PrefetchHooks Function({bool recordId})
        > {
  $$RecordValuesTableTableManager(_$AppDatabase db, $RecordValuesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordValuesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordValuesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordValuesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<String> fieldName = const Value.absent(),
                Value<double?> fieldValue = const Value.absent(),
                Value<String?> fieldTextValue = const Value.absent(),
                Value<String> fieldType = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<String> valueType = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordValuesCompanion(
                id: id,
                recordId: recordId,
                fieldName: fieldName,
                fieldValue: fieldValue,
                fieldTextValue: fieldTextValue,
                fieldType: fieldType,
                unit: unit,
                valueType: valueType,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordId,
                required String fieldName,
                Value<double?> fieldValue = const Value.absent(),
                Value<String?> fieldTextValue = const Value.absent(),
                Value<String> fieldType = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<String> valueType = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordValuesCompanion.insert(
                id: id,
                recordId: recordId,
                fieldName: fieldName,
                fieldValue: fieldValue,
                fieldTextValue: fieldTextValue,
                fieldType: fieldType,
                unit: unit,
                valueType: valueType,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordValuesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable: $$RecordValuesTableReferences
                                    ._recordIdTable(db),
                                referencedColumn: $$RecordValuesTableReferences
                                    ._recordIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordValuesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordValuesTable,
      RecordValue,
      $$RecordValuesTableFilterComposer,
      $$RecordValuesTableOrderingComposer,
      $$RecordValuesTableAnnotationComposer,
      $$RecordValuesTableCreateCompanionBuilder,
      $$RecordValuesTableUpdateCompanionBuilder,
      (RecordValue, $$RecordValuesTableReferences),
      RecordValue,
      PrefetchHooks Function({bool recordId})
    >;
typedef $$RecordStepsTableCreateCompanionBuilder =
    RecordStepsCompanion Function({
      Value<int> id,
      required int recordId,
      required String stepName,
      required int stepOrder,
      Value<String> stepStatus,
      Value<DateTime?> completedAt,
      Value<String?> note,
      Value<DateTime> createdAt,
    });
typedef $$RecordStepsTableUpdateCompanionBuilder =
    RecordStepsCompanion Function({
      Value<int> id,
      Value<int> recordId,
      Value<String> stepName,
      Value<int> stepOrder,
      Value<String> stepStatus,
      Value<DateTime?> completedAt,
      Value<String?> note,
      Value<DateTime> createdAt,
    });

final class $$RecordStepsTableReferences
    extends BaseReferences<_$AppDatabase, $RecordStepsTable, RecordStep> {
  $$RecordStepsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.recordSteps.recordId, db.records.id),
      );

  $$RecordsTableProcessedTableManager get recordId {
    final $_column = $_itemColumn<int>('record_id')!;

    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordStepsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordStepsTable> {
  $$RecordStepsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stepName => $composableBuilder(
    column: $table.stepName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stepOrder => $composableBuilder(
    column: $table.stepOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stepStatus => $composableBuilder(
    column: $table.stepStatus,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordsTableFilterComposer get recordId {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordStepsTable> {
  $$RecordStepsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stepName => $composableBuilder(
    column: $table.stepName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stepOrder => $composableBuilder(
    column: $table.stepOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stepStatus => $composableBuilder(
    column: $table.stepStatus,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get note => $composableBuilder(
    column: $table.note,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordsTableOrderingComposer get recordId {
    final $$RecordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableOrderingComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordStepsTable> {
  $$RecordStepsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stepName =>
      $composableBuilder(column: $table.stepName, builder: (column) => column);

  GeneratedColumn<int> get stepOrder =>
      $composableBuilder(column: $table.stepOrder, builder: (column) => column);

  GeneratedColumn<String> get stepStatus => $composableBuilder(
    column: $table.stepStatus,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get completedAt => $composableBuilder(
    column: $table.completedAt,
    builder: (column) => column,
  );

  GeneratedColumn<String> get note =>
      $composableBuilder(column: $table.note, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordsTableAnnotationComposer get recordId {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordStepsTable,
          RecordStep,
          $$RecordStepsTableFilterComposer,
          $$RecordStepsTableOrderingComposer,
          $$RecordStepsTableAnnotationComposer,
          $$RecordStepsTableCreateCompanionBuilder,
          $$RecordStepsTableUpdateCompanionBuilder,
          (RecordStep, $$RecordStepsTableReferences),
          RecordStep,
          PrefetchHooks Function({bool recordId})
        > {
  $$RecordStepsTableTableManager(_$AppDatabase db, $RecordStepsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordStepsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordStepsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordStepsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<String> stepName = const Value.absent(),
                Value<int> stepOrder = const Value.absent(),
                Value<String> stepStatus = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordStepsCompanion(
                id: id,
                recordId: recordId,
                stepName: stepName,
                stepOrder: stepOrder,
                stepStatus: stepStatus,
                completedAt: completedAt,
                note: note,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordId,
                required String stepName,
                required int stepOrder,
                Value<String> stepStatus = const Value.absent(),
                Value<DateTime?> completedAt = const Value.absent(),
                Value<String?> note = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordStepsCompanion.insert(
                id: id,
                recordId: recordId,
                stepName: stepName,
                stepOrder: stepOrder,
                stepStatus: stepStatus,
                completedAt: completedAt,
                note: note,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordStepsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable: $$RecordStepsTableReferences
                                    ._recordIdTable(db),
                                referencedColumn: $$RecordStepsTableReferences
                                    ._recordIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordStepsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordStepsTable,
      RecordStep,
      $$RecordStepsTableFilterComposer,
      $$RecordStepsTableOrderingComposer,
      $$RecordStepsTableAnnotationComposer,
      $$RecordStepsTableCreateCompanionBuilder,
      $$RecordStepsTableUpdateCompanionBuilder,
      (RecordStep, $$RecordStepsTableReferences),
      RecordStep,
      PrefetchHooks Function({bool recordId})
    >;
typedef $$RecordPhotosTableCreateCompanionBuilder =
    RecordPhotosCompanion Function({
      Value<int> id,
      required int recordId,
      Value<String?> photoPath,
      Value<String?> photoUrl,
      Value<String?> thumbnailPath,
      Value<String?> description,
      Value<int?> width,
      Value<int?> height,
      Value<int?> fileSize,
      Value<int> sortOrder,
      Value<DateTime> createdAt,
    });
typedef $$RecordPhotosTableUpdateCompanionBuilder =
    RecordPhotosCompanion Function({
      Value<int> id,
      Value<int> recordId,
      Value<String?> photoPath,
      Value<String?> photoUrl,
      Value<String?> thumbnailPath,
      Value<String?> description,
      Value<int?> width,
      Value<int?> height,
      Value<int?> fileSize,
      Value<int> sortOrder,
      Value<DateTime> createdAt,
    });

final class $$RecordPhotosTableReferences
    extends BaseReferences<_$AppDatabase, $RecordPhotosTable, RecordPhoto> {
  $$RecordPhotosTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.recordPhotos.recordId, db.records.id),
      );

  $$RecordsTableProcessedTableManager get recordId {
    final $_column = $_itemColumn<int>('record_id')!;

    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordPhotosTableFilterComposer
    extends Composer<_$AppDatabase, $RecordPhotosTable> {
  $$RecordPhotosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoUrl => $composableBuilder(
    column: $table.photoUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fileSize => $composableBuilder(
    column: $table.fileSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordsTableFilterComposer get recordId {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordPhotosTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordPhotosTable> {
  $$RecordPhotosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoPath => $composableBuilder(
    column: $table.photoPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoUrl => $composableBuilder(
    column: $table.photoUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get width => $composableBuilder(
    column: $table.width,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get height => $composableBuilder(
    column: $table.height,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fileSize => $composableBuilder(
    column: $table.fileSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortOrder => $composableBuilder(
    column: $table.sortOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordsTableOrderingComposer get recordId {
    final $$RecordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableOrderingComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordPhotosTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordPhotosTable> {
  $$RecordPhotosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get photoPath =>
      $composableBuilder(column: $table.photoPath, builder: (column) => column);

  GeneratedColumn<String> get photoUrl =>
      $composableBuilder(column: $table.photoUrl, builder: (column) => column);

  GeneratedColumn<String> get thumbnailPath => $composableBuilder(
    column: $table.thumbnailPath,
    builder: (column) => column,
  );

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<int> get fileSize =>
      $composableBuilder(column: $table.fileSize, builder: (column) => column);

  GeneratedColumn<int> get sortOrder =>
      $composableBuilder(column: $table.sortOrder, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordsTableAnnotationComposer get recordId {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordPhotosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordPhotosTable,
          RecordPhoto,
          $$RecordPhotosTableFilterComposer,
          $$RecordPhotosTableOrderingComposer,
          $$RecordPhotosTableAnnotationComposer,
          $$RecordPhotosTableCreateCompanionBuilder,
          $$RecordPhotosTableUpdateCompanionBuilder,
          (RecordPhoto, $$RecordPhotosTableReferences),
          RecordPhoto,
          PrefetchHooks Function({bool recordId})
        > {
  $$RecordPhotosTableTableManager(_$AppDatabase db, $RecordPhotosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordPhotosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordPhotosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordPhotosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<String?> photoPath = const Value.absent(),
                Value<String?> photoUrl = const Value.absent(),
                Value<String?> thumbnailPath = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int?> width = const Value.absent(),
                Value<int?> height = const Value.absent(),
                Value<int?> fileSize = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordPhotosCompanion(
                id: id,
                recordId: recordId,
                photoPath: photoPath,
                photoUrl: photoUrl,
                thumbnailPath: thumbnailPath,
                description: description,
                width: width,
                height: height,
                fileSize: fileSize,
                sortOrder: sortOrder,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordId,
                Value<String?> photoPath = const Value.absent(),
                Value<String?> photoUrl = const Value.absent(),
                Value<String?> thumbnailPath = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<int?> width = const Value.absent(),
                Value<int?> height = const Value.absent(),
                Value<int?> fileSize = const Value.absent(),
                Value<int> sortOrder = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordPhotosCompanion.insert(
                id: id,
                recordId: recordId,
                photoPath: photoPath,
                photoUrl: photoUrl,
                thumbnailPath: thumbnailPath,
                description: description,
                width: width,
                height: height,
                fileSize: fileSize,
                sortOrder: sortOrder,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordPhotosTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable: $$RecordPhotosTableReferences
                                    ._recordIdTable(db),
                                referencedColumn: $$RecordPhotosTableReferences
                                    ._recordIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordPhotosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordPhotosTable,
      RecordPhoto,
      $$RecordPhotosTableFilterComposer,
      $$RecordPhotosTableOrderingComposer,
      $$RecordPhotosTableAnnotationComposer,
      $$RecordPhotosTableCreateCompanionBuilder,
      $$RecordPhotosTableUpdateCompanionBuilder,
      (RecordPhoto, $$RecordPhotosTableReferences),
      RecordPhoto,
      PrefetchHooks Function({bool recordId})
    >;
typedef $$RecordLocationsTableCreateCompanionBuilder =
    RecordLocationsCompanion Function({
      Value<int> id,
      required int recordId,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<String?> address,
      Value<String?> locationName,
      Value<double?> accuracy,
      Value<double?> altitude,
      Value<double?> speed,
      Value<double?> heading,
      Value<DateTime> createdAt,
    });
typedef $$RecordLocationsTableUpdateCompanionBuilder =
    RecordLocationsCompanion Function({
      Value<int> id,
      Value<int> recordId,
      Value<double?> latitude,
      Value<double?> longitude,
      Value<String?> address,
      Value<String?> locationName,
      Value<double?> accuracy,
      Value<double?> altitude,
      Value<double?> speed,
      Value<double?> heading,
      Value<DateTime> createdAt,
    });

final class $$RecordLocationsTableReferences
    extends
        BaseReferences<_$AppDatabase, $RecordLocationsTable, RecordLocation> {
  $$RecordLocationsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.recordLocations.recordId, db.records.id),
      );

  $$RecordsTableProcessedTableManager get recordId {
    final $_column = $_itemColumn<int>('record_id')!;

    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordLocationsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordLocationsTable> {
  $$RecordLocationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get altitude => $composableBuilder(
    column: $table.altitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get speed => $composableBuilder(
    column: $table.speed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get heading => $composableBuilder(
    column: $table.heading,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordsTableFilterComposer get recordId {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordLocationsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordLocationsTable> {
  $$RecordLocationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get address => $composableBuilder(
    column: $table.address,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get altitude => $composableBuilder(
    column: $table.altitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get speed => $composableBuilder(
    column: $table.speed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get heading => $composableBuilder(
    column: $table.heading,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordsTableOrderingComposer get recordId {
    final $$RecordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableOrderingComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordLocationsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordLocationsTable> {
  $$RecordLocationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get accuracy =>
      $composableBuilder(column: $table.accuracy, builder: (column) => column);

  GeneratedColumn<double> get altitude =>
      $composableBuilder(column: $table.altitude, builder: (column) => column);

  GeneratedColumn<double> get speed =>
      $composableBuilder(column: $table.speed, builder: (column) => column);

  GeneratedColumn<double> get heading =>
      $composableBuilder(column: $table.heading, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordsTableAnnotationComposer get recordId {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordLocationsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordLocationsTable,
          RecordLocation,
          $$RecordLocationsTableFilterComposer,
          $$RecordLocationsTableOrderingComposer,
          $$RecordLocationsTableAnnotationComposer,
          $$RecordLocationsTableCreateCompanionBuilder,
          $$RecordLocationsTableUpdateCompanionBuilder,
          (RecordLocation, $$RecordLocationsTableReferences),
          RecordLocation,
          PrefetchHooks Function({bool recordId})
        > {
  $$RecordLocationsTableTableManager(
    _$AppDatabase db,
    $RecordLocationsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordLocationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordLocationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordLocationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String?> locationName = const Value.absent(),
                Value<double?> accuracy = const Value.absent(),
                Value<double?> altitude = const Value.absent(),
                Value<double?> speed = const Value.absent(),
                Value<double?> heading = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordLocationsCompanion(
                id: id,
                recordId: recordId,
                latitude: latitude,
                longitude: longitude,
                address: address,
                locationName: locationName,
                accuracy: accuracy,
                altitude: altitude,
                speed: speed,
                heading: heading,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordId,
                Value<double?> latitude = const Value.absent(),
                Value<double?> longitude = const Value.absent(),
                Value<String?> address = const Value.absent(),
                Value<String?> locationName = const Value.absent(),
                Value<double?> accuracy = const Value.absent(),
                Value<double?> altitude = const Value.absent(),
                Value<double?> speed = const Value.absent(),
                Value<double?> heading = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordLocationsCompanion.insert(
                id: id,
                recordId: recordId,
                latitude: latitude,
                longitude: longitude,
                address: address,
                locationName: locationName,
                accuracy: accuracy,
                altitude: altitude,
                speed: speed,
                heading: heading,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordLocationsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable:
                                    $$RecordLocationsTableReferences
                                        ._recordIdTable(db),
                                referencedColumn:
                                    $$RecordLocationsTableReferences
                                        ._recordIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordLocationsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordLocationsTable,
      RecordLocation,
      $$RecordLocationsTableFilterComposer,
      $$RecordLocationsTableOrderingComposer,
      $$RecordLocationsTableAnnotationComposer,
      $$RecordLocationsTableCreateCompanionBuilder,
      $$RecordLocationsTableUpdateCompanionBuilder,
      (RecordLocation, $$RecordLocationsTableReferences),
      RecordLocation,
      PrefetchHooks Function({bool recordId})
    >;
typedef $$RecordTagsTableCreateCompanionBuilder =
    RecordTagsCompanion Function({
      Value<int> id,
      required int recordId,
      required String tagName,
      Value<String?> tagColor,
      Value<DateTime> createdAt,
    });
typedef $$RecordTagsTableUpdateCompanionBuilder =
    RecordTagsCompanion Function({
      Value<int> id,
      Value<int> recordId,
      Value<String> tagName,
      Value<String?> tagColor,
      Value<DateTime> createdAt,
    });

final class $$RecordTagsTableReferences
    extends BaseReferences<_$AppDatabase, $RecordTagsTable, RecordTag> {
  $$RecordTagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordsTable _recordIdTable(_$AppDatabase db) => db.records
      .createAlias($_aliasNameGenerator(db.recordTags.recordId, db.records.id));

  $$RecordsTableProcessedTableManager get recordId {
    final $_column = $_itemColumn<int>('record_id')!;

    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordTagsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordTagsTable> {
  $$RecordTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagName => $composableBuilder(
    column: $table.tagName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagColor => $composableBuilder(
    column: $table.tagColor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordsTableFilterComposer get recordId {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTagsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordTagsTable> {
  $$RecordTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagName => $composableBuilder(
    column: $table.tagName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagColor => $composableBuilder(
    column: $table.tagColor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordsTableOrderingComposer get recordId {
    final $$RecordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableOrderingComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTagsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordTagsTable> {
  $$RecordTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tagName =>
      $composableBuilder(column: $table.tagName, builder: (column) => column);

  GeneratedColumn<String> get tagColor =>
      $composableBuilder(column: $table.tagColor, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordsTableAnnotationComposer get recordId {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTagsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordTagsTable,
          RecordTag,
          $$RecordTagsTableFilterComposer,
          $$RecordTagsTableOrderingComposer,
          $$RecordTagsTableAnnotationComposer,
          $$RecordTagsTableCreateCompanionBuilder,
          $$RecordTagsTableUpdateCompanionBuilder,
          (RecordTag, $$RecordTagsTableReferences),
          RecordTag,
          PrefetchHooks Function({bool recordId})
        > {
  $$RecordTagsTableTableManager(_$AppDatabase db, $RecordTagsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<String> tagName = const Value.absent(),
                Value<String?> tagColor = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordTagsCompanion(
                id: id,
                recordId: recordId,
                tagName: tagName,
                tagColor: tagColor,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordId,
                required String tagName,
                Value<String?> tagColor = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordTagsCompanion.insert(
                id: id,
                recordId: recordId,
                tagName: tagName,
                tagColor: tagColor,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordTagsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable: $$RecordTagsTableReferences
                                    ._recordIdTable(db),
                                referencedColumn: $$RecordTagsTableReferences
                                    ._recordIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordTagsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordTagsTable,
      RecordTag,
      $$RecordTagsTableFilterComposer,
      $$RecordTagsTableOrderingComposer,
      $$RecordTagsTableAnnotationComposer,
      $$RecordTagsTableCreateCompanionBuilder,
      $$RecordTagsTableUpdateCompanionBuilder,
      (RecordTag, $$RecordTagsTableReferences),
      RecordTag,
      PrefetchHooks Function({bool recordId})
    >;
typedef $$CategoryRecordsTableCreateCompanionBuilder =
    CategoryRecordsCompanion Function({
      Value<int> id,
      required int categoryId,
      required int recordId,
      Value<DateTime> createdAt,
    });
typedef $$CategoryRecordsTableUpdateCompanionBuilder =
    CategoryRecordsCompanion Function({
      Value<int> id,
      Value<int> categoryId,
      Value<int> recordId,
      Value<DateTime> createdAt,
    });

final class $$CategoryRecordsTableReferences
    extends
        BaseReferences<_$AppDatabase, $CategoryRecordsTable, CategoryRecord> {
  $$CategoryRecordsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $CategoriesTable _categoryIdTable(_$AppDatabase db) =>
      db.categories.createAlias(
        $_aliasNameGenerator(db.categoryRecords.categoryId, db.categories.id),
      );

  $$CategoriesTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$CategoriesTableTableManager(
      $_db,
      $_db.categories,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_categoryIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.categoryRecords.recordId, db.records.id),
      );

  $$RecordsTableProcessedTableManager get recordId {
    final $_column = $_itemColumn<int>('record_id')!;

    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$CategoryRecordsTableFilterComposer
    extends Composer<_$AppDatabase, $CategoryRecordsTable> {
  $$CategoryRecordsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoriesTableFilterComposer get categoryId {
    final $$CategoriesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableFilterComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RecordsTableFilterComposer get recordId {
    final $$RecordsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableFilterComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CategoryRecordsTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoryRecordsTable> {
  $$CategoryRecordsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoriesTableOrderingComposer get categoryId {
    final $$CategoriesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableOrderingComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RecordsTableOrderingComposer get recordId {
    final $$RecordsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableOrderingComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CategoryRecordsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoryRecordsTable> {
  $$CategoryRecordsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$CategoriesTableAnnotationComposer get categoryId {
    final $$CategoriesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.categories,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoriesTableAnnotationComposer(
            $db: $db,
            $table: $db.categories,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$RecordsTableAnnotationComposer get recordId {
    final $$RecordsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordId,
      referencedTable: $db.records,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordsTableAnnotationComposer(
            $db: $db,
            $table: $db.records,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$CategoryRecordsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoryRecordsTable,
          CategoryRecord,
          $$CategoryRecordsTableFilterComposer,
          $$CategoryRecordsTableOrderingComposer,
          $$CategoryRecordsTableAnnotationComposer,
          $$CategoryRecordsTableCreateCompanionBuilder,
          $$CategoryRecordsTableUpdateCompanionBuilder,
          (CategoryRecord, $$CategoryRecordsTableReferences),
          CategoryRecord,
          PrefetchHooks Function({bool categoryId, bool recordId})
        > {
  $$CategoryRecordsTableTableManager(
    _$AppDatabase db,
    $CategoryRecordsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryRecordsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryRecordsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryRecordsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => CategoryRecordsCompanion(
                id: id,
                categoryId: categoryId,
                recordId: recordId,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int categoryId,
                required int recordId,
                Value<DateTime> createdAt = const Value.absent(),
              }) => CategoryRecordsCompanion.insert(
                id: id,
                categoryId: categoryId,
                recordId: recordId,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CategoryRecordsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({categoryId = false, recordId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (categoryId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.categoryId,
                                referencedTable:
                                    $$CategoryRecordsTableReferences
                                        ._categoryIdTable(db),
                                referencedColumn:
                                    $$CategoryRecordsTableReferences
                                        ._categoryIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable:
                                    $$CategoryRecordsTableReferences
                                        ._recordIdTable(db),
                                referencedColumn:
                                    $$CategoryRecordsTableReferences
                                        ._recordIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$CategoryRecordsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoryRecordsTable,
      CategoryRecord,
      $$CategoryRecordsTableFilterComposer,
      $$CategoryRecordsTableOrderingComposer,
      $$CategoryRecordsTableAnnotationComposer,
      $$CategoryRecordsTableCreateCompanionBuilder,
      $$CategoryRecordsTableUpdateCompanionBuilder,
      (CategoryRecord, $$CategoryRecordsTableReferences),
      CategoryRecord,
      PrefetchHooks Function({bool categoryId, bool recordId})
    >;
typedef $$RecordTypeConfigsTableCreateCompanionBuilder =
    RecordTypeConfigsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      required String configKey,
      Value<String?> configValue,
      Value<String> configType,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });
typedef $$RecordTypeConfigsTableUpdateCompanionBuilder =
    RecordTypeConfigsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<String> configKey,
      Value<String?> configValue,
      Value<String> configType,
      Value<DateTime> createdAt,
      Value<DateTime?> updatedAt,
    });

final class $$RecordTypeConfigsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecordTypeConfigsTable,
          RecordTypeConfig
        > {
  $$RecordTypeConfigsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(
          db.recordTypeConfigs.recordTypeId,
          db.recordTypes.id,
        ),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordTypeConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordTypeConfigsTable> {
  $$RecordTypeConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get configKey => $composableBuilder(
    column: $table.configKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get configValue => $composableBuilder(
    column: $table.configValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get configType => $composableBuilder(
    column: $table.configType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTypeConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordTypeConfigsTable> {
  $$RecordTypeConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get configKey => $composableBuilder(
    column: $table.configKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get configValue => $composableBuilder(
    column: $table.configValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get configType => $composableBuilder(
    column: $table.configType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTypeConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordTypeConfigsTable> {
  $$RecordTypeConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get configKey =>
      $composableBuilder(column: $table.configKey, builder: (column) => column);

  GeneratedColumn<String> get configValue => $composableBuilder(
    column: $table.configValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get configType => $composableBuilder(
    column: $table.configType,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTypeConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordTypeConfigsTable,
          RecordTypeConfig,
          $$RecordTypeConfigsTableFilterComposer,
          $$RecordTypeConfigsTableOrderingComposer,
          $$RecordTypeConfigsTableAnnotationComposer,
          $$RecordTypeConfigsTableCreateCompanionBuilder,
          $$RecordTypeConfigsTableUpdateCompanionBuilder,
          (RecordTypeConfig, $$RecordTypeConfigsTableReferences),
          RecordTypeConfig,
          PrefetchHooks Function({bool recordTypeId})
        > {
  $$RecordTypeConfigsTableTableManager(
    _$AppDatabase db,
    $RecordTypeConfigsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordTypeConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordTypeConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordTypeConfigsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<String> configKey = const Value.absent(),
                Value<String?> configValue = const Value.absent(),
                Value<String> configType = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => RecordTypeConfigsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                configKey: configKey,
                configValue: configValue,
                configType: configType,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                required String configKey,
                Value<String?> configValue = const Value.absent(),
                Value<String> configType = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime?> updatedAt = const Value.absent(),
              }) => RecordTypeConfigsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                configKey: configKey,
                configValue: configValue,
                configType: configType,
                createdAt: createdAt,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordTypeConfigsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordTypeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordTypeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordTypeId,
                                referencedTable:
                                    $$RecordTypeConfigsTableReferences
                                        ._recordTypeIdTable(db),
                                referencedColumn:
                                    $$RecordTypeConfigsTableReferences
                                        ._recordTypeIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordTypeConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordTypeConfigsTable,
      RecordTypeConfig,
      $$RecordTypeConfigsTableFilterComposer,
      $$RecordTypeConfigsTableOrderingComposer,
      $$RecordTypeConfigsTableAnnotationComposer,
      $$RecordTypeConfigsTableCreateCompanionBuilder,
      $$RecordTypeConfigsTableUpdateCompanionBuilder,
      (RecordTypeConfig, $$RecordTypeConfigsTableReferences),
      RecordTypeConfig,
      PrefetchHooks Function({bool recordTypeId})
    >;
typedef $$RecordStepConfigsTableCreateCompanionBuilder =
    RecordStepConfigsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      required String stepName,
      Value<String?> stepDescription,
      required int stepOrder,
      Value<bool> required,
      Value<bool> allowSkip,
      Value<DateTime> createdAt,
    });
typedef $$RecordStepConfigsTableUpdateCompanionBuilder =
    RecordStepConfigsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<String> stepName,
      Value<String?> stepDescription,
      Value<int> stepOrder,
      Value<bool> required,
      Value<bool> allowSkip,
      Value<DateTime> createdAt,
    });

final class $$RecordStepConfigsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecordStepConfigsTable,
          RecordStepConfig
        > {
  $$RecordStepConfigsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(
          db.recordStepConfigs.recordTypeId,
          db.recordTypes.id,
        ),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordStepConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordStepConfigsTable> {
  $$RecordStepConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stepName => $composableBuilder(
    column: $table.stepName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get stepDescription => $composableBuilder(
    column: $table.stepDescription,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get stepOrder => $composableBuilder(
    column: $table.stepOrder,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get required => $composableBuilder(
    column: $table.required,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get allowSkip => $composableBuilder(
    column: $table.allowSkip,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordStepConfigsTable> {
  $$RecordStepConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stepName => $composableBuilder(
    column: $table.stepName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get stepDescription => $composableBuilder(
    column: $table.stepDescription,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get stepOrder => $composableBuilder(
    column: $table.stepOrder,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get required => $composableBuilder(
    column: $table.required,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get allowSkip => $composableBuilder(
    column: $table.allowSkip,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordStepConfigsTable> {
  $$RecordStepConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get stepName =>
      $composableBuilder(column: $table.stepName, builder: (column) => column);

  GeneratedColumn<String> get stepDescription => $composableBuilder(
    column: $table.stepDescription,
    builder: (column) => column,
  );

  GeneratedColumn<int> get stepOrder =>
      $composableBuilder(column: $table.stepOrder, builder: (column) => column);

  GeneratedColumn<bool> get required =>
      $composableBuilder(column: $table.required, builder: (column) => column);

  GeneratedColumn<bool> get allowSkip =>
      $composableBuilder(column: $table.allowSkip, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordStepConfigsTable,
          RecordStepConfig,
          $$RecordStepConfigsTableFilterComposer,
          $$RecordStepConfigsTableOrderingComposer,
          $$RecordStepConfigsTableAnnotationComposer,
          $$RecordStepConfigsTableCreateCompanionBuilder,
          $$RecordStepConfigsTableUpdateCompanionBuilder,
          (RecordStepConfig, $$RecordStepConfigsTableReferences),
          RecordStepConfig,
          PrefetchHooks Function({bool recordTypeId})
        > {
  $$RecordStepConfigsTableTableManager(
    _$AppDatabase db,
    $RecordStepConfigsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordStepConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordStepConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordStepConfigsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<String> stepName = const Value.absent(),
                Value<String?> stepDescription = const Value.absent(),
                Value<int> stepOrder = const Value.absent(),
                Value<bool> required = const Value.absent(),
                Value<bool> allowSkip = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordStepConfigsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                stepName: stepName,
                stepDescription: stepDescription,
                stepOrder: stepOrder,
                required: required,
                allowSkip: allowSkip,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                required String stepName,
                Value<String?> stepDescription = const Value.absent(),
                required int stepOrder,
                Value<bool> required = const Value.absent(),
                Value<bool> allowSkip = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordStepConfigsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                stepName: stepName,
                stepDescription: stepDescription,
                stepOrder: stepOrder,
                required: required,
                allowSkip: allowSkip,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordStepConfigsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordTypeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordTypeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordTypeId,
                                referencedTable:
                                    $$RecordStepConfigsTableReferences
                                        ._recordTypeIdTable(db),
                                referencedColumn:
                                    $$RecordStepConfigsTableReferences
                                        ._recordTypeIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordStepConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordStepConfigsTable,
      RecordStepConfig,
      $$RecordStepConfigsTableFilterComposer,
      $$RecordStepConfigsTableOrderingComposer,
      $$RecordStepConfigsTableAnnotationComposer,
      $$RecordStepConfigsTableCreateCompanionBuilder,
      $$RecordStepConfigsTableUpdateCompanionBuilder,
      (RecordStepConfig, $$RecordStepConfigsTableReferences),
      RecordStepConfig,
      PrefetchHooks Function({bool recordTypeId})
    >;
typedef $$RecordValueConfigsTableCreateCompanionBuilder =
    RecordValueConfigsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      required String fieldName,
      Value<String?> fieldLabel,
      Value<String> fieldType,
      Value<String?> unit,
      Value<double?> minValue,
      Value<double?> maxValue,
      Value<double?> defaultValue,
      Value<String?> selectionOptions,
      Value<bool> isRequired,
      Value<DateTime> createdAt,
    });
typedef $$RecordValueConfigsTableUpdateCompanionBuilder =
    RecordValueConfigsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<String> fieldName,
      Value<String?> fieldLabel,
      Value<String> fieldType,
      Value<String?> unit,
      Value<double?> minValue,
      Value<double?> maxValue,
      Value<double?> defaultValue,
      Value<String?> selectionOptions,
      Value<bool> isRequired,
      Value<DateTime> createdAt,
    });

final class $$RecordValueConfigsTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecordValueConfigsTable,
          RecordValueConfig
        > {
  $$RecordValueConfigsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(
          db.recordValueConfigs.recordTypeId,
          db.recordTypes.id,
        ),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordValueConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $RecordValueConfigsTable> {
  $$RecordValueConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldName => $composableBuilder(
    column: $table.fieldName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldLabel => $composableBuilder(
    column: $table.fieldLabel,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fieldType => $composableBuilder(
    column: $table.fieldType,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get minValue => $composableBuilder(
    column: $table.minValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get maxValue => $composableBuilder(
    column: $table.maxValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get defaultValue => $composableBuilder(
    column: $table.defaultValue,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get selectionOptions => $composableBuilder(
    column: $table.selectionOptions,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isRequired => $composableBuilder(
    column: $table.isRequired,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordValueConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordValueConfigsTable> {
  $$RecordValueConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldName => $composableBuilder(
    column: $table.fieldName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldLabel => $composableBuilder(
    column: $table.fieldLabel,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fieldType => $composableBuilder(
    column: $table.fieldType,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get minValue => $composableBuilder(
    column: $table.minValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get maxValue => $composableBuilder(
    column: $table.maxValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get defaultValue => $composableBuilder(
    column: $table.defaultValue,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get selectionOptions => $composableBuilder(
    column: $table.selectionOptions,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isRequired => $composableBuilder(
    column: $table.isRequired,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordValueConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordValueConfigsTable> {
  $$RecordValueConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fieldName =>
      $composableBuilder(column: $table.fieldName, builder: (column) => column);

  GeneratedColumn<String> get fieldLabel => $composableBuilder(
    column: $table.fieldLabel,
    builder: (column) => column,
  );

  GeneratedColumn<String> get fieldType =>
      $composableBuilder(column: $table.fieldType, builder: (column) => column);

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  GeneratedColumn<double> get minValue =>
      $composableBuilder(column: $table.minValue, builder: (column) => column);

  GeneratedColumn<double> get maxValue =>
      $composableBuilder(column: $table.maxValue, builder: (column) => column);

  GeneratedColumn<double> get defaultValue => $composableBuilder(
    column: $table.defaultValue,
    builder: (column) => column,
  );

  GeneratedColumn<String> get selectionOptions => $composableBuilder(
    column: $table.selectionOptions,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isRequired => $composableBuilder(
    column: $table.isRequired,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordValueConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordValueConfigsTable,
          RecordValueConfig,
          $$RecordValueConfigsTableFilterComposer,
          $$RecordValueConfigsTableOrderingComposer,
          $$RecordValueConfigsTableAnnotationComposer,
          $$RecordValueConfigsTableCreateCompanionBuilder,
          $$RecordValueConfigsTableUpdateCompanionBuilder,
          (RecordValueConfig, $$RecordValueConfigsTableReferences),
          RecordValueConfig,
          PrefetchHooks Function({bool recordTypeId})
        > {
  $$RecordValueConfigsTableTableManager(
    _$AppDatabase db,
    $RecordValueConfigsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordValueConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordValueConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordValueConfigsTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<String> fieldName = const Value.absent(),
                Value<String?> fieldLabel = const Value.absent(),
                Value<String> fieldType = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<double?> minValue = const Value.absent(),
                Value<double?> maxValue = const Value.absent(),
                Value<double?> defaultValue = const Value.absent(),
                Value<String?> selectionOptions = const Value.absent(),
                Value<bool> isRequired = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordValueConfigsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                fieldName: fieldName,
                fieldLabel: fieldLabel,
                fieldType: fieldType,
                unit: unit,
                minValue: minValue,
                maxValue: maxValue,
                defaultValue: defaultValue,
                selectionOptions: selectionOptions,
                isRequired: isRequired,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                required String fieldName,
                Value<String?> fieldLabel = const Value.absent(),
                Value<String> fieldType = const Value.absent(),
                Value<String?> unit = const Value.absent(),
                Value<double?> minValue = const Value.absent(),
                Value<double?> maxValue = const Value.absent(),
                Value<double?> defaultValue = const Value.absent(),
                Value<String?> selectionOptions = const Value.absent(),
                Value<bool> isRequired = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordValueConfigsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                fieldName: fieldName,
                fieldLabel: fieldLabel,
                fieldType: fieldType,
                unit: unit,
                minValue: minValue,
                maxValue: maxValue,
                defaultValue: defaultValue,
                selectionOptions: selectionOptions,
                isRequired: isRequired,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordValueConfigsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordTypeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordTypeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordTypeId,
                                referencedTable:
                                    $$RecordValueConfigsTableReferences
                                        ._recordTypeIdTable(db),
                                referencedColumn:
                                    $$RecordValueConfigsTableReferences
                                        ._recordTypeIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$RecordValueConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordValueConfigsTable,
      RecordValueConfig,
      $$RecordValueConfigsTableFilterComposer,
      $$RecordValueConfigsTableOrderingComposer,
      $$RecordValueConfigsTableAnnotationComposer,
      $$RecordValueConfigsTableCreateCompanionBuilder,
      $$RecordValueConfigsTableUpdateCompanionBuilder,
      (RecordValueConfig, $$RecordValueConfigsTableReferences),
      RecordValueConfig,
      PrefetchHooks Function({bool recordTypeId})
    >;
typedef $$TagConfigsTableCreateCompanionBuilder =
    TagConfigsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      required String tagName,
      Value<String?> tagColor,
      Value<bool> isPreset,
      Value<DateTime> createdAt,
    });
typedef $$TagConfigsTableUpdateCompanionBuilder =
    TagConfigsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<String> tagName,
      Value<String?> tagColor,
      Value<bool> isPreset,
      Value<DateTime> createdAt,
    });

final class $$TagConfigsTableReferences
    extends BaseReferences<_$AppDatabase, $TagConfigsTable, TagConfig> {
  $$TagConfigsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(db.tagConfigs.recordTypeId, db.recordTypes.id),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$TagConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $TagConfigsTable> {
  $$TagConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagName => $composableBuilder(
    column: $table.tagName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tagColor => $composableBuilder(
    column: $table.tagColor,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPreset => $composableBuilder(
    column: $table.isPreset,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TagConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $TagConfigsTable> {
  $$TagConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagName => $composableBuilder(
    column: $table.tagName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tagColor => $composableBuilder(
    column: $table.tagColor,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPreset => $composableBuilder(
    column: $table.isPreset,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TagConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TagConfigsTable> {
  $$TagConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get tagName =>
      $composableBuilder(column: $table.tagName, builder: (column) => column);

  GeneratedColumn<String> get tagColor =>
      $composableBuilder(column: $table.tagColor, builder: (column) => column);

  GeneratedColumn<bool> get isPreset =>
      $composableBuilder(column: $table.isPreset, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$TagConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagConfigsTable,
          TagConfig,
          $$TagConfigsTableFilterComposer,
          $$TagConfigsTableOrderingComposer,
          $$TagConfigsTableAnnotationComposer,
          $$TagConfigsTableCreateCompanionBuilder,
          $$TagConfigsTableUpdateCompanionBuilder,
          (TagConfig, $$TagConfigsTableReferences),
          TagConfig,
          PrefetchHooks Function({bool recordTypeId})
        > {
  $$TagConfigsTableTableManager(_$AppDatabase db, $TagConfigsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagConfigsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<String> tagName = const Value.absent(),
                Value<String?> tagColor = const Value.absent(),
                Value<bool> isPreset = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TagConfigsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                tagName: tagName,
                tagColor: tagColor,
                isPreset: isPreset,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                required String tagName,
                Value<String?> tagColor = const Value.absent(),
                Value<bool> isPreset = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TagConfigsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                tagName: tagName,
                tagColor: tagColor,
                isPreset: isPreset,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$TagConfigsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordTypeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordTypeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordTypeId,
                                referencedTable: $$TagConfigsTableReferences
                                    ._recordTypeIdTable(db),
                                referencedColumn: $$TagConfigsTableReferences
                                    ._recordTypeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$TagConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagConfigsTable,
      TagConfig,
      $$TagConfigsTableFilterComposer,
      $$TagConfigsTableOrderingComposer,
      $$TagConfigsTableAnnotationComposer,
      $$TagConfigsTableCreateCompanionBuilder,
      $$TagConfigsTableUpdateCompanionBuilder,
      (TagConfig, $$TagConfigsTableReferences),
      TagConfig,
      PrefetchHooks Function({bool recordTypeId})
    >;
typedef $$PhotoConfigsTableCreateCompanionBuilder =
    PhotoConfigsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      Value<int> maxPhotos,
      Value<bool> requirePhoto,
      Value<String> photoQuality,
      Value<bool> allowMultiple,
      Value<bool> enableThumbnail,
      Value<DateTime> createdAt,
    });
typedef $$PhotoConfigsTableUpdateCompanionBuilder =
    PhotoConfigsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<int> maxPhotos,
      Value<bool> requirePhoto,
      Value<String> photoQuality,
      Value<bool> allowMultiple,
      Value<bool> enableThumbnail,
      Value<DateTime> createdAt,
    });

final class $$PhotoConfigsTableReferences
    extends BaseReferences<_$AppDatabase, $PhotoConfigsTable, PhotoConfig> {
  $$PhotoConfigsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(db.photoConfigs.recordTypeId, db.recordTypes.id),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PhotoConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $PhotoConfigsTable> {
  $$PhotoConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxPhotos => $composableBuilder(
    column: $table.maxPhotos,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get requirePhoto => $composableBuilder(
    column: $table.requirePhoto,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get photoQuality => $composableBuilder(
    column: $table.photoQuality,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get allowMultiple => $composableBuilder(
    column: $table.allowMultiple,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableThumbnail => $composableBuilder(
    column: $table.enableThumbnail,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PhotoConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $PhotoConfigsTable> {
  $$PhotoConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxPhotos => $composableBuilder(
    column: $table.maxPhotos,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get requirePhoto => $composableBuilder(
    column: $table.requirePhoto,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get photoQuality => $composableBuilder(
    column: $table.photoQuality,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get allowMultiple => $composableBuilder(
    column: $table.allowMultiple,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableThumbnail => $composableBuilder(
    column: $table.enableThumbnail,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PhotoConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PhotoConfigsTable> {
  $$PhotoConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get maxPhotos =>
      $composableBuilder(column: $table.maxPhotos, builder: (column) => column);

  GeneratedColumn<bool> get requirePhoto => $composableBuilder(
    column: $table.requirePhoto,
    builder: (column) => column,
  );

  GeneratedColumn<String> get photoQuality => $composableBuilder(
    column: $table.photoQuality,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get allowMultiple => $composableBuilder(
    column: $table.allowMultiple,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableThumbnail => $composableBuilder(
    column: $table.enableThumbnail,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PhotoConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PhotoConfigsTable,
          PhotoConfig,
          $$PhotoConfigsTableFilterComposer,
          $$PhotoConfigsTableOrderingComposer,
          $$PhotoConfigsTableAnnotationComposer,
          $$PhotoConfigsTableCreateCompanionBuilder,
          $$PhotoConfigsTableUpdateCompanionBuilder,
          (PhotoConfig, $$PhotoConfigsTableReferences),
          PhotoConfig,
          PrefetchHooks Function({bool recordTypeId})
        > {
  $$PhotoConfigsTableTableManager(_$AppDatabase db, $PhotoConfigsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PhotoConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PhotoConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PhotoConfigsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<int> maxPhotos = const Value.absent(),
                Value<bool> requirePhoto = const Value.absent(),
                Value<String> photoQuality = const Value.absent(),
                Value<bool> allowMultiple = const Value.absent(),
                Value<bool> enableThumbnail = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PhotoConfigsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                maxPhotos: maxPhotos,
                requirePhoto: requirePhoto,
                photoQuality: photoQuality,
                allowMultiple: allowMultiple,
                enableThumbnail: enableThumbnail,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                Value<int> maxPhotos = const Value.absent(),
                Value<bool> requirePhoto = const Value.absent(),
                Value<String> photoQuality = const Value.absent(),
                Value<bool> allowMultiple = const Value.absent(),
                Value<bool> enableThumbnail = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => PhotoConfigsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                maxPhotos: maxPhotos,
                requirePhoto: requirePhoto,
                photoQuality: photoQuality,
                allowMultiple: allowMultiple,
                enableThumbnail: enableThumbnail,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PhotoConfigsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordTypeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordTypeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordTypeId,
                                referencedTable: $$PhotoConfigsTableReferences
                                    ._recordTypeIdTable(db),
                                referencedColumn: $$PhotoConfigsTableReferences
                                    ._recordTypeIdTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PhotoConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PhotoConfigsTable,
      PhotoConfig,
      $$PhotoConfigsTableFilterComposer,
      $$PhotoConfigsTableOrderingComposer,
      $$PhotoConfigsTableAnnotationComposer,
      $$PhotoConfigsTableCreateCompanionBuilder,
      $$PhotoConfigsTableUpdateCompanionBuilder,
      (PhotoConfig, $$PhotoConfigsTableReferences),
      PhotoConfig,
      PrefetchHooks Function({bool recordTypeId})
    >;
typedef $$LocationConfigsTableCreateCompanionBuilder =
    LocationConfigsCompanion Function({
      Value<int> id,
      required int recordTypeId,
      Value<bool> requireLocation,
      Value<String> locationAccuracy,
      Value<int> locationTimeout,
      Value<bool> showLocationDetails,
      Value<DateTime> createdAt,
    });
typedef $$LocationConfigsTableUpdateCompanionBuilder =
    LocationConfigsCompanion Function({
      Value<int> id,
      Value<int> recordTypeId,
      Value<bool> requireLocation,
      Value<String> locationAccuracy,
      Value<int> locationTimeout,
      Value<bool> showLocationDetails,
      Value<DateTime> createdAt,
    });

final class $$LocationConfigsTableReferences
    extends
        BaseReferences<_$AppDatabase, $LocationConfigsTable, LocationConfig> {
  $$LocationConfigsTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $RecordTypesTable _recordTypeIdTable(_$AppDatabase db) =>
      db.recordTypes.createAlias(
        $_aliasNameGenerator(
          db.locationConfigs.recordTypeId,
          db.recordTypes.id,
        ),
      );

  $$RecordTypesTableProcessedTableManager get recordTypeId {
    final $_column = $_itemColumn<int>('record_type_id')!;

    final manager = $$RecordTypesTableTableManager(
      $_db,
      $_db.recordTypes,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTypeIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$LocationConfigsTableFilterComposer
    extends Composer<_$AppDatabase, $LocationConfigsTable> {
  $$LocationConfigsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get requireLocation => $composableBuilder(
    column: $table.requireLocation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get locationAccuracy => $composableBuilder(
    column: $table.locationAccuracy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get locationTimeout => $composableBuilder(
    column: $table.locationTimeout,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get showLocationDetails => $composableBuilder(
    column: $table.showLocationDetails,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$RecordTypesTableFilterComposer get recordTypeId {
    final $$RecordTypesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableFilterComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocationConfigsTableOrderingComposer
    extends Composer<_$AppDatabase, $LocationConfigsTable> {
  $$LocationConfigsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get requireLocation => $composableBuilder(
    column: $table.requireLocation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get locationAccuracy => $composableBuilder(
    column: $table.locationAccuracy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get locationTimeout => $composableBuilder(
    column: $table.locationTimeout,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get showLocationDetails => $composableBuilder(
    column: $table.showLocationDetails,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$RecordTypesTableOrderingComposer get recordTypeId {
    final $$RecordTypesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableOrderingComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocationConfigsTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocationConfigsTable> {
  $$LocationConfigsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<bool> get requireLocation => $composableBuilder(
    column: $table.requireLocation,
    builder: (column) => column,
  );

  GeneratedColumn<String> get locationAccuracy => $composableBuilder(
    column: $table.locationAccuracy,
    builder: (column) => column,
  );

  GeneratedColumn<int> get locationTimeout => $composableBuilder(
    column: $table.locationTimeout,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get showLocationDetails => $composableBuilder(
    column: $table.showLocationDetails,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$RecordTypesTableAnnotationComposer get recordTypeId {
    final $$RecordTypesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.recordTypeId,
      referencedTable: $db.recordTypes,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTypesTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTypes,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$LocationConfigsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocationConfigsTable,
          LocationConfig,
          $$LocationConfigsTableFilterComposer,
          $$LocationConfigsTableOrderingComposer,
          $$LocationConfigsTableAnnotationComposer,
          $$LocationConfigsTableCreateCompanionBuilder,
          $$LocationConfigsTableUpdateCompanionBuilder,
          (LocationConfig, $$LocationConfigsTableReferences),
          LocationConfig,
          PrefetchHooks Function({bool recordTypeId})
        > {
  $$LocationConfigsTableTableManager(
    _$AppDatabase db,
    $LocationConfigsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocationConfigsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocationConfigsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocationConfigsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> recordTypeId = const Value.absent(),
                Value<bool> requireLocation = const Value.absent(),
                Value<String> locationAccuracy = const Value.absent(),
                Value<int> locationTimeout = const Value.absent(),
                Value<bool> showLocationDetails = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => LocationConfigsCompanion(
                id: id,
                recordTypeId: recordTypeId,
                requireLocation: requireLocation,
                locationAccuracy: locationAccuracy,
                locationTimeout: locationTimeout,
                showLocationDetails: showLocationDetails,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int recordTypeId,
                Value<bool> requireLocation = const Value.absent(),
                Value<String> locationAccuracy = const Value.absent(),
                Value<int> locationTimeout = const Value.absent(),
                Value<bool> showLocationDetails = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => LocationConfigsCompanion.insert(
                id: id,
                recordTypeId: recordTypeId,
                requireLocation: requireLocation,
                locationAccuracy: locationAccuracy,
                locationTimeout: locationTimeout,
                showLocationDetails: showLocationDetails,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocationConfigsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({recordTypeId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (recordTypeId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordTypeId,
                                referencedTable:
                                    $$LocationConfigsTableReferences
                                        ._recordTypeIdTable(db),
                                referencedColumn:
                                    $$LocationConfigsTableReferences
                                        ._recordTypeIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$LocationConfigsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocationConfigsTable,
      LocationConfig,
      $$LocationConfigsTableFilterComposer,
      $$LocationConfigsTableOrderingComposer,
      $$LocationConfigsTableAnnotationComposer,
      $$LocationConfigsTableCreateCompanionBuilder,
      $$LocationConfigsTableUpdateCompanionBuilder,
      (LocationConfig, $$LocationConfigsTableReferences),
      LocationConfig,
      PrefetchHooks Function({bool recordTypeId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CategoriesTableTableManager get categories =>
      $$CategoriesTableTableManager(_db, _db.categories);
  $$RecordTypesTableTableManager get recordTypes =>
      $$RecordTypesTableTableManager(_db, _db.recordTypes);
  $$RecordsTableTableManager get records =>
      $$RecordsTableTableManager(_db, _db.records);
  $$RecordValuesTableTableManager get recordValues =>
      $$RecordValuesTableTableManager(_db, _db.recordValues);
  $$RecordStepsTableTableManager get recordSteps =>
      $$RecordStepsTableTableManager(_db, _db.recordSteps);
  $$RecordPhotosTableTableManager get recordPhotos =>
      $$RecordPhotosTableTableManager(_db, _db.recordPhotos);
  $$RecordLocationsTableTableManager get recordLocations =>
      $$RecordLocationsTableTableManager(_db, _db.recordLocations);
  $$RecordTagsTableTableManager get recordTags =>
      $$RecordTagsTableTableManager(_db, _db.recordTags);
  $$CategoryRecordsTableTableManager get categoryRecords =>
      $$CategoryRecordsTableTableManager(_db, _db.categoryRecords);
  $$RecordTypeConfigsTableTableManager get recordTypeConfigs =>
      $$RecordTypeConfigsTableTableManager(_db, _db.recordTypeConfigs);
  $$RecordStepConfigsTableTableManager get recordStepConfigs =>
      $$RecordStepConfigsTableTableManager(_db, _db.recordStepConfigs);
  $$RecordValueConfigsTableTableManager get recordValueConfigs =>
      $$RecordValueConfigsTableTableManager(_db, _db.recordValueConfigs);
  $$TagConfigsTableTableManager get tagConfigs =>
      $$TagConfigsTableTableManager(_db, _db.tagConfigs);
  $$PhotoConfigsTableTableManager get photoConfigs =>
      $$PhotoConfigsTableTableManager(_db, _db.photoConfigs);
  $$LocationConfigsTableTableManager get locationConfigs =>
      $$LocationConfigsTableTableManager(_db, _db.locationConfigs);
}
