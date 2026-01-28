// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CategoryTable extends Category
    with TableInfo<$CategoryTable, CategoryData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
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
  static const VerificationMeta _colorThemeMeta = const VerificationMeta(
    'colorTheme',
  );
  @override
  late final GeneratedColumn<String> colorTheme = GeneratedColumn<String>(
    'color_theme',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, icon, colorTheme];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('color_theme')) {
      context.handle(
        _colorThemeMeta,
        colorTheme.isAcceptableOrUnknown(data['color_theme']!, _colorThemeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      colorTheme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color_theme'],
      ),
    );
  }

  @override
  $CategoryTable createAlias(String alias) {
    return $CategoryTable(attachedDatabase, alias);
  }
}

class CategoryData extends DataClass implements Insertable<CategoryData> {
  final int id;
  final String title;
  final String? icon;
  final String? colorTheme;
  const CategoryData({
    required this.id,
    required this.title,
    this.icon,
    this.colorTheme,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    if (!nullToAbsent || colorTheme != null) {
      map['color_theme'] = Variable<String>(colorTheme);
    }
    return map;
  }

  CategoryCompanion toCompanion(bool nullToAbsent) {
    return CategoryCompanion(
      id: Value(id),
      title: Value(title),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      colorTheme: colorTheme == null && nullToAbsent
          ? const Value.absent()
          : Value(colorTheme),
    );
  }

  factory CategoryData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      icon: serializer.fromJson<String?>(json['icon']),
      colorTheme: serializer.fromJson<String?>(json['colorTheme']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'icon': serializer.toJson<String?>(icon),
      'colorTheme': serializer.toJson<String?>(colorTheme),
    };
  }

  CategoryData copyWith({
    int? id,
    String? title,
    Value<String?> icon = const Value.absent(),
    Value<String?> colorTheme = const Value.absent(),
  }) => CategoryData(
    id: id ?? this.id,
    title: title ?? this.title,
    icon: icon.present ? icon.value : this.icon,
    colorTheme: colorTheme.present ? colorTheme.value : this.colorTheme,
  );
  CategoryData copyWithCompanion(CategoryCompanion data) {
    return CategoryData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      icon: data.icon.present ? data.icon.value : this.icon,
      colorTheme: data.colorTheme.present
          ? data.colorTheme.value
          : this.colorTheme,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('icon: $icon, ')
          ..write('colorTheme: $colorTheme')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, icon, colorTheme);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryData &&
          other.id == this.id &&
          other.title == this.title &&
          other.icon == this.icon &&
          other.colorTheme == this.colorTheme);
}

class CategoryCompanion extends UpdateCompanion<CategoryData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> icon;
  final Value<String?> colorTheme;
  const CategoryCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.icon = const Value.absent(),
    this.colorTheme = const Value.absent(),
  });
  CategoryCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.icon = const Value.absent(),
    this.colorTheme = const Value.absent(),
  }) : title = Value(title);
  static Insertable<CategoryData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? icon,
    Expression<String>? colorTheme,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (icon != null) 'icon': icon,
      if (colorTheme != null) 'color_theme': colorTheme,
    });
  }

  CategoryCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String?>? icon,
    Value<String?>? colorTheme,
  }) {
    return CategoryCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      colorTheme: colorTheme ?? this.colorTheme,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (colorTheme.present) {
      map['color_theme'] = Variable<String>(colorTheme.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('icon: $icon, ')
          ..write('colorTheme: $colorTheme')
          ..write(')'))
        .toString();
  }
}

class $ProjectTable extends Project with TableInfo<$ProjectTable, ProjectData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProjectTable(this.attachedDatabase, [this._alias]);
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
      'REFERENCES category (id) ON DELETE CASCADE',
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
  static const VerificationMeta _iconMeta = const VerificationMeta('icon');
  @override
  late final GeneratedColumn<String> icon = GeneratedColumn<String>(
    'icon',
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
  static const VerificationMeta _colorThemeMeta = const VerificationMeta(
    'colorTheme',
  );
  @override
  late final GeneratedColumn<String> colorTheme = GeneratedColumn<String>(
    'color_theme',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _enableNumericRecordMeta =
      const VerificationMeta('enableNumericRecord');
  @override
  late final GeneratedColumn<bool> enableNumericRecord = GeneratedColumn<bool>(
    'enable_numeric_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_numeric_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableOptionRecordMeta =
      const VerificationMeta('enableOptionRecord');
  @override
  late final GeneratedColumn<bool> enableOptionRecord = GeneratedColumn<bool>(
    'enable_option_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_option_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableStepRecordMeta = const VerificationMeta(
    'enableStepRecord',
  );
  @override
  late final GeneratedColumn<bool> enableStepRecord = GeneratedColumn<bool>(
    'enable_step_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_step_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableLocationRecordMeta =
      const VerificationMeta('enableLocationRecord');
  @override
  late final GeneratedColumn<bool> enableLocationRecord = GeneratedColumn<bool>(
    'enable_location_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_location_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableMediaRecordMeta = const VerificationMeta(
    'enableMediaRecord',
  );
  @override
  late final GeneratedColumn<bool> enableMediaRecord = GeneratedColumn<bool>(
    'enable_media_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_media_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableStartRecordMeta = const VerificationMeta(
    'enableStartRecord',
  );
  @override
  late final GeneratedColumn<bool> enableStartRecord = GeneratedColumn<bool>(
    'enable_start_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_start_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableNotificationMeta =
      const VerificationMeta('enableNotification');
  @override
  late final GeneratedColumn<bool> enableNotification = GeneratedColumn<bool>(
    'enable_notification',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_notification" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isArchivedMeta = const VerificationMeta(
    'isArchived',
  );
  @override
  late final GeneratedColumn<bool> isArchived = GeneratedColumn<bool>(
    'is_archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_archived" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isHiddenMeta = const VerificationMeta(
    'isHidden',
  );
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_hidden" IN (0, 1))',
    ),
  );
  static const VerificationMeta _sortWeightMeta = const VerificationMeta(
    'sortWeight',
  );
  @override
  late final GeneratedColumn<int> sortWeight = GeneratedColumn<int>(
    'sort_weight',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
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
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    categoryId,
    name,
    icon,
    description,
    colorTheme,
    enableNumericRecord,
    enableOptionRecord,
    enableStepRecord,
    enableLocationRecord,
    enableMediaRecord,
    enableStartRecord,
    enableNotification,
    isArchived,
    isHidden,
    sortWeight,
    updatedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'project';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProjectData> instance, {
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
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
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
    if (data.containsKey('color_theme')) {
      context.handle(
        _colorThemeMeta,
        colorTheme.isAcceptableOrUnknown(data['color_theme']!, _colorThemeMeta),
      );
    }
    if (data.containsKey('enable_numeric_record')) {
      context.handle(
        _enableNumericRecordMeta,
        enableNumericRecord.isAcceptableOrUnknown(
          data['enable_numeric_record']!,
          _enableNumericRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableNumericRecordMeta);
    }
    if (data.containsKey('enable_option_record')) {
      context.handle(
        _enableOptionRecordMeta,
        enableOptionRecord.isAcceptableOrUnknown(
          data['enable_option_record']!,
          _enableOptionRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableOptionRecordMeta);
    }
    if (data.containsKey('enable_step_record')) {
      context.handle(
        _enableStepRecordMeta,
        enableStepRecord.isAcceptableOrUnknown(
          data['enable_step_record']!,
          _enableStepRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableStepRecordMeta);
    }
    if (data.containsKey('enable_location_record')) {
      context.handle(
        _enableLocationRecordMeta,
        enableLocationRecord.isAcceptableOrUnknown(
          data['enable_location_record']!,
          _enableLocationRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableLocationRecordMeta);
    }
    if (data.containsKey('enable_media_record')) {
      context.handle(
        _enableMediaRecordMeta,
        enableMediaRecord.isAcceptableOrUnknown(
          data['enable_media_record']!,
          _enableMediaRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableMediaRecordMeta);
    }
    if (data.containsKey('enable_start_record')) {
      context.handle(
        _enableStartRecordMeta,
        enableStartRecord.isAcceptableOrUnknown(
          data['enable_start_record']!,
          _enableStartRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableStartRecordMeta);
    }
    if (data.containsKey('enable_notification')) {
      context.handle(
        _enableNotificationMeta,
        enableNotification.isAcceptableOrUnknown(
          data['enable_notification']!,
          _enableNotificationMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableNotificationMeta);
    }
    if (data.containsKey('is_archived')) {
      context.handle(
        _isArchivedMeta,
        isArchived.isAcceptableOrUnknown(data['is_archived']!, _isArchivedMeta),
      );
    } else if (isInserting) {
      context.missing(_isArchivedMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(
        _isHiddenMeta,
        isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta),
      );
    } else if (isInserting) {
      context.missing(_isHiddenMeta);
    }
    if (data.containsKey('sort_weight')) {
      context.handle(
        _sortWeightMeta,
        sortWeight.isAcceptableOrUnknown(data['sort_weight']!, _sortWeightMeta),
      );
    } else if (isInserting) {
      context.missing(_sortWeightMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProjectData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProjectData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      colorTheme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color_theme'],
      ),
      enableNumericRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_numeric_record'],
      )!,
      enableOptionRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_option_record'],
      )!,
      enableStepRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_step_record'],
      )!,
      enableLocationRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_location_record'],
      )!,
      enableMediaRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_media_record'],
      )!,
      enableStartRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_start_record'],
      )!,
      enableNotification: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_notification'],
      )!,
      isArchived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_archived'],
      )!,
      isHidden: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_hidden'],
      )!,
      sortWeight: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}sort_weight'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $ProjectTable createAlias(String alias) {
    return $ProjectTable(attachedDatabase, alias);
  }
}

class ProjectData extends DataClass implements Insertable<ProjectData> {
  final int id;
  final int categoryId;
  final String name;
  final String? icon;
  final String? description;
  final String? colorTheme;
  final bool enableNumericRecord;
  final bool enableOptionRecord;
  final bool enableStepRecord;
  final bool enableLocationRecord;
  final bool enableMediaRecord;
  final bool enableStartRecord;
  final bool enableNotification;
  final bool isArchived;
  final bool isHidden;
  final int sortWeight;
  final DateTime updatedAt;
  final DateTime createdAt;
  const ProjectData({
    required this.id,
    required this.categoryId,
    required this.name,
    this.icon,
    this.description,
    this.colorTheme,
    required this.enableNumericRecord,
    required this.enableOptionRecord,
    required this.enableStepRecord,
    required this.enableLocationRecord,
    required this.enableMediaRecord,
    required this.enableStartRecord,
    required this.enableNotification,
    required this.isArchived,
    required this.isHidden,
    required this.sortWeight,
    required this.updatedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['category_id'] = Variable<int>(categoryId);
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || colorTheme != null) {
      map['color_theme'] = Variable<String>(colorTheme);
    }
    map['enable_numeric_record'] = Variable<bool>(enableNumericRecord);
    map['enable_option_record'] = Variable<bool>(enableOptionRecord);
    map['enable_step_record'] = Variable<bool>(enableStepRecord);
    map['enable_location_record'] = Variable<bool>(enableLocationRecord);
    map['enable_media_record'] = Variable<bool>(enableMediaRecord);
    map['enable_start_record'] = Variable<bool>(enableStartRecord);
    map['enable_notification'] = Variable<bool>(enableNotification);
    map['is_archived'] = Variable<bool>(isArchived);
    map['is_hidden'] = Variable<bool>(isHidden);
    map['sort_weight'] = Variable<int>(sortWeight);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  ProjectCompanion toCompanion(bool nullToAbsent) {
    return ProjectCompanion(
      id: Value(id),
      categoryId: Value(categoryId),
      name: Value(name),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      colorTheme: colorTheme == null && nullToAbsent
          ? const Value.absent()
          : Value(colorTheme),
      enableNumericRecord: Value(enableNumericRecord),
      enableOptionRecord: Value(enableOptionRecord),
      enableStepRecord: Value(enableStepRecord),
      enableLocationRecord: Value(enableLocationRecord),
      enableMediaRecord: Value(enableMediaRecord),
      enableStartRecord: Value(enableStartRecord),
      enableNotification: Value(enableNotification),
      isArchived: Value(isArchived),
      isHidden: Value(isHidden),
      sortWeight: Value(sortWeight),
      updatedAt: Value(updatedAt),
      createdAt: Value(createdAt),
    );
  }

  factory ProjectData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProjectData(
      id: serializer.fromJson<int>(json['id']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      name: serializer.fromJson<String>(json['name']),
      icon: serializer.fromJson<String?>(json['icon']),
      description: serializer.fromJson<String?>(json['description']),
      colorTheme: serializer.fromJson<String?>(json['colorTheme']),
      enableNumericRecord: serializer.fromJson<bool>(
        json['enableNumericRecord'],
      ),
      enableOptionRecord: serializer.fromJson<bool>(json['enableOptionRecord']),
      enableStepRecord: serializer.fromJson<bool>(json['enableStepRecord']),
      enableLocationRecord: serializer.fromJson<bool>(
        json['enableLocationRecord'],
      ),
      enableMediaRecord: serializer.fromJson<bool>(json['enableMediaRecord']),
      enableStartRecord: serializer.fromJson<bool>(json['enableStartRecord']),
      enableNotification: serializer.fromJson<bool>(json['enableNotification']),
      isArchived: serializer.fromJson<bool>(json['isArchived']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
      sortWeight: serializer.fromJson<int>(json['sortWeight']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'categoryId': serializer.toJson<int>(categoryId),
      'name': serializer.toJson<String>(name),
      'icon': serializer.toJson<String?>(icon),
      'description': serializer.toJson<String?>(description),
      'colorTheme': serializer.toJson<String?>(colorTheme),
      'enableNumericRecord': serializer.toJson<bool>(enableNumericRecord),
      'enableOptionRecord': serializer.toJson<bool>(enableOptionRecord),
      'enableStepRecord': serializer.toJson<bool>(enableStepRecord),
      'enableLocationRecord': serializer.toJson<bool>(enableLocationRecord),
      'enableMediaRecord': serializer.toJson<bool>(enableMediaRecord),
      'enableStartRecord': serializer.toJson<bool>(enableStartRecord),
      'enableNotification': serializer.toJson<bool>(enableNotification),
      'isArchived': serializer.toJson<bool>(isArchived),
      'isHidden': serializer.toJson<bool>(isHidden),
      'sortWeight': serializer.toJson<int>(sortWeight),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  ProjectData copyWith({
    int? id,
    int? categoryId,
    String? name,
    Value<String?> icon = const Value.absent(),
    Value<String?> description = const Value.absent(),
    Value<String?> colorTheme = const Value.absent(),
    bool? enableNumericRecord,
    bool? enableOptionRecord,
    bool? enableStepRecord,
    bool? enableLocationRecord,
    bool? enableMediaRecord,
    bool? enableStartRecord,
    bool? enableNotification,
    bool? isArchived,
    bool? isHidden,
    int? sortWeight,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) => ProjectData(
    id: id ?? this.id,
    categoryId: categoryId ?? this.categoryId,
    name: name ?? this.name,
    icon: icon.present ? icon.value : this.icon,
    description: description.present ? description.value : this.description,
    colorTheme: colorTheme.present ? colorTheme.value : this.colorTheme,
    enableNumericRecord: enableNumericRecord ?? this.enableNumericRecord,
    enableOptionRecord: enableOptionRecord ?? this.enableOptionRecord,
    enableStepRecord: enableStepRecord ?? this.enableStepRecord,
    enableLocationRecord: enableLocationRecord ?? this.enableLocationRecord,
    enableMediaRecord: enableMediaRecord ?? this.enableMediaRecord,
    enableStartRecord: enableStartRecord ?? this.enableStartRecord,
    enableNotification: enableNotification ?? this.enableNotification,
    isArchived: isArchived ?? this.isArchived,
    isHidden: isHidden ?? this.isHidden,
    sortWeight: sortWeight ?? this.sortWeight,
    updatedAt: updatedAt ?? this.updatedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  ProjectData copyWithCompanion(ProjectCompanion data) {
    return ProjectData(
      id: data.id.present ? data.id.value : this.id,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      name: data.name.present ? data.name.value : this.name,
      icon: data.icon.present ? data.icon.value : this.icon,
      description: data.description.present
          ? data.description.value
          : this.description,
      colorTheme: data.colorTheme.present
          ? data.colorTheme.value
          : this.colorTheme,
      enableNumericRecord: data.enableNumericRecord.present
          ? data.enableNumericRecord.value
          : this.enableNumericRecord,
      enableOptionRecord: data.enableOptionRecord.present
          ? data.enableOptionRecord.value
          : this.enableOptionRecord,
      enableStepRecord: data.enableStepRecord.present
          ? data.enableStepRecord.value
          : this.enableStepRecord,
      enableLocationRecord: data.enableLocationRecord.present
          ? data.enableLocationRecord.value
          : this.enableLocationRecord,
      enableMediaRecord: data.enableMediaRecord.present
          ? data.enableMediaRecord.value
          : this.enableMediaRecord,
      enableStartRecord: data.enableStartRecord.present
          ? data.enableStartRecord.value
          : this.enableStartRecord,
      enableNotification: data.enableNotification.present
          ? data.enableNotification.value
          : this.enableNotification,
      isArchived: data.isArchived.present
          ? data.isArchived.value
          : this.isArchived,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
      sortWeight: data.sortWeight.present
          ? data.sortWeight.value
          : this.sortWeight,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProjectData(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('icon: $icon, ')
          ..write('description: $description, ')
          ..write('colorTheme: $colorTheme, ')
          ..write('enableNumericRecord: $enableNumericRecord, ')
          ..write('enableOptionRecord: $enableOptionRecord, ')
          ..write('enableStepRecord: $enableStepRecord, ')
          ..write('enableLocationRecord: $enableLocationRecord, ')
          ..write('enableMediaRecord: $enableMediaRecord, ')
          ..write('enableStartRecord: $enableStartRecord, ')
          ..write('enableNotification: $enableNotification, ')
          ..write('isArchived: $isArchived, ')
          ..write('isHidden: $isHidden, ')
          ..write('sortWeight: $sortWeight, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    categoryId,
    name,
    icon,
    description,
    colorTheme,
    enableNumericRecord,
    enableOptionRecord,
    enableStepRecord,
    enableLocationRecord,
    enableMediaRecord,
    enableStartRecord,
    enableNotification,
    isArchived,
    isHidden,
    sortWeight,
    updatedAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProjectData &&
          other.id == this.id &&
          other.categoryId == this.categoryId &&
          other.name == this.name &&
          other.icon == this.icon &&
          other.description == this.description &&
          other.colorTheme == this.colorTheme &&
          other.enableNumericRecord == this.enableNumericRecord &&
          other.enableOptionRecord == this.enableOptionRecord &&
          other.enableStepRecord == this.enableStepRecord &&
          other.enableLocationRecord == this.enableLocationRecord &&
          other.enableMediaRecord == this.enableMediaRecord &&
          other.enableStartRecord == this.enableStartRecord &&
          other.enableNotification == this.enableNotification &&
          other.isArchived == this.isArchived &&
          other.isHidden == this.isHidden &&
          other.sortWeight == this.sortWeight &&
          other.updatedAt == this.updatedAt &&
          other.createdAt == this.createdAt);
}

class ProjectCompanion extends UpdateCompanion<ProjectData> {
  final Value<int> id;
  final Value<int> categoryId;
  final Value<String> name;
  final Value<String?> icon;
  final Value<String?> description;
  final Value<String?> colorTheme;
  final Value<bool> enableNumericRecord;
  final Value<bool> enableOptionRecord;
  final Value<bool> enableStepRecord;
  final Value<bool> enableLocationRecord;
  final Value<bool> enableMediaRecord;
  final Value<bool> enableStartRecord;
  final Value<bool> enableNotification;
  final Value<bool> isArchived;
  final Value<bool> isHidden;
  final Value<int> sortWeight;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  const ProjectCompanion({
    this.id = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.name = const Value.absent(),
    this.icon = const Value.absent(),
    this.description = const Value.absent(),
    this.colorTheme = const Value.absent(),
    this.enableNumericRecord = const Value.absent(),
    this.enableOptionRecord = const Value.absent(),
    this.enableStepRecord = const Value.absent(),
    this.enableLocationRecord = const Value.absent(),
    this.enableMediaRecord = const Value.absent(),
    this.enableStartRecord = const Value.absent(),
    this.enableNotification = const Value.absent(),
    this.isArchived = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.sortWeight = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  ProjectCompanion.insert({
    this.id = const Value.absent(),
    required int categoryId,
    required String name,
    this.icon = const Value.absent(),
    this.description = const Value.absent(),
    this.colorTheme = const Value.absent(),
    required bool enableNumericRecord,
    required bool enableOptionRecord,
    required bool enableStepRecord,
    required bool enableLocationRecord,
    required bool enableMediaRecord,
    required bool enableStartRecord,
    required bool enableNotification,
    required bool isArchived,
    required bool isHidden,
    required int sortWeight,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) : categoryId = Value(categoryId),
       name = Value(name),
       enableNumericRecord = Value(enableNumericRecord),
       enableOptionRecord = Value(enableOptionRecord),
       enableStepRecord = Value(enableStepRecord),
       enableLocationRecord = Value(enableLocationRecord),
       enableMediaRecord = Value(enableMediaRecord),
       enableStartRecord = Value(enableStartRecord),
       enableNotification = Value(enableNotification),
       isArchived = Value(isArchived),
       isHidden = Value(isHidden),
       sortWeight = Value(sortWeight),
       updatedAt = Value(updatedAt),
       createdAt = Value(createdAt);
  static Insertable<ProjectData> custom({
    Expression<int>? id,
    Expression<int>? categoryId,
    Expression<String>? name,
    Expression<String>? icon,
    Expression<String>? description,
    Expression<String>? colorTheme,
    Expression<bool>? enableNumericRecord,
    Expression<bool>? enableOptionRecord,
    Expression<bool>? enableStepRecord,
    Expression<bool>? enableLocationRecord,
    Expression<bool>? enableMediaRecord,
    Expression<bool>? enableStartRecord,
    Expression<bool>? enableNotification,
    Expression<bool>? isArchived,
    Expression<bool>? isHidden,
    Expression<int>? sortWeight,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (categoryId != null) 'category_id': categoryId,
      if (name != null) 'name': name,
      if (icon != null) 'icon': icon,
      if (description != null) 'description': description,
      if (colorTheme != null) 'color_theme': colorTheme,
      if (enableNumericRecord != null)
        'enable_numeric_record': enableNumericRecord,
      if (enableOptionRecord != null)
        'enable_option_record': enableOptionRecord,
      if (enableStepRecord != null) 'enable_step_record': enableStepRecord,
      if (enableLocationRecord != null)
        'enable_location_record': enableLocationRecord,
      if (enableMediaRecord != null) 'enable_media_record': enableMediaRecord,
      if (enableStartRecord != null) 'enable_start_record': enableStartRecord,
      if (enableNotification != null) 'enable_notification': enableNotification,
      if (isArchived != null) 'is_archived': isArchived,
      if (isHidden != null) 'is_hidden': isHidden,
      if (sortWeight != null) 'sort_weight': sortWeight,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  ProjectCompanion copyWith({
    Value<int>? id,
    Value<int>? categoryId,
    Value<String>? name,
    Value<String?>? icon,
    Value<String?>? description,
    Value<String?>? colorTheme,
    Value<bool>? enableNumericRecord,
    Value<bool>? enableOptionRecord,
    Value<bool>? enableStepRecord,
    Value<bool>? enableLocationRecord,
    Value<bool>? enableMediaRecord,
    Value<bool>? enableStartRecord,
    Value<bool>? enableNotification,
    Value<bool>? isArchived,
    Value<bool>? isHidden,
    Value<int>? sortWeight,
    Value<DateTime>? updatedAt,
    Value<DateTime>? createdAt,
  }) {
    return ProjectCompanion(
      id: id ?? this.id,
      categoryId: categoryId ?? this.categoryId,
      name: name ?? this.name,
      icon: icon ?? this.icon,
      description: description ?? this.description,
      colorTheme: colorTheme ?? this.colorTheme,
      enableNumericRecord: enableNumericRecord ?? this.enableNumericRecord,
      enableOptionRecord: enableOptionRecord ?? this.enableOptionRecord,
      enableStepRecord: enableStepRecord ?? this.enableStepRecord,
      enableLocationRecord: enableLocationRecord ?? this.enableLocationRecord,
      enableMediaRecord: enableMediaRecord ?? this.enableMediaRecord,
      enableStartRecord: enableStartRecord ?? this.enableStartRecord,
      enableNotification: enableNotification ?? this.enableNotification,
      isArchived: isArchived ?? this.isArchived,
      isHidden: isHidden ?? this.isHidden,
      sortWeight: sortWeight ?? this.sortWeight,
      updatedAt: updatedAt ?? this.updatedAt,
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
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (colorTheme.present) {
      map['color_theme'] = Variable<String>(colorTheme.value);
    }
    if (enableNumericRecord.present) {
      map['enable_numeric_record'] = Variable<bool>(enableNumericRecord.value);
    }
    if (enableOptionRecord.present) {
      map['enable_option_record'] = Variable<bool>(enableOptionRecord.value);
    }
    if (enableStepRecord.present) {
      map['enable_step_record'] = Variable<bool>(enableStepRecord.value);
    }
    if (enableLocationRecord.present) {
      map['enable_location_record'] = Variable<bool>(
        enableLocationRecord.value,
      );
    }
    if (enableMediaRecord.present) {
      map['enable_media_record'] = Variable<bool>(enableMediaRecord.value);
    }
    if (enableStartRecord.present) {
      map['enable_start_record'] = Variable<bool>(enableStartRecord.value);
    }
    if (enableNotification.present) {
      map['enable_notification'] = Variable<bool>(enableNotification.value);
    }
    if (isArchived.present) {
      map['is_archived'] = Variable<bool>(isArchived.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (sortWeight.present) {
      map['sort_weight'] = Variable<int>(sortWeight.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProjectCompanion(')
          ..write('id: $id, ')
          ..write('categoryId: $categoryId, ')
          ..write('name: $name, ')
          ..write('icon: $icon, ')
          ..write('description: $description, ')
          ..write('colorTheme: $colorTheme, ')
          ..write('enableNumericRecord: $enableNumericRecord, ')
          ..write('enableOptionRecord: $enableOptionRecord, ')
          ..write('enableStepRecord: $enableStepRecord, ')
          ..write('enableLocationRecord: $enableLocationRecord, ')
          ..write('enableMediaRecord: $enableMediaRecord, ')
          ..write('enableStartRecord: $enableStartRecord, ')
          ..write('enableNotification: $enableNotification, ')
          ..write('isArchived: $isArchived, ')
          ..write('isHidden: $isHidden, ')
          ..write('sortWeight: $sortWeight, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
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
  static const VerificationMeta _stepIndexMeta = const VerificationMeta(
    'stepIndex',
  );
  @override
  late final GeneratedColumn<int> stepIndex = GeneratedColumn<int>(
    'step_index',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _isArchivedMeta = const VerificationMeta(
    'isArchived',
  );
  @override
  late final GeneratedColumn<bool> isArchived = GeneratedColumn<bool>(
    'is_archived',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_archived" IN (0, 1))',
    ),
  );
  static const VerificationMeta _isHiddenMeta = const VerificationMeta(
    'isHidden',
  );
  @override
  late final GeneratedColumn<bool> isHidden = GeneratedColumn<bool>(
    'is_hidden',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_hidden" IN (0, 1))',
    ),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
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
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    title,
    content,
    stepIndex,
    isArchived,
    isHidden,
    updatedAt,
    createdAt,
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
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    }
    if (data.containsKey('step_index')) {
      context.handle(
        _stepIndexMeta,
        stepIndex.isAcceptableOrUnknown(data['step_index']!, _stepIndexMeta),
      );
    }
    if (data.containsKey('is_archived')) {
      context.handle(
        _isArchivedMeta,
        isArchived.isAcceptableOrUnknown(data['is_archived']!, _isArchivedMeta),
      );
    } else if (isInserting) {
      context.missing(_isArchivedMeta);
    }
    if (data.containsKey('is_hidden')) {
      context.handle(
        _isHiddenMeta,
        isHidden.isAcceptableOrUnknown(data['is_hidden']!, _isHiddenMeta),
      );
    } else if (isInserting) {
      context.missing(_isHiddenMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
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
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      ),
      stepIndex: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_index'],
      ),
      isArchived: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_archived'],
      )!,
      isHidden: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_hidden'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $RecordsTable createAlias(String alias) {
    return $RecordsTable(attachedDatabase, alias);
  }
}

class Record extends DataClass implements Insertable<Record> {
  final int id;
  final int projectId;
  final String title;
  final String? content;
  final int? stepIndex;
  final bool isArchived;
  final bool isHidden;
  final DateTime updatedAt;
  final DateTime createdAt;
  const Record({
    required this.id,
    required this.projectId,
    required this.title,
    this.content,
    this.stepIndex,
    required this.isArchived,
    required this.isHidden,
    required this.updatedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || stepIndex != null) {
      map['step_index'] = Variable<int>(stepIndex);
    }
    map['is_archived'] = Variable<bool>(isArchived);
    map['is_hidden'] = Variable<bool>(isHidden);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  RecordsCompanion toCompanion(bool nullToAbsent) {
    return RecordsCompanion(
      id: Value(id),
      projectId: Value(projectId),
      title: Value(title),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      stepIndex: stepIndex == null && nullToAbsent
          ? const Value.absent()
          : Value(stepIndex),
      isArchived: Value(isArchived),
      isHidden: Value(isHidden),
      updatedAt: Value(updatedAt),
      createdAt: Value(createdAt),
    );
  }

  factory Record.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Record(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String?>(json['content']),
      stepIndex: serializer.fromJson<int?>(json['stepIndex']),
      isArchived: serializer.fromJson<bool>(json['isArchived']),
      isHidden: serializer.fromJson<bool>(json['isHidden']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String?>(content),
      'stepIndex': serializer.toJson<int?>(stepIndex),
      'isArchived': serializer.toJson<bool>(isArchived),
      'isHidden': serializer.toJson<bool>(isHidden),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Record copyWith({
    int? id,
    int? projectId,
    String? title,
    Value<String?> content = const Value.absent(),
    Value<int?> stepIndex = const Value.absent(),
    bool? isArchived,
    bool? isHidden,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) => Record(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    title: title ?? this.title,
    content: content.present ? content.value : this.content,
    stepIndex: stepIndex.present ? stepIndex.value : this.stepIndex,
    isArchived: isArchived ?? this.isArchived,
    isHidden: isHidden ?? this.isHidden,
    updatedAt: updatedAt ?? this.updatedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  Record copyWithCompanion(RecordsCompanion data) {
    return Record(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      stepIndex: data.stepIndex.present ? data.stepIndex.value : this.stepIndex,
      isArchived: data.isArchived.present
          ? data.isArchived.value
          : this.isArchived,
      isHidden: data.isHidden.present ? data.isHidden.value : this.isHidden,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Record(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('stepIndex: $stepIndex, ')
          ..write('isArchived: $isArchived, ')
          ..write('isHidden: $isHidden, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    projectId,
    title,
    content,
    stepIndex,
    isArchived,
    isHidden,
    updatedAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Record &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.title == this.title &&
          other.content == this.content &&
          other.stepIndex == this.stepIndex &&
          other.isArchived == this.isArchived &&
          other.isHidden == this.isHidden &&
          other.updatedAt == this.updatedAt &&
          other.createdAt == this.createdAt);
}

class RecordsCompanion extends UpdateCompanion<Record> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<String> title;
  final Value<String?> content;
  final Value<int?> stepIndex;
  final Value<bool> isArchived;
  final Value<bool> isHidden;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  const RecordsCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.stepIndex = const Value.absent(),
    this.isArchived = const Value.absent(),
    this.isHidden = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  RecordsCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required String title,
    this.content = const Value.absent(),
    this.stepIndex = const Value.absent(),
    required bool isArchived,
    required bool isHidden,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) : projectId = Value(projectId),
       title = Value(title),
       isArchived = Value(isArchived),
       isHidden = Value(isHidden),
       updatedAt = Value(updatedAt),
       createdAt = Value(createdAt);
  static Insertable<Record> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<String>? title,
    Expression<String>? content,
    Expression<int>? stepIndex,
    Expression<bool>? isArchived,
    Expression<bool>? isHidden,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (stepIndex != null) 'step_index': stepIndex,
      if (isArchived != null) 'is_archived': isArchived,
      if (isHidden != null) 'is_hidden': isHidden,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  RecordsCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<String>? title,
    Value<String?>? content,
    Value<int?>? stepIndex,
    Value<bool>? isArchived,
    Value<bool>? isHidden,
    Value<DateTime>? updatedAt,
    Value<DateTime>? createdAt,
  }) {
    return RecordsCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      content: content ?? this.content,
      stepIndex: stepIndex ?? this.stepIndex,
      isArchived: isArchived ?? this.isArchived,
      isHidden: isHidden ?? this.isHidden,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (stepIndex.present) {
      map['step_index'] = Variable<int>(stepIndex.value);
    }
    if (isArchived.present) {
      map['is_archived'] = Variable<bool>(isArchived.value);
    }
    if (isHidden.present) {
      map['is_hidden'] = Variable<bool>(isHidden.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordsCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('stepIndex: $stepIndex, ')
          ..write('isArchived: $isArchived, ')
          ..write('isHidden: $isHidden, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $StepDefinitionTable extends StepDefinition
    with TableInfo<$StepDefinitionTable, StepDefinitionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StepDefinitionTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _stepNumberMeta = const VerificationMeta(
    'stepNumber',
  );
  @override
  late final GeneratedColumn<int> stepNumber = GeneratedColumn<int>(
    'step_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
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
  static const VerificationMeta _enableNumericRecordMeta =
      const VerificationMeta('enableNumericRecord');
  @override
  late final GeneratedColumn<bool> enableNumericRecord = GeneratedColumn<bool>(
    'enable_numeric_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_numeric_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableOptionRecordMeta =
      const VerificationMeta('enableOptionRecord');
  @override
  late final GeneratedColumn<bool> enableOptionRecord = GeneratedColumn<bool>(
    'enable_option_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_option_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _enableMediaRecordMeta = const VerificationMeta(
    'enableMediaRecord',
  );
  @override
  late final GeneratedColumn<bool> enableMediaRecord = GeneratedColumn<bool>(
    'enable_media_record',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("enable_media_record" IN (0, 1))',
    ),
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
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
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    stepNumber,
    title,
    description,
    enableNumericRecord,
    enableOptionRecord,
    enableMediaRecord,
    updatedAt,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'step_definition';
  @override
  VerificationContext validateIntegrity(
    Insertable<StepDefinitionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('step_number')) {
      context.handle(
        _stepNumberMeta,
        stepNumber.isAcceptableOrUnknown(data['step_number']!, _stepNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_stepNumberMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
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
    if (data.containsKey('enable_numeric_record')) {
      context.handle(
        _enableNumericRecordMeta,
        enableNumericRecord.isAcceptableOrUnknown(
          data['enable_numeric_record']!,
          _enableNumericRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableNumericRecordMeta);
    }
    if (data.containsKey('enable_option_record')) {
      context.handle(
        _enableOptionRecordMeta,
        enableOptionRecord.isAcceptableOrUnknown(
          data['enable_option_record']!,
          _enableOptionRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableOptionRecordMeta);
    }
    if (data.containsKey('enable_media_record')) {
      context.handle(
        _enableMediaRecordMeta,
        enableMediaRecord.isAcceptableOrUnknown(
          data['enable_media_record']!,
          _enableMediaRecordMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_enableMediaRecordMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  StepDefinitionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StepDefinitionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      stepNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_number'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      ),
      enableNumericRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_numeric_record'],
      )!,
      enableOptionRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_option_record'],
      )!,
      enableMediaRecord: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}enable_media_record'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $StepDefinitionTable createAlias(String alias) {
    return $StepDefinitionTable(attachedDatabase, alias);
  }
}

class StepDefinitionData extends DataClass
    implements Insertable<StepDefinitionData> {
  final int id;
  final int projectId;
  final int stepNumber;
  final String title;
  final String? description;
  final bool enableNumericRecord;
  final bool enableOptionRecord;
  final bool enableMediaRecord;
  final DateTime updatedAt;
  final DateTime createdAt;
  const StepDefinitionData({
    required this.id,
    required this.projectId,
    required this.stepNumber,
    required this.title,
    this.description,
    required this.enableNumericRecord,
    required this.enableOptionRecord,
    required this.enableMediaRecord,
    required this.updatedAt,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['step_number'] = Variable<int>(stepNumber);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    map['enable_numeric_record'] = Variable<bool>(enableNumericRecord);
    map['enable_option_record'] = Variable<bool>(enableOptionRecord);
    map['enable_media_record'] = Variable<bool>(enableMediaRecord);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  StepDefinitionCompanion toCompanion(bool nullToAbsent) {
    return StepDefinitionCompanion(
      id: Value(id),
      projectId: Value(projectId),
      stepNumber: Value(stepNumber),
      title: Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      enableNumericRecord: Value(enableNumericRecord),
      enableOptionRecord: Value(enableOptionRecord),
      enableMediaRecord: Value(enableMediaRecord),
      updatedAt: Value(updatedAt),
      createdAt: Value(createdAt),
    );
  }

  factory StepDefinitionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return StepDefinitionData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      stepNumber: serializer.fromJson<int>(json['stepNumber']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String?>(json['description']),
      enableNumericRecord: serializer.fromJson<bool>(
        json['enableNumericRecord'],
      ),
      enableOptionRecord: serializer.fromJson<bool>(json['enableOptionRecord']),
      enableMediaRecord: serializer.fromJson<bool>(json['enableMediaRecord']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'stepNumber': serializer.toJson<int>(stepNumber),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String?>(description),
      'enableNumericRecord': serializer.toJson<bool>(enableNumericRecord),
      'enableOptionRecord': serializer.toJson<bool>(enableOptionRecord),
      'enableMediaRecord': serializer.toJson<bool>(enableMediaRecord),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  StepDefinitionData copyWith({
    int? id,
    int? projectId,
    int? stepNumber,
    String? title,
    Value<String?> description = const Value.absent(),
    bool? enableNumericRecord,
    bool? enableOptionRecord,
    bool? enableMediaRecord,
    DateTime? updatedAt,
    DateTime? createdAt,
  }) => StepDefinitionData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    stepNumber: stepNumber ?? this.stepNumber,
    title: title ?? this.title,
    description: description.present ? description.value : this.description,
    enableNumericRecord: enableNumericRecord ?? this.enableNumericRecord,
    enableOptionRecord: enableOptionRecord ?? this.enableOptionRecord,
    enableMediaRecord: enableMediaRecord ?? this.enableMediaRecord,
    updatedAt: updatedAt ?? this.updatedAt,
    createdAt: createdAt ?? this.createdAt,
  );
  StepDefinitionData copyWithCompanion(StepDefinitionCompanion data) {
    return StepDefinitionData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      stepNumber: data.stepNumber.present
          ? data.stepNumber.value
          : this.stepNumber,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
      enableNumericRecord: data.enableNumericRecord.present
          ? data.enableNumericRecord.value
          : this.enableNumericRecord,
      enableOptionRecord: data.enableOptionRecord.present
          ? data.enableOptionRecord.value
          : this.enableOptionRecord,
      enableMediaRecord: data.enableMediaRecord.present
          ? data.enableMediaRecord.value
          : this.enableMediaRecord,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('StepDefinitionData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('stepNumber: $stepNumber, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('enableNumericRecord: $enableNumericRecord, ')
          ..write('enableOptionRecord: $enableOptionRecord, ')
          ..write('enableMediaRecord: $enableMediaRecord, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    projectId,
    stepNumber,
    title,
    description,
    enableNumericRecord,
    enableOptionRecord,
    enableMediaRecord,
    updatedAt,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is StepDefinitionData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.stepNumber == this.stepNumber &&
          other.title == this.title &&
          other.description == this.description &&
          other.enableNumericRecord == this.enableNumericRecord &&
          other.enableOptionRecord == this.enableOptionRecord &&
          other.enableMediaRecord == this.enableMediaRecord &&
          other.updatedAt == this.updatedAt &&
          other.createdAt == this.createdAt);
}

class StepDefinitionCompanion extends UpdateCompanion<StepDefinitionData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> stepNumber;
  final Value<String> title;
  final Value<String?> description;
  final Value<bool> enableNumericRecord;
  final Value<bool> enableOptionRecord;
  final Value<bool> enableMediaRecord;
  final Value<DateTime> updatedAt;
  final Value<DateTime> createdAt;
  const StepDefinitionCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.stepNumber = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.enableNumericRecord = const Value.absent(),
    this.enableOptionRecord = const Value.absent(),
    this.enableMediaRecord = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  StepDefinitionCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int stepNumber,
    required String title,
    this.description = const Value.absent(),
    required bool enableNumericRecord,
    required bool enableOptionRecord,
    required bool enableMediaRecord,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) : projectId = Value(projectId),
       stepNumber = Value(stepNumber),
       title = Value(title),
       enableNumericRecord = Value(enableNumericRecord),
       enableOptionRecord = Value(enableOptionRecord),
       enableMediaRecord = Value(enableMediaRecord),
       updatedAt = Value(updatedAt),
       createdAt = Value(createdAt);
  static Insertable<StepDefinitionData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? stepNumber,
    Expression<String>? title,
    Expression<String>? description,
    Expression<bool>? enableNumericRecord,
    Expression<bool>? enableOptionRecord,
    Expression<bool>? enableMediaRecord,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (stepNumber != null) 'step_number': stepNumber,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (enableNumericRecord != null)
        'enable_numeric_record': enableNumericRecord,
      if (enableOptionRecord != null)
        'enable_option_record': enableOptionRecord,
      if (enableMediaRecord != null) 'enable_media_record': enableMediaRecord,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  StepDefinitionCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? stepNumber,
    Value<String>? title,
    Value<String?>? description,
    Value<bool>? enableNumericRecord,
    Value<bool>? enableOptionRecord,
    Value<bool>? enableMediaRecord,
    Value<DateTime>? updatedAt,
    Value<DateTime>? createdAt,
  }) {
    return StepDefinitionCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      stepNumber: stepNumber ?? this.stepNumber,
      title: title ?? this.title,
      description: description ?? this.description,
      enableNumericRecord: enableNumericRecord ?? this.enableNumericRecord,
      enableOptionRecord: enableOptionRecord ?? this.enableOptionRecord,
      enableMediaRecord: enableMediaRecord ?? this.enableMediaRecord,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (stepNumber.present) {
      map['step_number'] = Variable<int>(stepNumber.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (enableNumericRecord.present) {
      map['enable_numeric_record'] = Variable<bool>(enableNumericRecord.value);
    }
    if (enableOptionRecord.present) {
      map['enable_option_record'] = Variable<bool>(enableOptionRecord.value);
    }
    if (enableMediaRecord.present) {
      map['enable_media_record'] = Variable<bool>(enableMediaRecord.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StepDefinitionCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('stepNumber: $stepNumber, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('enableNumericRecord: $enableNumericRecord, ')
          ..write('enableOptionRecord: $enableOptionRecord, ')
          ..write('enableMediaRecord: $enableMediaRecord, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $RecordStepTable extends RecordStep
    with TableInfo<$RecordStepTable, RecordStepData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordStepTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
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
  static const VerificationMeta _stepDefinitionIdMeta = const VerificationMeta(
    'stepDefinitionId',
  );
  @override
  late final GeneratedColumn<int> stepDefinitionId = GeneratedColumn<int>(
    'step_definition_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES step_definition (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _stepNumberMeta = const VerificationMeta(
    'stepNumber',
  );
  @override
  late final GeneratedColumn<int> stepNumber = GeneratedColumn<int>(
    'step_number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    recordId,
    stepDefinitionId,
    stepNumber,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_step';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordStepData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('step_definition_id')) {
      context.handle(
        _stepDefinitionIdMeta,
        stepDefinitionId.isAcceptableOrUnknown(
          data['step_definition_id']!,
          _stepDefinitionIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_stepDefinitionIdMeta);
    }
    if (data.containsKey('step_number')) {
      context.handle(
        _stepNumberMeta,
        stepNumber.isAcceptableOrUnknown(data['step_number']!, _stepNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_stepNumberMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordStepData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordStepData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      stepDefinitionId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_definition_id'],
      )!,
      stepNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}step_number'],
      )!,
    );
  }

  @override
  $RecordStepTable createAlias(String alias) {
    return $RecordStepTable(attachedDatabase, alias);
  }
}

class RecordStepData extends DataClass implements Insertable<RecordStepData> {
  final int id;
  final int projectId;
  final int recordId;
  final int stepDefinitionId;
  final int stepNumber;
  const RecordStepData({
    required this.id,
    required this.projectId,
    required this.recordId,
    required this.stepDefinitionId,
    required this.stepNumber,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['record_id'] = Variable<int>(recordId);
    map['step_definition_id'] = Variable<int>(stepDefinitionId);
    map['step_number'] = Variable<int>(stepNumber);
    return map;
  }

  RecordStepCompanion toCompanion(bool nullToAbsent) {
    return RecordStepCompanion(
      id: Value(id),
      projectId: Value(projectId),
      recordId: Value(recordId),
      stepDefinitionId: Value(stepDefinitionId),
      stepNumber: Value(stepNumber),
    );
  }

  factory RecordStepData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordStepData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      stepDefinitionId: serializer.fromJson<int>(json['stepDefinitionId']),
      stepNumber: serializer.fromJson<int>(json['stepNumber']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'recordId': serializer.toJson<int>(recordId),
      'stepDefinitionId': serializer.toJson<int>(stepDefinitionId),
      'stepNumber': serializer.toJson<int>(stepNumber),
    };
  }

  RecordStepData copyWith({
    int? id,
    int? projectId,
    int? recordId,
    int? stepDefinitionId,
    int? stepNumber,
  }) => RecordStepData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    recordId: recordId ?? this.recordId,
    stepDefinitionId: stepDefinitionId ?? this.stepDefinitionId,
    stepNumber: stepNumber ?? this.stepNumber,
  );
  RecordStepData copyWithCompanion(RecordStepCompanion data) {
    return RecordStepData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      stepDefinitionId: data.stepDefinitionId.present
          ? data.stepDefinitionId.value
          : this.stepDefinitionId,
      stepNumber: data.stepNumber.present
          ? data.stepNumber.value
          : this.stepNumber,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordStepData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('stepDefinitionId: $stepDefinitionId, ')
          ..write('stepNumber: $stepNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, projectId, recordId, stepDefinitionId, stepNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordStepData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.recordId == this.recordId &&
          other.stepDefinitionId == this.stepDefinitionId &&
          other.stepNumber == this.stepNumber);
}

class RecordStepCompanion extends UpdateCompanion<RecordStepData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> recordId;
  final Value<int> stepDefinitionId;
  final Value<int> stepNumber;
  const RecordStepCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.stepDefinitionId = const Value.absent(),
    this.stepNumber = const Value.absent(),
  });
  RecordStepCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int recordId,
    required int stepDefinitionId,
    required int stepNumber,
  }) : projectId = Value(projectId),
       recordId = Value(recordId),
       stepDefinitionId = Value(stepDefinitionId),
       stepNumber = Value(stepNumber);
  static Insertable<RecordStepData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? recordId,
    Expression<int>? stepDefinitionId,
    Expression<int>? stepNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (recordId != null) 'record_id': recordId,
      if (stepDefinitionId != null) 'step_definition_id': stepDefinitionId,
      if (stepNumber != null) 'step_number': stepNumber,
    });
  }

  RecordStepCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? recordId,
    Value<int>? stepDefinitionId,
    Value<int>? stepNumber,
  }) {
    return RecordStepCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      recordId: recordId ?? this.recordId,
      stepDefinitionId: stepDefinitionId ?? this.stepDefinitionId,
      stepNumber: stepNumber ?? this.stepNumber,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (stepDefinitionId.present) {
      map['step_definition_id'] = Variable<int>(stepDefinitionId.value);
    }
    if (stepNumber.present) {
      map['step_number'] = Variable<int>(stepNumber.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordStepCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('stepDefinitionId: $stepDefinitionId, ')
          ..write('stepNumber: $stepNumber')
          ..write(')'))
        .toString();
  }
}

class $TagTable extends Tag with TableInfo<$TagTable, TagData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TagTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
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
  static const VerificationMeta _colorThemeMeta = const VerificationMeta(
    'colorTheme',
  );
  @override
  late final GeneratedColumn<String> colorTheme = GeneratedColumn<String>(
    'color_theme',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [id, title, icon, colorTheme];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tag';
  @override
  VerificationContext validateIntegrity(
    Insertable<TagData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('icon')) {
      context.handle(
        _iconMeta,
        icon.isAcceptableOrUnknown(data['icon']!, _iconMeta),
      );
    }
    if (data.containsKey('color_theme')) {
      context.handle(
        _colorThemeMeta,
        colorTheme.isAcceptableOrUnknown(data['color_theme']!, _colorThemeMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TagData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TagData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      icon: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}icon'],
      ),
      colorTheme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color_theme'],
      ),
    );
  }

  @override
  $TagTable createAlias(String alias) {
    return $TagTable(attachedDatabase, alias);
  }
}

class TagData extends DataClass implements Insertable<TagData> {
  final int id;
  final String title;
  final String? icon;
  final String? colorTheme;
  const TagData({
    required this.id,
    required this.title,
    this.icon,
    this.colorTheme,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || icon != null) {
      map['icon'] = Variable<String>(icon);
    }
    if (!nullToAbsent || colorTheme != null) {
      map['color_theme'] = Variable<String>(colorTheme);
    }
    return map;
  }

  TagCompanion toCompanion(bool nullToAbsent) {
    return TagCompanion(
      id: Value(id),
      title: Value(title),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      colorTheme: colorTheme == null && nullToAbsent
          ? const Value.absent()
          : Value(colorTheme),
    );
  }

  factory TagData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      icon: serializer.fromJson<String?>(json['icon']),
      colorTheme: serializer.fromJson<String?>(json['colorTheme']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'icon': serializer.toJson<String?>(icon),
      'colorTheme': serializer.toJson<String?>(colorTheme),
    };
  }

  TagData copyWith({
    int? id,
    String? title,
    Value<String?> icon = const Value.absent(),
    Value<String?> colorTheme = const Value.absent(),
  }) => TagData(
    id: id ?? this.id,
    title: title ?? this.title,
    icon: icon.present ? icon.value : this.icon,
    colorTheme: colorTheme.present ? colorTheme.value : this.colorTheme,
  );
  TagData copyWithCompanion(TagCompanion data) {
    return TagData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      icon: data.icon.present ? data.icon.value : this.icon,
      colorTheme: data.colorTheme.present
          ? data.colorTheme.value
          : this.colorTheme,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TagData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('icon: $icon, ')
          ..write('colorTheme: $colorTheme')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, icon, colorTheme);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagData &&
          other.id == this.id &&
          other.title == this.title &&
          other.icon == this.icon &&
          other.colorTheme == this.colorTheme);
}

class TagCompanion extends UpdateCompanion<TagData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String?> icon;
  final Value<String?> colorTheme;
  const TagCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.icon = const Value.absent(),
    this.colorTheme = const Value.absent(),
  });
  TagCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.icon = const Value.absent(),
    this.colorTheme = const Value.absent(),
  }) : title = Value(title);
  static Insertable<TagData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? icon,
    Expression<String>? colorTheme,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (icon != null) 'icon': icon,
      if (colorTheme != null) 'color_theme': colorTheme,
    });
  }

  TagCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<String?>? icon,
    Value<String?>? colorTheme,
  }) {
    return TagCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      colorTheme: colorTheme ?? this.colorTheme,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    if (colorTheme.present) {
      map['color_theme'] = Variable<String>(colorTheme.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('icon: $icon, ')
          ..write('colorTheme: $colorTheme')
          ..write(')'))
        .toString();
  }
}

class $RecordTagTable extends RecordTag
    with TableInfo<$RecordTagTable, RecordTagData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordTagTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
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
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
    'tag_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES tag (id) ON DELETE CASCADE',
    ),
  );
  @override
  List<GeneratedColumn> get $columns => [id, projectId, recordId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_tag';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordTagData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta,
        tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta),
      );
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordTagData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordTagData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      tagId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}tag_id'],
      )!,
    );
  }

  @override
  $RecordTagTable createAlias(String alias) {
    return $RecordTagTable(attachedDatabase, alias);
  }
}

class RecordTagData extends DataClass implements Insertable<RecordTagData> {
  final int id;
  final int projectId;
  final int recordId;
  final int tagId;
  const RecordTagData({
    required this.id,
    required this.projectId,
    required this.recordId,
    required this.tagId,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['record_id'] = Variable<int>(recordId);
    map['tag_id'] = Variable<int>(tagId);
    return map;
  }

  RecordTagCompanion toCompanion(bool nullToAbsent) {
    return RecordTagCompanion(
      id: Value(id),
      projectId: Value(projectId),
      recordId: Value(recordId),
      tagId: Value(tagId),
    );
  }

  factory RecordTagData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordTagData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'recordId': serializer.toJson<int>(recordId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  RecordTagData copyWith({
    int? id,
    int? projectId,
    int? recordId,
    int? tagId,
  }) => RecordTagData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    recordId: recordId ?? this.recordId,
    tagId: tagId ?? this.tagId,
  );
  RecordTagData copyWithCompanion(RecordTagCompanion data) {
    return RecordTagData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordTagData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, projectId, recordId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordTagData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.recordId == this.recordId &&
          other.tagId == this.tagId);
}

class RecordTagCompanion extends UpdateCompanion<RecordTagData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> recordId;
  final Value<int> tagId;
  const RecordTagCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.tagId = const Value.absent(),
  });
  RecordTagCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int recordId,
    required int tagId,
  }) : projectId = Value(projectId),
       recordId = Value(recordId),
       tagId = Value(tagId);
  static Insertable<RecordTagData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? recordId,
    Expression<int>? tagId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (recordId != null) 'record_id': recordId,
      if (tagId != null) 'tag_id': tagId,
    });
  }

  RecordTagCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? recordId,
    Value<int>? tagId,
  }) {
    return RecordTagCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      recordId: recordId ?? this.recordId,
      tagId: tagId ?? this.tagId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordTagCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }
}

class $NumericFieldTable extends NumericField
    with TableInfo<$NumericFieldTable, NumericFieldData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NumericFieldTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
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
  @override
  List<GeneratedColumn> get $columns => [id, projectId, title, unit];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'numeric_field';
  @override
  VerificationContext validateIntegrity(
    Insertable<NumericFieldData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('unit')) {
      context.handle(
        _unitMeta,
        unit.isAcceptableOrUnknown(data['unit']!, _unitMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NumericFieldData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NumericFieldData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      unit: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}unit'],
      ),
    );
  }

  @override
  $NumericFieldTable createAlias(String alias) {
    return $NumericFieldTable(attachedDatabase, alias);
  }
}

class NumericFieldData extends DataClass
    implements Insertable<NumericFieldData> {
  final int id;
  final int projectId;
  final String title;
  final String? unit;
  const NumericFieldData({
    required this.id,
    required this.projectId,
    required this.title,
    this.unit,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['title'] = Variable<String>(title);
    if (!nullToAbsent || unit != null) {
      map['unit'] = Variable<String>(unit);
    }
    return map;
  }

  NumericFieldCompanion toCompanion(bool nullToAbsent) {
    return NumericFieldCompanion(
      id: Value(id),
      projectId: Value(projectId),
      title: Value(title),
      unit: unit == null && nullToAbsent ? const Value.absent() : Value(unit),
    );
  }

  factory NumericFieldData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NumericFieldData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      title: serializer.fromJson<String>(json['title']),
      unit: serializer.fromJson<String?>(json['unit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'title': serializer.toJson<String>(title),
      'unit': serializer.toJson<String?>(unit),
    };
  }

  NumericFieldData copyWith({
    int? id,
    int? projectId,
    String? title,
    Value<String?> unit = const Value.absent(),
  }) => NumericFieldData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    title: title ?? this.title,
    unit: unit.present ? unit.value : this.unit,
  );
  NumericFieldData copyWithCompanion(NumericFieldCompanion data) {
    return NumericFieldData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      title: data.title.present ? data.title.value : this.title,
      unit: data.unit.present ? data.unit.value : this.unit,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NumericFieldData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('title: $title, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, projectId, title, unit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NumericFieldData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.title == this.title &&
          other.unit == this.unit);
}

class NumericFieldCompanion extends UpdateCompanion<NumericFieldData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<String> title;
  final Value<String?> unit;
  const NumericFieldCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.title = const Value.absent(),
    this.unit = const Value.absent(),
  });
  NumericFieldCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required String title,
    this.unit = const Value.absent(),
  }) : projectId = Value(projectId),
       title = Value(title);
  static Insertable<NumericFieldData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<String>? title,
    Expression<String>? unit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (title != null) 'title': title,
      if (unit != null) 'unit': unit,
    });
  }

  NumericFieldCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<String>? title,
    Value<String?>? unit,
  }) {
    return NumericFieldCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      unit: unit ?? this.unit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (unit.present) {
      map['unit'] = Variable<String>(unit.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NumericFieldCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('title: $title, ')
          ..write('unit: $unit')
          ..write(')'))
        .toString();
  }
}

class $RecordNumericValueTable extends RecordNumericValue
    with TableInfo<$RecordNumericValueTable, RecordNumericValueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordNumericValueTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
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
  static const VerificationMeta _numericFieldIdMeta = const VerificationMeta(
    'numericFieldId',
  );
  @override
  late final GeneratedColumn<int> numericFieldId = GeneratedColumn<int>(
    'numeric_field_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES numeric_field (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<double> value = GeneratedColumn<double>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    recordId,
    numericFieldId,
    value,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_numeric_value';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordNumericValueData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('numeric_field_id')) {
      context.handle(
        _numericFieldIdMeta,
        numericFieldId.isAcceptableOrUnknown(
          data['numeric_field_id']!,
          _numericFieldIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_numericFieldIdMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordNumericValueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordNumericValueData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      numericFieldId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}numeric_field_id'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $RecordNumericValueTable createAlias(String alias) {
    return $RecordNumericValueTable(attachedDatabase, alias);
  }
}

class RecordNumericValueData extends DataClass
    implements Insertable<RecordNumericValueData> {
  final int id;
  final int projectId;
  final int recordId;
  final int numericFieldId;
  final double value;
  const RecordNumericValueData({
    required this.id,
    required this.projectId,
    required this.recordId,
    required this.numericFieldId,
    required this.value,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['record_id'] = Variable<int>(recordId);
    map['numeric_field_id'] = Variable<int>(numericFieldId);
    map['value'] = Variable<double>(value);
    return map;
  }

  RecordNumericValueCompanion toCompanion(bool nullToAbsent) {
    return RecordNumericValueCompanion(
      id: Value(id),
      projectId: Value(projectId),
      recordId: Value(recordId),
      numericFieldId: Value(numericFieldId),
      value: Value(value),
    );
  }

  factory RecordNumericValueData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordNumericValueData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      numericFieldId: serializer.fromJson<int>(json['numericFieldId']),
      value: serializer.fromJson<double>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'recordId': serializer.toJson<int>(recordId),
      'numericFieldId': serializer.toJson<int>(numericFieldId),
      'value': serializer.toJson<double>(value),
    };
  }

  RecordNumericValueData copyWith({
    int? id,
    int? projectId,
    int? recordId,
    int? numericFieldId,
    double? value,
  }) => RecordNumericValueData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    recordId: recordId ?? this.recordId,
    numericFieldId: numericFieldId ?? this.numericFieldId,
    value: value ?? this.value,
  );
  RecordNumericValueData copyWithCompanion(RecordNumericValueCompanion data) {
    return RecordNumericValueData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      numericFieldId: data.numericFieldId.present
          ? data.numericFieldId.value
          : this.numericFieldId,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordNumericValueData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('numericFieldId: $numericFieldId, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, projectId, recordId, numericFieldId, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordNumericValueData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.recordId == this.recordId &&
          other.numericFieldId == this.numericFieldId &&
          other.value == this.value);
}

class RecordNumericValueCompanion
    extends UpdateCompanion<RecordNumericValueData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> recordId;
  final Value<int> numericFieldId;
  final Value<double> value;
  const RecordNumericValueCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.numericFieldId = const Value.absent(),
    this.value = const Value.absent(),
  });
  RecordNumericValueCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int recordId,
    required int numericFieldId,
    required double value,
  }) : projectId = Value(projectId),
       recordId = Value(recordId),
       numericFieldId = Value(numericFieldId),
       value = Value(value);
  static Insertable<RecordNumericValueData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? recordId,
    Expression<int>? numericFieldId,
    Expression<double>? value,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (recordId != null) 'record_id': recordId,
      if (numericFieldId != null) 'numeric_field_id': numericFieldId,
      if (value != null) 'value': value,
    });
  }

  RecordNumericValueCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? recordId,
    Value<int>? numericFieldId,
    Value<double>? value,
  }) {
    return RecordNumericValueCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      recordId: recordId ?? this.recordId,
      numericFieldId: numericFieldId ?? this.numericFieldId,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (numericFieldId.present) {
      map['numeric_field_id'] = Variable<int>(numericFieldId.value);
    }
    if (value.present) {
      map['value'] = Variable<double>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordNumericValueCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('numericFieldId: $numericFieldId, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class $OptionFieldTable extends OptionField
    with TableInfo<$OptionFieldTable, OptionFieldData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OptionFieldTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _optionCountMeta = const VerificationMeta(
    'optionCount',
  );
  @override
  late final GeneratedColumn<int> optionCount = GeneratedColumn<int>(
    'option_count',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _maxSelectionsMeta = const VerificationMeta(
    'maxSelections',
  );
  @override
  late final GeneratedColumn<int> maxSelections = GeneratedColumn<int>(
    'max_selections',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _optionsListMeta = const VerificationMeta(
    'optionsList',
  );
  @override
  late final GeneratedColumn<String> optionsList = GeneratedColumn<String>(
    'options_list',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    title,
    optionCount,
    maxSelections,
    optionsList,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'option_field';
  @override
  VerificationContext validateIntegrity(
    Insertable<OptionFieldData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('option_count')) {
      context.handle(
        _optionCountMeta,
        optionCount.isAcceptableOrUnknown(
          data['option_count']!,
          _optionCountMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_optionCountMeta);
    }
    if (data.containsKey('max_selections')) {
      context.handle(
        _maxSelectionsMeta,
        maxSelections.isAcceptableOrUnknown(
          data['max_selections']!,
          _maxSelectionsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_maxSelectionsMeta);
    }
    if (data.containsKey('options_list')) {
      context.handle(
        _optionsListMeta,
        optionsList.isAcceptableOrUnknown(
          data['options_list']!,
          _optionsListMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_optionsListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OptionFieldData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OptionFieldData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      optionCount: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}option_count'],
      )!,
      maxSelections: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}max_selections'],
      )!,
      optionsList: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}options_list'],
      )!,
    );
  }

  @override
  $OptionFieldTable createAlias(String alias) {
    return $OptionFieldTable(attachedDatabase, alias);
  }
}

class OptionFieldData extends DataClass implements Insertable<OptionFieldData> {
  final int id;
  final int projectId;
  final String title;
  final int optionCount;
  final int maxSelections;
  final String optionsList;
  const OptionFieldData({
    required this.id,
    required this.projectId,
    required this.title,
    required this.optionCount,
    required this.maxSelections,
    required this.optionsList,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['title'] = Variable<String>(title);
    map['option_count'] = Variable<int>(optionCount);
    map['max_selections'] = Variable<int>(maxSelections);
    map['options_list'] = Variable<String>(optionsList);
    return map;
  }

  OptionFieldCompanion toCompanion(bool nullToAbsent) {
    return OptionFieldCompanion(
      id: Value(id),
      projectId: Value(projectId),
      title: Value(title),
      optionCount: Value(optionCount),
      maxSelections: Value(maxSelections),
      optionsList: Value(optionsList),
    );
  }

  factory OptionFieldData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OptionFieldData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      title: serializer.fromJson<String>(json['title']),
      optionCount: serializer.fromJson<int>(json['optionCount']),
      maxSelections: serializer.fromJson<int>(json['maxSelections']),
      optionsList: serializer.fromJson<String>(json['optionsList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'title': serializer.toJson<String>(title),
      'optionCount': serializer.toJson<int>(optionCount),
      'maxSelections': serializer.toJson<int>(maxSelections),
      'optionsList': serializer.toJson<String>(optionsList),
    };
  }

  OptionFieldData copyWith({
    int? id,
    int? projectId,
    String? title,
    int? optionCount,
    int? maxSelections,
    String? optionsList,
  }) => OptionFieldData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    title: title ?? this.title,
    optionCount: optionCount ?? this.optionCount,
    maxSelections: maxSelections ?? this.maxSelections,
    optionsList: optionsList ?? this.optionsList,
  );
  OptionFieldData copyWithCompanion(OptionFieldCompanion data) {
    return OptionFieldData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      title: data.title.present ? data.title.value : this.title,
      optionCount: data.optionCount.present
          ? data.optionCount.value
          : this.optionCount,
      maxSelections: data.maxSelections.present
          ? data.maxSelections.value
          : this.maxSelections,
      optionsList: data.optionsList.present
          ? data.optionsList.value
          : this.optionsList,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OptionFieldData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('title: $title, ')
          ..write('optionCount: $optionCount, ')
          ..write('maxSelections: $maxSelections, ')
          ..write('optionsList: $optionsList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    projectId,
    title,
    optionCount,
    maxSelections,
    optionsList,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OptionFieldData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.title == this.title &&
          other.optionCount == this.optionCount &&
          other.maxSelections == this.maxSelections &&
          other.optionsList == this.optionsList);
}

class OptionFieldCompanion extends UpdateCompanion<OptionFieldData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<String> title;
  final Value<int> optionCount;
  final Value<int> maxSelections;
  final Value<String> optionsList;
  const OptionFieldCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.title = const Value.absent(),
    this.optionCount = const Value.absent(),
    this.maxSelections = const Value.absent(),
    this.optionsList = const Value.absent(),
  });
  OptionFieldCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required String title,
    required int optionCount,
    required int maxSelections,
    required String optionsList,
  }) : projectId = Value(projectId),
       title = Value(title),
       optionCount = Value(optionCount),
       maxSelections = Value(maxSelections),
       optionsList = Value(optionsList);
  static Insertable<OptionFieldData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<String>? title,
    Expression<int>? optionCount,
    Expression<int>? maxSelections,
    Expression<String>? optionsList,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (title != null) 'title': title,
      if (optionCount != null) 'option_count': optionCount,
      if (maxSelections != null) 'max_selections': maxSelections,
      if (optionsList != null) 'options_list': optionsList,
    });
  }

  OptionFieldCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<String>? title,
    Value<int>? optionCount,
    Value<int>? maxSelections,
    Value<String>? optionsList,
  }) {
    return OptionFieldCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      title: title ?? this.title,
      optionCount: optionCount ?? this.optionCount,
      maxSelections: maxSelections ?? this.maxSelections,
      optionsList: optionsList ?? this.optionsList,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (optionCount.present) {
      map['option_count'] = Variable<int>(optionCount.value);
    }
    if (maxSelections.present) {
      map['max_selections'] = Variable<int>(maxSelections.value);
    }
    if (optionsList.present) {
      map['options_list'] = Variable<String>(optionsList.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OptionFieldCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('title: $title, ')
          ..write('optionCount: $optionCount, ')
          ..write('maxSelections: $maxSelections, ')
          ..write('optionsList: $optionsList')
          ..write(')'))
        .toString();
  }
}

class $RecordOptionSelectionTable extends RecordOptionSelection
    with TableInfo<$RecordOptionSelectionTable, RecordOptionSelectionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RecordOptionSelectionTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
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
  static const VerificationMeta _optionFieldIdMeta = const VerificationMeta(
    'optionFieldId',
  );
  @override
  late final GeneratedColumn<int> optionFieldId = GeneratedColumn<int>(
    'option_field_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES option_field (id) ON DELETE CASCADE',
    ),
  );
  static const VerificationMeta _selectedOptionsMeta = const VerificationMeta(
    'selectedOptions',
  );
  @override
  late final GeneratedColumn<String> selectedOptions = GeneratedColumn<String>(
    'selected_options',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    recordId,
    optionFieldId,
    selectedOptions,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'record_option_selection';
  @override
  VerificationContext validateIntegrity(
    Insertable<RecordOptionSelectionData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('option_field_id')) {
      context.handle(
        _optionFieldIdMeta,
        optionFieldId.isAcceptableOrUnknown(
          data['option_field_id']!,
          _optionFieldIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_optionFieldIdMeta);
    }
    if (data.containsKey('selected_options')) {
      context.handle(
        _selectedOptionsMeta,
        selectedOptions.isAcceptableOrUnknown(
          data['selected_options']!,
          _selectedOptionsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_selectedOptionsMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RecordOptionSelectionData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RecordOptionSelectionData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      optionFieldId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}option_field_id'],
      )!,
      selectedOptions: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selected_options'],
      )!,
    );
  }

  @override
  $RecordOptionSelectionTable createAlias(String alias) {
    return $RecordOptionSelectionTable(attachedDatabase, alias);
  }
}

class RecordOptionSelectionData extends DataClass
    implements Insertable<RecordOptionSelectionData> {
  final int id;
  final int projectId;
  final int recordId;
  final int optionFieldId;
  final String selectedOptions;
  const RecordOptionSelectionData({
    required this.id,
    required this.projectId,
    required this.recordId,
    required this.optionFieldId,
    required this.selectedOptions,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['record_id'] = Variable<int>(recordId);
    map['option_field_id'] = Variable<int>(optionFieldId);
    map['selected_options'] = Variable<String>(selectedOptions);
    return map;
  }

  RecordOptionSelectionCompanion toCompanion(bool nullToAbsent) {
    return RecordOptionSelectionCompanion(
      id: Value(id),
      projectId: Value(projectId),
      recordId: Value(recordId),
      optionFieldId: Value(optionFieldId),
      selectedOptions: Value(selectedOptions),
    );
  }

  factory RecordOptionSelectionData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RecordOptionSelectionData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      optionFieldId: serializer.fromJson<int>(json['optionFieldId']),
      selectedOptions: serializer.fromJson<String>(json['selectedOptions']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'recordId': serializer.toJson<int>(recordId),
      'optionFieldId': serializer.toJson<int>(optionFieldId),
      'selectedOptions': serializer.toJson<String>(selectedOptions),
    };
  }

  RecordOptionSelectionData copyWith({
    int? id,
    int? projectId,
    int? recordId,
    int? optionFieldId,
    String? selectedOptions,
  }) => RecordOptionSelectionData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    recordId: recordId ?? this.recordId,
    optionFieldId: optionFieldId ?? this.optionFieldId,
    selectedOptions: selectedOptions ?? this.selectedOptions,
  );
  RecordOptionSelectionData copyWithCompanion(
    RecordOptionSelectionCompanion data,
  ) {
    return RecordOptionSelectionData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      optionFieldId: data.optionFieldId.present
          ? data.optionFieldId.value
          : this.optionFieldId,
      selectedOptions: data.selectedOptions.present
          ? data.selectedOptions.value
          : this.selectedOptions,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RecordOptionSelectionData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('optionFieldId: $optionFieldId, ')
          ..write('selectedOptions: $selectedOptions')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, projectId, recordId, optionFieldId, selectedOptions);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RecordOptionSelectionData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.recordId == this.recordId &&
          other.optionFieldId == this.optionFieldId &&
          other.selectedOptions == this.selectedOptions);
}

class RecordOptionSelectionCompanion
    extends UpdateCompanion<RecordOptionSelectionData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> recordId;
  final Value<int> optionFieldId;
  final Value<String> selectedOptions;
  const RecordOptionSelectionCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.optionFieldId = const Value.absent(),
    this.selectedOptions = const Value.absent(),
  });
  RecordOptionSelectionCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int recordId,
    required int optionFieldId,
    required String selectedOptions,
  }) : projectId = Value(projectId),
       recordId = Value(recordId),
       optionFieldId = Value(optionFieldId),
       selectedOptions = Value(selectedOptions);
  static Insertable<RecordOptionSelectionData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? recordId,
    Expression<int>? optionFieldId,
    Expression<String>? selectedOptions,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (recordId != null) 'record_id': recordId,
      if (optionFieldId != null) 'option_field_id': optionFieldId,
      if (selectedOptions != null) 'selected_options': selectedOptions,
    });
  }

  RecordOptionSelectionCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? recordId,
    Value<int>? optionFieldId,
    Value<String>? selectedOptions,
  }) {
    return RecordOptionSelectionCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      recordId: recordId ?? this.recordId,
      optionFieldId: optionFieldId ?? this.optionFieldId,
      selectedOptions: selectedOptions ?? this.selectedOptions,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (optionFieldId.present) {
      map['option_field_id'] = Variable<int>(optionFieldId.value);
    }
    if (selectedOptions.present) {
      map['selected_options'] = Variable<String>(selectedOptions.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RecordOptionSelectionCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('optionFieldId: $optionFieldId, ')
          ..write('selectedOptions: $selectedOptions')
          ..write(')'))
        .toString();
  }
}

class $LocationRecordTable extends LocationRecord
    with TableInfo<$LocationRecordTable, LocationRecordData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LocationRecordTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
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
  static const VerificationMeta _locationNameMeta = const VerificationMeta(
    'locationName',
  );
  @override
  late final GeneratedColumn<String> locationName = GeneratedColumn<String>(
    'location_name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _accuracyMeta = const VerificationMeta(
    'accuracy',
  );
  @override
  late final GeneratedColumn<double> accuracy = GeneratedColumn<double>(
    'accuracy',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _longitudeMeta = const VerificationMeta(
    'longitude',
  );
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
    'longitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _latitudeMeta = const VerificationMeta(
    'latitude',
  );
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
    'latitude',
    aliasedName,
    false,
    type: DriftSqlType.double,
    requiredDuringInsert: true,
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
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    recordId,
    locationName,
    accuracy,
    longitude,
    latitude,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'location_record';
  @override
  VerificationContext validateIntegrity(
    Insertable<LocationRecordData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('location_name')) {
      context.handle(
        _locationNameMeta,
        locationName.isAcceptableOrUnknown(
          data['location_name']!,
          _locationNameMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_locationNameMeta);
    }
    if (data.containsKey('accuracy')) {
      context.handle(
        _accuracyMeta,
        accuracy.isAcceptableOrUnknown(data['accuracy']!, _accuracyMeta),
      );
    } else if (isInserting) {
      context.missing(_accuracyMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(
        _longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(
        _latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta),
      );
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocationRecordData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LocationRecordData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      locationName: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location_name'],
      )!,
      accuracy: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}accuracy'],
      )!,
      longitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}longitude'],
      )!,
      latitude: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}latitude'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $LocationRecordTable createAlias(String alias) {
    return $LocationRecordTable(attachedDatabase, alias);
  }
}

class LocationRecordData extends DataClass
    implements Insertable<LocationRecordData> {
  final int id;
  final int projectId;
  final int recordId;
  final String locationName;
  final double accuracy;
  final double longitude;
  final double latitude;
  final DateTime createdAt;
  const LocationRecordData({
    required this.id,
    required this.projectId,
    required this.recordId,
    required this.locationName,
    required this.accuracy,
    required this.longitude,
    required this.latitude,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['record_id'] = Variable<int>(recordId);
    map['location_name'] = Variable<String>(locationName);
    map['accuracy'] = Variable<double>(accuracy);
    map['longitude'] = Variable<double>(longitude);
    map['latitude'] = Variable<double>(latitude);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  LocationRecordCompanion toCompanion(bool nullToAbsent) {
    return LocationRecordCompanion(
      id: Value(id),
      projectId: Value(projectId),
      recordId: Value(recordId),
      locationName: Value(locationName),
      accuracy: Value(accuracy),
      longitude: Value(longitude),
      latitude: Value(latitude),
      createdAt: Value(createdAt),
    );
  }

  factory LocationRecordData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocationRecordData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      locationName: serializer.fromJson<String>(json['locationName']),
      accuracy: serializer.fromJson<double>(json['accuracy']),
      longitude: serializer.fromJson<double>(json['longitude']),
      latitude: serializer.fromJson<double>(json['latitude']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'recordId': serializer.toJson<int>(recordId),
      'locationName': serializer.toJson<String>(locationName),
      'accuracy': serializer.toJson<double>(accuracy),
      'longitude': serializer.toJson<double>(longitude),
      'latitude': serializer.toJson<double>(latitude),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  LocationRecordData copyWith({
    int? id,
    int? projectId,
    int? recordId,
    String? locationName,
    double? accuracy,
    double? longitude,
    double? latitude,
    DateTime? createdAt,
  }) => LocationRecordData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    recordId: recordId ?? this.recordId,
    locationName: locationName ?? this.locationName,
    accuracy: accuracy ?? this.accuracy,
    longitude: longitude ?? this.longitude,
    latitude: latitude ?? this.latitude,
    createdAt: createdAt ?? this.createdAt,
  );
  LocationRecordData copyWithCompanion(LocationRecordCompanion data) {
    return LocationRecordData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      locationName: data.locationName.present
          ? data.locationName.value
          : this.locationName,
      accuracy: data.accuracy.present ? data.accuracy.value : this.accuracy,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LocationRecordData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('locationName: $locationName, ')
          ..write('accuracy: $accuracy, ')
          ..write('longitude: $longitude, ')
          ..write('latitude: $latitude, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    projectId,
    recordId,
    locationName,
    accuracy,
    longitude,
    latitude,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocationRecordData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.recordId == this.recordId &&
          other.locationName == this.locationName &&
          other.accuracy == this.accuracy &&
          other.longitude == this.longitude &&
          other.latitude == this.latitude &&
          other.createdAt == this.createdAt);
}

class LocationRecordCompanion extends UpdateCompanion<LocationRecordData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> recordId;
  final Value<String> locationName;
  final Value<double> accuracy;
  final Value<double> longitude;
  final Value<double> latitude;
  final Value<DateTime> createdAt;
  const LocationRecordCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.locationName = const Value.absent(),
    this.accuracy = const Value.absent(),
    this.longitude = const Value.absent(),
    this.latitude = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  LocationRecordCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int recordId,
    required String locationName,
    required double accuracy,
    required double longitude,
    required double latitude,
    required DateTime createdAt,
  }) : projectId = Value(projectId),
       recordId = Value(recordId),
       locationName = Value(locationName),
       accuracy = Value(accuracy),
       longitude = Value(longitude),
       latitude = Value(latitude),
       createdAt = Value(createdAt);
  static Insertable<LocationRecordData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? recordId,
    Expression<String>? locationName,
    Expression<double>? accuracy,
    Expression<double>? longitude,
    Expression<double>? latitude,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (recordId != null) 'record_id': recordId,
      if (locationName != null) 'location_name': locationName,
      if (accuracy != null) 'accuracy': accuracy,
      if (longitude != null) 'longitude': longitude,
      if (latitude != null) 'latitude': latitude,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  LocationRecordCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? recordId,
    Value<String>? locationName,
    Value<double>? accuracy,
    Value<double>? longitude,
    Value<double>? latitude,
    Value<DateTime>? createdAt,
  }) {
    return LocationRecordCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      recordId: recordId ?? this.recordId,
      locationName: locationName ?? this.locationName,
      accuracy: accuracy ?? this.accuracy,
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (locationName.present) {
      map['location_name'] = Variable<String>(locationName.value);
    }
    if (accuracy.present) {
      map['accuracy'] = Variable<double>(accuracy.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationRecordCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('locationName: $locationName, ')
          ..write('accuracy: $accuracy, ')
          ..write('longitude: $longitude, ')
          ..write('latitude: $latitude, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $MediaRecordTable extends MediaRecord
    with TableInfo<$MediaRecordTable, MediaRecordData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MediaRecordTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _projectIdMeta = const VerificationMeta(
    'projectId',
  );
  @override
  late final GeneratedColumn<int> projectId = GeneratedColumn<int>(
    'project_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES project (id) ON DELETE CASCADE',
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
  static const VerificationMeta _storageRootDirMeta = const VerificationMeta(
    'storageRootDir',
  );
  @override
  late final GeneratedColumn<String> storageRootDir = GeneratedColumn<String>(
    'storage_root_dir',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _storageDirMeta = const VerificationMeta(
    'storageDir',
  );
  @override
  late final GeneratedColumn<String> storageDir = GeneratedColumn<String>(
    'storage_dir',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _metadataMeta = const VerificationMeta(
    'metadata',
  );
  @override
  late final GeneratedColumn<String> metadata = GeneratedColumn<String>(
    'metadata',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
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
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    projectId,
    recordId,
    storageRootDir,
    storageDir,
    metadata,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'media_record';
  @override
  VerificationContext validateIntegrity(
    Insertable<MediaRecordData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('project_id')) {
      context.handle(
        _projectIdMeta,
        projectId.isAcceptableOrUnknown(data['project_id']!, _projectIdMeta),
      );
    } else if (isInserting) {
      context.missing(_projectIdMeta);
    }
    if (data.containsKey('record_id')) {
      context.handle(
        _recordIdMeta,
        recordId.isAcceptableOrUnknown(data['record_id']!, _recordIdMeta),
      );
    } else if (isInserting) {
      context.missing(_recordIdMeta);
    }
    if (data.containsKey('storage_root_dir')) {
      context.handle(
        _storageRootDirMeta,
        storageRootDir.isAcceptableOrUnknown(
          data['storage_root_dir']!,
          _storageRootDirMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_storageRootDirMeta);
    }
    if (data.containsKey('storage_dir')) {
      context.handle(
        _storageDirMeta,
        storageDir.isAcceptableOrUnknown(data['storage_dir']!, _storageDirMeta),
      );
    } else if (isInserting) {
      context.missing(_storageDirMeta);
    }
    if (data.containsKey('metadata')) {
      context.handle(
        _metadataMeta,
        metadata.isAcceptableOrUnknown(data['metadata']!, _metadataMeta),
      );
    } else if (isInserting) {
      context.missing(_metadataMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MediaRecordData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MediaRecordData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      projectId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}project_id'],
      )!,
      recordId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record_id'],
      )!,
      storageRootDir: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}storage_root_dir'],
      )!,
      storageDir: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}storage_dir'],
      )!,
      metadata: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}metadata'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $MediaRecordTable createAlias(String alias) {
    return $MediaRecordTable(attachedDatabase, alias);
  }
}

class MediaRecordData extends DataClass implements Insertable<MediaRecordData> {
  final int id;
  final int projectId;
  final int recordId;
  final String storageRootDir;
  final String storageDir;
  final String metadata;
  final DateTime createdAt;
  const MediaRecordData({
    required this.id,
    required this.projectId,
    required this.recordId,
    required this.storageRootDir,
    required this.storageDir,
    required this.metadata,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['project_id'] = Variable<int>(projectId);
    map['record_id'] = Variable<int>(recordId);
    map['storage_root_dir'] = Variable<String>(storageRootDir);
    map['storage_dir'] = Variable<String>(storageDir);
    map['metadata'] = Variable<String>(metadata);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  MediaRecordCompanion toCompanion(bool nullToAbsent) {
    return MediaRecordCompanion(
      id: Value(id),
      projectId: Value(projectId),
      recordId: Value(recordId),
      storageRootDir: Value(storageRootDir),
      storageDir: Value(storageDir),
      metadata: Value(metadata),
      createdAt: Value(createdAt),
    );
  }

  factory MediaRecordData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MediaRecordData(
      id: serializer.fromJson<int>(json['id']),
      projectId: serializer.fromJson<int>(json['projectId']),
      recordId: serializer.fromJson<int>(json['recordId']),
      storageRootDir: serializer.fromJson<String>(json['storageRootDir']),
      storageDir: serializer.fromJson<String>(json['storageDir']),
      metadata: serializer.fromJson<String>(json['metadata']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'projectId': serializer.toJson<int>(projectId),
      'recordId': serializer.toJson<int>(recordId),
      'storageRootDir': serializer.toJson<String>(storageRootDir),
      'storageDir': serializer.toJson<String>(storageDir),
      'metadata': serializer.toJson<String>(metadata),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  MediaRecordData copyWith({
    int? id,
    int? projectId,
    int? recordId,
    String? storageRootDir,
    String? storageDir,
    String? metadata,
    DateTime? createdAt,
  }) => MediaRecordData(
    id: id ?? this.id,
    projectId: projectId ?? this.projectId,
    recordId: recordId ?? this.recordId,
    storageRootDir: storageRootDir ?? this.storageRootDir,
    storageDir: storageDir ?? this.storageDir,
    metadata: metadata ?? this.metadata,
    createdAt: createdAt ?? this.createdAt,
  );
  MediaRecordData copyWithCompanion(MediaRecordCompanion data) {
    return MediaRecordData(
      id: data.id.present ? data.id.value : this.id,
      projectId: data.projectId.present ? data.projectId.value : this.projectId,
      recordId: data.recordId.present ? data.recordId.value : this.recordId,
      storageRootDir: data.storageRootDir.present
          ? data.storageRootDir.value
          : this.storageRootDir,
      storageDir: data.storageDir.present
          ? data.storageDir.value
          : this.storageDir,
      metadata: data.metadata.present ? data.metadata.value : this.metadata,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MediaRecordData(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('storageRootDir: $storageRootDir, ')
          ..write('storageDir: $storageDir, ')
          ..write('metadata: $metadata, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    projectId,
    recordId,
    storageRootDir,
    storageDir,
    metadata,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MediaRecordData &&
          other.id == this.id &&
          other.projectId == this.projectId &&
          other.recordId == this.recordId &&
          other.storageRootDir == this.storageRootDir &&
          other.storageDir == this.storageDir &&
          other.metadata == this.metadata &&
          other.createdAt == this.createdAt);
}

class MediaRecordCompanion extends UpdateCompanion<MediaRecordData> {
  final Value<int> id;
  final Value<int> projectId;
  final Value<int> recordId;
  final Value<String> storageRootDir;
  final Value<String> storageDir;
  final Value<String> metadata;
  final Value<DateTime> createdAt;
  const MediaRecordCompanion({
    this.id = const Value.absent(),
    this.projectId = const Value.absent(),
    this.recordId = const Value.absent(),
    this.storageRootDir = const Value.absent(),
    this.storageDir = const Value.absent(),
    this.metadata = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  MediaRecordCompanion.insert({
    this.id = const Value.absent(),
    required int projectId,
    required int recordId,
    required String storageRootDir,
    required String storageDir,
    required String metadata,
    required DateTime createdAt,
  }) : projectId = Value(projectId),
       recordId = Value(recordId),
       storageRootDir = Value(storageRootDir),
       storageDir = Value(storageDir),
       metadata = Value(metadata),
       createdAt = Value(createdAt);
  static Insertable<MediaRecordData> custom({
    Expression<int>? id,
    Expression<int>? projectId,
    Expression<int>? recordId,
    Expression<String>? storageRootDir,
    Expression<String>? storageDir,
    Expression<String>? metadata,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (projectId != null) 'project_id': projectId,
      if (recordId != null) 'record_id': recordId,
      if (storageRootDir != null) 'storage_root_dir': storageRootDir,
      if (storageDir != null) 'storage_dir': storageDir,
      if (metadata != null) 'metadata': metadata,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  MediaRecordCompanion copyWith({
    Value<int>? id,
    Value<int>? projectId,
    Value<int>? recordId,
    Value<String>? storageRootDir,
    Value<String>? storageDir,
    Value<String>? metadata,
    Value<DateTime>? createdAt,
  }) {
    return MediaRecordCompanion(
      id: id ?? this.id,
      projectId: projectId ?? this.projectId,
      recordId: recordId ?? this.recordId,
      storageRootDir: storageRootDir ?? this.storageRootDir,
      storageDir: storageDir ?? this.storageDir,
      metadata: metadata ?? this.metadata,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (projectId.present) {
      map['project_id'] = Variable<int>(projectId.value);
    }
    if (recordId.present) {
      map['record_id'] = Variable<int>(recordId.value);
    }
    if (storageRootDir.present) {
      map['storage_root_dir'] = Variable<String>(storageRootDir.value);
    }
    if (storageDir.present) {
      map['storage_dir'] = Variable<String>(storageDir.value);
    }
    if (metadata.present) {
      map['metadata'] = Variable<String>(metadata.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MediaRecordCompanion(')
          ..write('id: $id, ')
          ..write('projectId: $projectId, ')
          ..write('recordId: $recordId, ')
          ..write('storageRootDir: $storageRootDir, ')
          ..write('storageDir: $storageDir, ')
          ..write('metadata: $metadata, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CategoryTable category = $CategoryTable(this);
  late final $ProjectTable project = $ProjectTable(this);
  late final $RecordsTable records = $RecordsTable(this);
  late final $StepDefinitionTable stepDefinition = $StepDefinitionTable(this);
  late final $RecordStepTable recordStep = $RecordStepTable(this);
  late final $TagTable tag = $TagTable(this);
  late final $RecordTagTable recordTag = $RecordTagTable(this);
  late final $NumericFieldTable numericField = $NumericFieldTable(this);
  late final $RecordNumericValueTable recordNumericValue =
      $RecordNumericValueTable(this);
  late final $OptionFieldTable optionField = $OptionFieldTable(this);
  late final $RecordOptionSelectionTable recordOptionSelection =
      $RecordOptionSelectionTable(this);
  late final $LocationRecordTable locationRecord = $LocationRecordTable(this);
  late final $MediaRecordTable mediaRecord = $MediaRecordTable(this);
  late final CategoryDao categoryDao = CategoryDao(this as AppDatabase);
  late final ProjectDao projectDao = ProjectDao(this as AppDatabase);
  late final RecordsDao recordsDao = RecordsDao(this as AppDatabase);
  late final StepDefinitionDao stepDefinitionDao = StepDefinitionDao(
    this as AppDatabase,
  );
  late final RecordStepDao recordStepDao = RecordStepDao(this as AppDatabase);
  late final TagDao tagDao = TagDao(this as AppDatabase);
  late final RecordTagDao recordTagDao = RecordTagDao(this as AppDatabase);
  late final NumericFieldDao numericFieldDao = NumericFieldDao(
    this as AppDatabase,
  );
  late final RecordNumericValueDao recordNumericValueDao =
      RecordNumericValueDao(this as AppDatabase);
  late final OptionFieldDao optionFieldDao = OptionFieldDao(
    this as AppDatabase,
  );
  late final RecordOptionSelectionDao recordOptionSelectionDao =
      RecordOptionSelectionDao(this as AppDatabase);
  late final LocationRecordDao locationRecordDao = LocationRecordDao(
    this as AppDatabase,
  );
  late final MediaRecordDao mediaRecordDao = MediaRecordDao(
    this as AppDatabase,
  );
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    category,
    project,
    records,
    stepDefinition,
    recordStep,
    tag,
    recordTag,
    numericField,
    recordNumericValue,
    optionField,
    recordOptionSelection,
    locationRecord,
    mediaRecord,
  ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules([
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'category',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('project', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('records', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('step_definition', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_step', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_step', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'step_definition',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_step', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_tag', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_tag', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'tag',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_tag', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('numeric_field', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_numeric_value', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_numeric_value', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'numeric_field',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_numeric_value', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('option_field', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_option_selection', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_option_selection', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'option_field',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('record_option_selection', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('location_record', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('location_record', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'project',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('media_record', kind: UpdateKind.delete)],
    ),
    WritePropagation(
      on: TableUpdateQuery.onTableName(
        'records',
        limitUpdateKind: UpdateKind.delete,
      ),
      result: [TableUpdate('media_record', kind: UpdateKind.delete)],
    ),
  ]);
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$CategoryTableCreateCompanionBuilder =
    CategoryCompanion Function({
      Value<int> id,
      required String title,
      Value<String?> icon,
      Value<String?> colorTheme,
    });
typedef $$CategoryTableUpdateCompanionBuilder =
    CategoryCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String?> icon,
      Value<String?> colorTheme,
    });

final class $$CategoryTableReferences
    extends BaseReferences<_$AppDatabase, $CategoryTable, CategoryData> {
  $$CategoryTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProjectTable, List<ProjectData>>
  _projectRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.project,
    aliasName: $_aliasNameGenerator(db.category.id, db.project.categoryId),
  );

  $$ProjectTableProcessedTableManager get projectRefs {
    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.categoryId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_projectRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$CategoryTableFilterComposer
    extends Composer<_$AppDatabase, $CategoryTable> {
  $$CategoryTableFilterComposer({
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

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> projectRefs(
    Expression<bool> Function($$ProjectTableFilterComposer f) f,
  ) {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoryTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoryTable> {
  $$CategoryTableOrderingComposer({
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

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoryTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoryTable> {
  $$CategoryTableAnnotationComposer({
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

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => column,
  );

  Expression<T> projectRefs<T extends Object>(
    Expression<T> Function($$ProjectTableAnnotationComposer a) f,
  ) {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.categoryId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$CategoryTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoryTable,
          CategoryData,
          $$CategoryTableFilterComposer,
          $$CategoryTableOrderingComposer,
          $$CategoryTableAnnotationComposer,
          $$CategoryTableCreateCompanionBuilder,
          $$CategoryTableUpdateCompanionBuilder,
          (CategoryData, $$CategoryTableReferences),
          CategoryData,
          PrefetchHooks Function({bool projectRefs})
        > {
  $$CategoryTableTableManager(_$AppDatabase db, $CategoryTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> colorTheme = const Value.absent(),
              }) => CategoryCompanion(
                id: id,
                title: title,
                icon: icon,
                colorTheme: colorTheme,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                Value<String?> icon = const Value.absent(),
                Value<String?> colorTheme = const Value.absent(),
              }) => CategoryCompanion.insert(
                id: id,
                title: title,
                icon: icon,
                colorTheme: colorTheme,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$CategoryTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({projectRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (projectRefs) db.project],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (projectRefs)
                    await $_getPrefetchedData<
                      CategoryData,
                      $CategoryTable,
                      ProjectData
                    >(
                      currentTable: table,
                      referencedTable: $$CategoryTableReferences
                          ._projectRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$CategoryTableReferences(db, table, p0).projectRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.categoryId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$CategoryTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoryTable,
      CategoryData,
      $$CategoryTableFilterComposer,
      $$CategoryTableOrderingComposer,
      $$CategoryTableAnnotationComposer,
      $$CategoryTableCreateCompanionBuilder,
      $$CategoryTableUpdateCompanionBuilder,
      (CategoryData, $$CategoryTableReferences),
      CategoryData,
      PrefetchHooks Function({bool projectRefs})
    >;
typedef $$ProjectTableCreateCompanionBuilder =
    ProjectCompanion Function({
      Value<int> id,
      required int categoryId,
      required String name,
      Value<String?> icon,
      Value<String?> description,
      Value<String?> colorTheme,
      required bool enableNumericRecord,
      required bool enableOptionRecord,
      required bool enableStepRecord,
      required bool enableLocationRecord,
      required bool enableMediaRecord,
      required bool enableStartRecord,
      required bool enableNotification,
      required bool isArchived,
      required bool isHidden,
      required int sortWeight,
      required DateTime updatedAt,
      required DateTime createdAt,
    });
typedef $$ProjectTableUpdateCompanionBuilder =
    ProjectCompanion Function({
      Value<int> id,
      Value<int> categoryId,
      Value<String> name,
      Value<String?> icon,
      Value<String?> description,
      Value<String?> colorTheme,
      Value<bool> enableNumericRecord,
      Value<bool> enableOptionRecord,
      Value<bool> enableStepRecord,
      Value<bool> enableLocationRecord,
      Value<bool> enableMediaRecord,
      Value<bool> enableStartRecord,
      Value<bool> enableNotification,
      Value<bool> isArchived,
      Value<bool> isHidden,
      Value<int> sortWeight,
      Value<DateTime> updatedAt,
      Value<DateTime> createdAt,
    });

final class $$ProjectTableReferences
    extends BaseReferences<_$AppDatabase, $ProjectTable, ProjectData> {
  $$ProjectTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CategoryTable _categoryIdTable(_$AppDatabase db) => db.category
      .createAlias($_aliasNameGenerator(db.project.categoryId, db.category.id));

  $$CategoryTableProcessedTableManager get categoryId {
    final $_column = $_itemColumn<int>('category_id')!;

    final manager = $$CategoryTableTableManager(
      $_db,
      $_db.category,
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
    aliasName: $_aliasNameGenerator(db.project.id, db.records.projectId),
  );

  $$RecordsTableProcessedTableManager get recordsRefs {
    final manager = $$RecordsTableTableManager(
      $_db,
      $_db.records,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$StepDefinitionTable, List<StepDefinitionData>>
  _stepDefinitionRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.stepDefinition,
    aliasName: $_aliasNameGenerator(db.project.id, db.stepDefinition.projectId),
  );

  $$StepDefinitionTableProcessedTableManager get stepDefinitionRefs {
    final manager = $$StepDefinitionTableTableManager(
      $_db,
      $_db.stepDefinition,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_stepDefinitionRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordStepTable, List<RecordStepData>>
  _recordStepRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordStep,
    aliasName: $_aliasNameGenerator(db.project.id, db.recordStep.projectId),
  );

  $$RecordStepTableProcessedTableManager get recordStepRefs {
    final manager = $$RecordStepTableTableManager(
      $_db,
      $_db.recordStep,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordStepRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordTagTable, List<RecordTagData>>
  _recordTagRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordTag,
    aliasName: $_aliasNameGenerator(db.project.id, db.recordTag.projectId),
  );

  $$RecordTagTableProcessedTableManager get recordTagRefs {
    final manager = $$RecordTagTableTableManager(
      $_db,
      $_db.recordTag,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordTagRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$NumericFieldTable, List<NumericFieldData>>
  _numericFieldRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.numericField,
    aliasName: $_aliasNameGenerator(db.project.id, db.numericField.projectId),
  );

  $$NumericFieldTableProcessedTableManager get numericFieldRefs {
    final manager = $$NumericFieldTableTableManager(
      $_db,
      $_db.numericField,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_numericFieldRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $RecordNumericValueTable,
    List<RecordNumericValueData>
  >
  _recordNumericValueRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordNumericValue,
        aliasName: $_aliasNameGenerator(
          db.project.id,
          db.recordNumericValue.projectId,
        ),
      );

  $$RecordNumericValueTableProcessedTableManager get recordNumericValueRefs {
    final manager = $$RecordNumericValueTableTableManager(
      $_db,
      $_db.recordNumericValue,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordNumericValueRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$OptionFieldTable, List<OptionFieldData>>
  _optionFieldRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.optionField,
    aliasName: $_aliasNameGenerator(db.project.id, db.optionField.projectId),
  );

  $$OptionFieldTableProcessedTableManager get optionFieldRefs {
    final manager = $$OptionFieldTableTableManager(
      $_db,
      $_db.optionField,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_optionFieldRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $RecordOptionSelectionTable,
    List<RecordOptionSelectionData>
  >
  _recordOptionSelectionRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordOptionSelection,
        aliasName: $_aliasNameGenerator(
          db.project.id,
          db.recordOptionSelection.projectId,
        ),
      );

  $$RecordOptionSelectionTableProcessedTableManager
  get recordOptionSelectionRefs {
    final manager = $$RecordOptionSelectionTableTableManager(
      $_db,
      $_db.recordOptionSelection,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordOptionSelectionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LocationRecordTable, List<LocationRecordData>>
  _locationRecordRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.locationRecord,
    aliasName: $_aliasNameGenerator(db.project.id, db.locationRecord.projectId),
  );

  $$LocationRecordTableProcessedTableManager get locationRecordRefs {
    final manager = $$LocationRecordTableTableManager(
      $_db,
      $_db.locationRecord,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_locationRecordRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$MediaRecordTable, List<MediaRecordData>>
  _mediaRecordRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.mediaRecord,
    aliasName: $_aliasNameGenerator(db.project.id, db.mediaRecord.projectId),
  );

  $$MediaRecordTableProcessedTableManager get mediaRecordRefs {
    final manager = $$MediaRecordTableTableManager(
      $_db,
      $_db.mediaRecord,
    ).filter((f) => f.projectId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_mediaRecordRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ProjectTableFilterComposer
    extends Composer<_$AppDatabase, $ProjectTable> {
  $$ProjectTableFilterComposer({
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

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableNumericRecord => $composableBuilder(
    column: $table.enableNumericRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableOptionRecord => $composableBuilder(
    column: $table.enableOptionRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableStepRecord => $composableBuilder(
    column: $table.enableStepRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableLocationRecord => $composableBuilder(
    column: $table.enableLocationRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableMediaRecord => $composableBuilder(
    column: $table.enableMediaRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableStartRecord => $composableBuilder(
    column: $table.enableStartRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableNotification => $composableBuilder(
    column: $table.enableNotification,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get sortWeight => $composableBuilder(
    column: $table.sortWeight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$CategoryTableFilterComposer get categoryId {
    final $$CategoryTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.category,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableFilterComposer(
            $db: $db,
            $table: $db.category,
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
      getReferencedColumn: (t) => t.projectId,
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

  Expression<bool> stepDefinitionRefs(
    Expression<bool> Function($$StepDefinitionTableFilterComposer f) f,
  ) {
    final $$StepDefinitionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stepDefinition,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StepDefinitionTableFilterComposer(
            $db: $db,
            $table: $db.stepDefinition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordStepRefs(
    Expression<bool> Function($$RecordStepTableFilterComposer f) f,
  ) {
    final $$RecordStepTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStep,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepTableFilterComposer(
            $db: $db,
            $table: $db.recordStep,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordTagRefs(
    Expression<bool> Function($$RecordTagTableFilterComposer f) f,
  ) {
    final $$RecordTagTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTag,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagTableFilterComposer(
            $db: $db,
            $table: $db.recordTag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> numericFieldRefs(
    Expression<bool> Function($$NumericFieldTableFilterComposer f) f,
  ) {
    final $$NumericFieldTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.numericField,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NumericFieldTableFilterComposer(
            $db: $db,
            $table: $db.numericField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordNumericValueRefs(
    Expression<bool> Function($$RecordNumericValueTableFilterComposer f) f,
  ) {
    final $$RecordNumericValueTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordNumericValue,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordNumericValueTableFilterComposer(
            $db: $db,
            $table: $db.recordNumericValue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> optionFieldRefs(
    Expression<bool> Function($$OptionFieldTableFilterComposer f) f,
  ) {
    final $$OptionFieldTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.optionField,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OptionFieldTableFilterComposer(
            $db: $db,
            $table: $db.optionField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordOptionSelectionRefs(
    Expression<bool> Function($$RecordOptionSelectionTableFilterComposer f) f,
  ) {
    final $$RecordOptionSelectionTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordOptionSelection,
          getReferencedColumn: (t) => t.projectId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordOptionSelectionTableFilterComposer(
                $db: $db,
                $table: $db.recordOptionSelection,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> locationRecordRefs(
    Expression<bool> Function($$LocationRecordTableFilterComposer f) f,
  ) {
    final $$LocationRecordTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.locationRecord,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationRecordTableFilterComposer(
            $db: $db,
            $table: $db.locationRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> mediaRecordRefs(
    Expression<bool> Function($$MediaRecordTableFilterComposer f) f,
  ) {
    final $$MediaRecordTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.mediaRecord,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MediaRecordTableFilterComposer(
            $db: $db,
            $table: $db.mediaRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProjectTableOrderingComposer
    extends Composer<_$AppDatabase, $ProjectTable> {
  $$ProjectTableOrderingComposer({
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

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableNumericRecord => $composableBuilder(
    column: $table.enableNumericRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableOptionRecord => $composableBuilder(
    column: $table.enableOptionRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableStepRecord => $composableBuilder(
    column: $table.enableStepRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableLocationRecord => $composableBuilder(
    column: $table.enableLocationRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableMediaRecord => $composableBuilder(
    column: $table.enableMediaRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableStartRecord => $composableBuilder(
    column: $table.enableStartRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableNotification => $composableBuilder(
    column: $table.enableNotification,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get sortWeight => $composableBuilder(
    column: $table.sortWeight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$CategoryTableOrderingComposer get categoryId {
    final $$CategoryTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.category,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableOrderingComposer(
            $db: $db,
            $table: $db.category,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$ProjectTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProjectTable> {
  $$ProjectTableAnnotationComposer({
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

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableNumericRecord => $composableBuilder(
    column: $table.enableNumericRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableOptionRecord => $composableBuilder(
    column: $table.enableOptionRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableStepRecord => $composableBuilder(
    column: $table.enableStepRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableLocationRecord => $composableBuilder(
    column: $table.enableLocationRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableMediaRecord => $composableBuilder(
    column: $table.enableMediaRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableStartRecord => $composableBuilder(
    column: $table.enableStartRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableNotification => $composableBuilder(
    column: $table.enableNotification,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  GeneratedColumn<int> get sortWeight => $composableBuilder(
    column: $table.sortWeight,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$CategoryTableAnnotationComposer get categoryId {
    final $$CategoryTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.categoryId,
      referencedTable: $db.category,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$CategoryTableAnnotationComposer(
            $db: $db,
            $table: $db.category,
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
      getReferencedColumn: (t) => t.projectId,
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

  Expression<T> stepDefinitionRefs<T extends Object>(
    Expression<T> Function($$StepDefinitionTableAnnotationComposer a) f,
  ) {
    final $$StepDefinitionTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.stepDefinition,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StepDefinitionTableAnnotationComposer(
            $db: $db,
            $table: $db.stepDefinition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordStepRefs<T extends Object>(
    Expression<T> Function($$RecordStepTableAnnotationComposer a) f,
  ) {
    final $$RecordStepTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStep,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepTableAnnotationComposer(
            $db: $db,
            $table: $db.recordStep,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordTagRefs<T extends Object>(
    Expression<T> Function($$RecordTagTableAnnotationComposer a) f,
  ) {
    final $$RecordTagTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTag,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> numericFieldRefs<T extends Object>(
    Expression<T> Function($$NumericFieldTableAnnotationComposer a) f,
  ) {
    final $$NumericFieldTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.numericField,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NumericFieldTableAnnotationComposer(
            $db: $db,
            $table: $db.numericField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordNumericValueRefs<T extends Object>(
    Expression<T> Function($$RecordNumericValueTableAnnotationComposer a) f,
  ) {
    final $$RecordNumericValueTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordNumericValue,
          getReferencedColumn: (t) => t.projectId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordNumericValueTableAnnotationComposer(
                $db: $db,
                $table: $db.recordNumericValue,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> optionFieldRefs<T extends Object>(
    Expression<T> Function($$OptionFieldTableAnnotationComposer a) f,
  ) {
    final $$OptionFieldTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.optionField,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OptionFieldTableAnnotationComposer(
            $db: $db,
            $table: $db.optionField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordOptionSelectionRefs<T extends Object>(
    Expression<T> Function($$RecordOptionSelectionTableAnnotationComposer a) f,
  ) {
    final $$RecordOptionSelectionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordOptionSelection,
          getReferencedColumn: (t) => t.projectId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordOptionSelectionTableAnnotationComposer(
                $db: $db,
                $table: $db.recordOptionSelection,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> locationRecordRefs<T extends Object>(
    Expression<T> Function($$LocationRecordTableAnnotationComposer a) f,
  ) {
    final $$LocationRecordTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.locationRecord,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationRecordTableAnnotationComposer(
            $db: $db,
            $table: $db.locationRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> mediaRecordRefs<T extends Object>(
    Expression<T> Function($$MediaRecordTableAnnotationComposer a) f,
  ) {
    final $$MediaRecordTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.mediaRecord,
      getReferencedColumn: (t) => t.projectId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MediaRecordTableAnnotationComposer(
            $db: $db,
            $table: $db.mediaRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ProjectTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProjectTable,
          ProjectData,
          $$ProjectTableFilterComposer,
          $$ProjectTableOrderingComposer,
          $$ProjectTableAnnotationComposer,
          $$ProjectTableCreateCompanionBuilder,
          $$ProjectTableUpdateCompanionBuilder,
          (ProjectData, $$ProjectTableReferences),
          ProjectData,
          PrefetchHooks Function({
            bool categoryId,
            bool recordsRefs,
            bool stepDefinitionRefs,
            bool recordStepRefs,
            bool recordTagRefs,
            bool numericFieldRefs,
            bool recordNumericValueRefs,
            bool optionFieldRefs,
            bool recordOptionSelectionRefs,
            bool locationRecordRefs,
            bool mediaRecordRefs,
          })
        > {
  $$ProjectTableTableManager(_$AppDatabase db, $ProjectTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProjectTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProjectTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProjectTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> colorTheme = const Value.absent(),
                Value<bool> enableNumericRecord = const Value.absent(),
                Value<bool> enableOptionRecord = const Value.absent(),
                Value<bool> enableStepRecord = const Value.absent(),
                Value<bool> enableLocationRecord = const Value.absent(),
                Value<bool> enableMediaRecord = const Value.absent(),
                Value<bool> enableStartRecord = const Value.absent(),
                Value<bool> enableNotification = const Value.absent(),
                Value<bool> isArchived = const Value.absent(),
                Value<bool> isHidden = const Value.absent(),
                Value<int> sortWeight = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => ProjectCompanion(
                id: id,
                categoryId: categoryId,
                name: name,
                icon: icon,
                description: description,
                colorTheme: colorTheme,
                enableNumericRecord: enableNumericRecord,
                enableOptionRecord: enableOptionRecord,
                enableStepRecord: enableStepRecord,
                enableLocationRecord: enableLocationRecord,
                enableMediaRecord: enableMediaRecord,
                enableStartRecord: enableStartRecord,
                enableNotification: enableNotification,
                isArchived: isArchived,
                isHidden: isHidden,
                sortWeight: sortWeight,
                updatedAt: updatedAt,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int categoryId,
                required String name,
                Value<String?> icon = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<String?> colorTheme = const Value.absent(),
                required bool enableNumericRecord,
                required bool enableOptionRecord,
                required bool enableStepRecord,
                required bool enableLocationRecord,
                required bool enableMediaRecord,
                required bool enableStartRecord,
                required bool enableNotification,
                required bool isArchived,
                required bool isHidden,
                required int sortWeight,
                required DateTime updatedAt,
                required DateTime createdAt,
              }) => ProjectCompanion.insert(
                id: id,
                categoryId: categoryId,
                name: name,
                icon: icon,
                description: description,
                colorTheme: colorTheme,
                enableNumericRecord: enableNumericRecord,
                enableOptionRecord: enableOptionRecord,
                enableStepRecord: enableStepRecord,
                enableLocationRecord: enableLocationRecord,
                enableMediaRecord: enableMediaRecord,
                enableStartRecord: enableStartRecord,
                enableNotification: enableNotification,
                isArchived: isArchived,
                isHidden: isHidden,
                sortWeight: sortWeight,
                updatedAt: updatedAt,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ProjectTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                categoryId = false,
                recordsRefs = false,
                stepDefinitionRefs = false,
                recordStepRefs = false,
                recordTagRefs = false,
                numericFieldRefs = false,
                recordNumericValueRefs = false,
                optionFieldRefs = false,
                recordOptionSelectionRefs = false,
                locationRecordRefs = false,
                mediaRecordRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordsRefs) db.records,
                    if (stepDefinitionRefs) db.stepDefinition,
                    if (recordStepRefs) db.recordStep,
                    if (recordTagRefs) db.recordTag,
                    if (numericFieldRefs) db.numericField,
                    if (recordNumericValueRefs) db.recordNumericValue,
                    if (optionFieldRefs) db.optionField,
                    if (recordOptionSelectionRefs) db.recordOptionSelection,
                    if (locationRecordRefs) db.locationRecord,
                    if (mediaRecordRefs) db.mediaRecord,
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
                                    referencedTable: $$ProjectTableReferences
                                        ._categoryIdTable(db),
                                    referencedColumn: $$ProjectTableReferences
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
                          ProjectData,
                          $ProjectTable,
                          Record
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._recordsRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).recordsRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (stepDefinitionRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          StepDefinitionData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._stepDefinitionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).stepDefinitionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordStepRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          RecordStepData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._recordStepRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).recordStepRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordTagRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          RecordTagData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._recordTagRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).recordTagRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (numericFieldRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          NumericFieldData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._numericFieldRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).numericFieldRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordNumericValueRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          RecordNumericValueData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._recordNumericValueRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).recordNumericValueRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (optionFieldRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          OptionFieldData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._optionFieldRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).optionFieldRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordOptionSelectionRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          RecordOptionSelectionData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._recordOptionSelectionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).recordOptionSelectionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (locationRecordRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          LocationRecordData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._locationRecordRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).locationRecordRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (mediaRecordRefs)
                        await $_getPrefetchedData<
                          ProjectData,
                          $ProjectTable,
                          MediaRecordData
                        >(
                          currentTable: table,
                          referencedTable: $$ProjectTableReferences
                              ._mediaRecordRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$ProjectTableReferences(
                                db,
                                table,
                                p0,
                              ).mediaRecordRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.projectId == item.id,
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

typedef $$ProjectTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProjectTable,
      ProjectData,
      $$ProjectTableFilterComposer,
      $$ProjectTableOrderingComposer,
      $$ProjectTableAnnotationComposer,
      $$ProjectTableCreateCompanionBuilder,
      $$ProjectTableUpdateCompanionBuilder,
      (ProjectData, $$ProjectTableReferences),
      ProjectData,
      PrefetchHooks Function({
        bool categoryId,
        bool recordsRefs,
        bool stepDefinitionRefs,
        bool recordStepRefs,
        bool recordTagRefs,
        bool numericFieldRefs,
        bool recordNumericValueRefs,
        bool optionFieldRefs,
        bool recordOptionSelectionRefs,
        bool locationRecordRefs,
        bool mediaRecordRefs,
      })
    >;
typedef $$RecordsTableCreateCompanionBuilder =
    RecordsCompanion Function({
      Value<int> id,
      required int projectId,
      required String title,
      Value<String?> content,
      Value<int?> stepIndex,
      required bool isArchived,
      required bool isHidden,
      required DateTime updatedAt,
      required DateTime createdAt,
    });
typedef $$RecordsTableUpdateCompanionBuilder =
    RecordsCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<String> title,
      Value<String?> content,
      Value<int?> stepIndex,
      Value<bool> isArchived,
      Value<bool> isHidden,
      Value<DateTime> updatedAt,
      Value<DateTime> createdAt,
    });

final class $$RecordsTableReferences
    extends BaseReferences<_$AppDatabase, $RecordsTable, Record> {
  $$RecordsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectTable _projectIdTable(_$AppDatabase db) => db.project
      .createAlias($_aliasNameGenerator(db.records.projectId, db.project.id));

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$RecordStepTable, List<RecordStepData>>
  _recordStepRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordStep,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordStep.recordId),
  );

  $$RecordStepTableProcessedTableManager get recordStepRefs {
    final manager = $$RecordStepTableTableManager(
      $_db,
      $_db.recordStep,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordStepRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$RecordTagTable, List<RecordTagData>>
  _recordTagRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordTag,
    aliasName: $_aliasNameGenerator(db.records.id, db.recordTag.recordId),
  );

  $$RecordTagTableProcessedTableManager get recordTagRefs {
    final manager = $$RecordTagTableTableManager(
      $_db,
      $_db.recordTag,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordTagRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $RecordNumericValueTable,
    List<RecordNumericValueData>
  >
  _recordNumericValueRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordNumericValue,
        aliasName: $_aliasNameGenerator(
          db.records.id,
          db.recordNumericValue.recordId,
        ),
      );

  $$RecordNumericValueTableProcessedTableManager get recordNumericValueRefs {
    final manager = $$RecordNumericValueTableTableManager(
      $_db,
      $_db.recordNumericValue,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordNumericValueRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<
    $RecordOptionSelectionTable,
    List<RecordOptionSelectionData>
  >
  _recordOptionSelectionRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordOptionSelection,
        aliasName: $_aliasNameGenerator(
          db.records.id,
          db.recordOptionSelection.recordId,
        ),
      );

  $$RecordOptionSelectionTableProcessedTableManager
  get recordOptionSelectionRefs {
    final manager = $$RecordOptionSelectionTableTableManager(
      $_db,
      $_db.recordOptionSelection,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordOptionSelectionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$LocationRecordTable, List<LocationRecordData>>
  _locationRecordRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.locationRecord,
    aliasName: $_aliasNameGenerator(db.records.id, db.locationRecord.recordId),
  );

  $$LocationRecordTableProcessedTableManager get locationRecordRefs {
    final manager = $$LocationRecordTableTableManager(
      $_db,
      $_db.locationRecord,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_locationRecordRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }

  static MultiTypedResultKey<$MediaRecordTable, List<MediaRecordData>>
  _mediaRecordRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.mediaRecord,
    aliasName: $_aliasNameGenerator(db.records.id, db.mediaRecord.recordId),
  );

  $$MediaRecordTableProcessedTableManager get mediaRecordRefs {
    final manager = $$MediaRecordTableTableManager(
      $_db,
      $_db.mediaRecord,
    ).filter((f) => f.recordId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_mediaRecordRefsTable($_db));
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

  ColumnFilters<int> get stepIndex => $composableBuilder(
    column: $table.stepIndex,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> recordStepRefs(
    Expression<bool> Function($$RecordStepTableFilterComposer f) f,
  ) {
    final $$RecordStepTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStep,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepTableFilterComposer(
            $db: $db,
            $table: $db.recordStep,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordTagRefs(
    Expression<bool> Function($$RecordTagTableFilterComposer f) f,
  ) {
    final $$RecordTagTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTag,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagTableFilterComposer(
            $db: $db,
            $table: $db.recordTag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordNumericValueRefs(
    Expression<bool> Function($$RecordNumericValueTableFilterComposer f) f,
  ) {
    final $$RecordNumericValueTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordNumericValue,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordNumericValueTableFilterComposer(
            $db: $db,
            $table: $db.recordNumericValue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> recordOptionSelectionRefs(
    Expression<bool> Function($$RecordOptionSelectionTableFilterComposer f) f,
  ) {
    final $$RecordOptionSelectionTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordOptionSelection,
          getReferencedColumn: (t) => t.recordId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordOptionSelectionTableFilterComposer(
                $db: $db,
                $table: $db.recordOptionSelection,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<bool> locationRecordRefs(
    Expression<bool> Function($$LocationRecordTableFilterComposer f) f,
  ) {
    final $$LocationRecordTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.locationRecord,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationRecordTableFilterComposer(
            $db: $db,
            $table: $db.locationRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<bool> mediaRecordRefs(
    Expression<bool> Function($$MediaRecordTableFilterComposer f) f,
  ) {
    final $$MediaRecordTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.mediaRecord,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MediaRecordTableFilterComposer(
            $db: $db,
            $table: $db.mediaRecord,
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

  ColumnOrderings<int> get stepIndex => $composableBuilder(
    column: $table.stepIndex,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isHidden => $composableBuilder(
    column: $table.isHidden,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

  GeneratedColumn<int> get stepIndex =>
      $composableBuilder(column: $table.stepIndex, builder: (column) => column);

  GeneratedColumn<bool> get isArchived => $composableBuilder(
    column: $table.isArchived,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isHidden =>
      $composableBuilder(column: $table.isHidden, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> recordStepRefs<T extends Object>(
    Expression<T> Function($$RecordStepTableAnnotationComposer a) f,
  ) {
    final $$RecordStepTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStep,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepTableAnnotationComposer(
            $db: $db,
            $table: $db.recordStep,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordTagRefs<T extends Object>(
    Expression<T> Function($$RecordTagTableAnnotationComposer a) f,
  ) {
    final $$RecordTagTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTag,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> recordNumericValueRefs<T extends Object>(
    Expression<T> Function($$RecordNumericValueTableAnnotationComposer a) f,
  ) {
    final $$RecordNumericValueTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordNumericValue,
          getReferencedColumn: (t) => t.recordId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordNumericValueTableAnnotationComposer(
                $db: $db,
                $table: $db.recordNumericValue,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> recordOptionSelectionRefs<T extends Object>(
    Expression<T> Function($$RecordOptionSelectionTableAnnotationComposer a) f,
  ) {
    final $$RecordOptionSelectionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordOptionSelection,
          getReferencedColumn: (t) => t.recordId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordOptionSelectionTableAnnotationComposer(
                $db: $db,
                $table: $db.recordOptionSelection,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }

  Expression<T> locationRecordRefs<T extends Object>(
    Expression<T> Function($$LocationRecordTableAnnotationComposer a) f,
  ) {
    final $$LocationRecordTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.locationRecord,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$LocationRecordTableAnnotationComposer(
            $db: $db,
            $table: $db.locationRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }

  Expression<T> mediaRecordRefs<T extends Object>(
    Expression<T> Function($$MediaRecordTableAnnotationComposer a) f,
  ) {
    final $$MediaRecordTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.mediaRecord,
      getReferencedColumn: (t) => t.recordId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$MediaRecordTableAnnotationComposer(
            $db: $db,
            $table: $db.mediaRecord,
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
            bool projectId,
            bool recordStepRefs,
            bool recordTagRefs,
            bool recordNumericValueRefs,
            bool recordOptionSelectionRefs,
            bool locationRecordRefs,
            bool mediaRecordRefs,
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
                Value<int> projectId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> content = const Value.absent(),
                Value<int?> stepIndex = const Value.absent(),
                Value<bool> isArchived = const Value.absent(),
                Value<bool> isHidden = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => RecordsCompanion(
                id: id,
                projectId: projectId,
                title: title,
                content: content,
                stepIndex: stepIndex,
                isArchived: isArchived,
                isHidden: isHidden,
                updatedAt: updatedAt,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required String title,
                Value<String?> content = const Value.absent(),
                Value<int?> stepIndex = const Value.absent(),
                required bool isArchived,
                required bool isHidden,
                required DateTime updatedAt,
                required DateTime createdAt,
              }) => RecordsCompanion.insert(
                id: id,
                projectId: projectId,
                title: title,
                content: content,
                stepIndex: stepIndex,
                isArchived: isArchived,
                isHidden: isHidden,
                updatedAt: updatedAt,
                createdAt: createdAt,
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
                projectId = false,
                recordStepRefs = false,
                recordTagRefs = false,
                recordNumericValueRefs = false,
                recordOptionSelectionRefs = false,
                locationRecordRefs = false,
                mediaRecordRefs = false,
              }) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordStepRefs) db.recordStep,
                    if (recordTagRefs) db.recordTag,
                    if (recordNumericValueRefs) db.recordNumericValue,
                    if (recordOptionSelectionRefs) db.recordOptionSelection,
                    if (locationRecordRefs) db.locationRecord,
                    if (mediaRecordRefs) db.mediaRecord,
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable: $$RecordsTableReferences
                                        ._projectIdTable(db),
                                    referencedColumn: $$RecordsTableReferences
                                        ._projectIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recordStepRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordStepData
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordStepRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordStepRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordTagRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordTagData
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordTagRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordTagRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordNumericValueRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordNumericValueData
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordNumericValueRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordNumericValueRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (recordOptionSelectionRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          RecordOptionSelectionData
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._recordOptionSelectionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).recordOptionSelectionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (locationRecordRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          LocationRecordData
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._locationRecordRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).locationRecordRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.recordId == item.id,
                              ),
                          typedResults: items,
                        ),
                      if (mediaRecordRefs)
                        await $_getPrefetchedData<
                          Record,
                          $RecordsTable,
                          MediaRecordData
                        >(
                          currentTable: table,
                          referencedTable: $$RecordsTableReferences
                              ._mediaRecordRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$RecordsTableReferences(
                                db,
                                table,
                                p0,
                              ).mediaRecordRefs,
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
        bool projectId,
        bool recordStepRefs,
        bool recordTagRefs,
        bool recordNumericValueRefs,
        bool recordOptionSelectionRefs,
        bool locationRecordRefs,
        bool mediaRecordRefs,
      })
    >;
typedef $$StepDefinitionTableCreateCompanionBuilder =
    StepDefinitionCompanion Function({
      Value<int> id,
      required int projectId,
      required int stepNumber,
      required String title,
      Value<String?> description,
      required bool enableNumericRecord,
      required bool enableOptionRecord,
      required bool enableMediaRecord,
      required DateTime updatedAt,
      required DateTime createdAt,
    });
typedef $$StepDefinitionTableUpdateCompanionBuilder =
    StepDefinitionCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> stepNumber,
      Value<String> title,
      Value<String?> description,
      Value<bool> enableNumericRecord,
      Value<bool> enableOptionRecord,
      Value<bool> enableMediaRecord,
      Value<DateTime> updatedAt,
      Value<DateTime> createdAt,
    });

final class $$StepDefinitionTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $StepDefinitionTable,
          StepDefinitionData
        > {
  $$StepDefinitionTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.stepDefinition.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$RecordStepTable, List<RecordStepData>>
  _recordStepRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordStep,
    aliasName: $_aliasNameGenerator(
      db.stepDefinition.id,
      db.recordStep.stepDefinitionId,
    ),
  );

  $$RecordStepTableProcessedTableManager get recordStepRefs {
    final manager = $$RecordStepTableTableManager(
      $_db,
      $_db.recordStep,
    ).filter((f) => f.stepDefinitionId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordStepRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$StepDefinitionTableFilterComposer
    extends Composer<_$AppDatabase, $StepDefinitionTable> {
  $$StepDefinitionTableFilterComposer({
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

  ColumnFilters<int> get stepNumber => $composableBuilder(
    column: $table.stepNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableNumericRecord => $composableBuilder(
    column: $table.enableNumericRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableOptionRecord => $composableBuilder(
    column: $table.enableOptionRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get enableMediaRecord => $composableBuilder(
    column: $table.enableMediaRecord,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> recordStepRefs(
    Expression<bool> Function($$RecordStepTableFilterComposer f) f,
  ) {
    final $$RecordStepTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStep,
      getReferencedColumn: (t) => t.stepDefinitionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepTableFilterComposer(
            $db: $db,
            $table: $db.recordStep,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StepDefinitionTableOrderingComposer
    extends Composer<_$AppDatabase, $StepDefinitionTable> {
  $$StepDefinitionTableOrderingComposer({
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

  ColumnOrderings<int> get stepNumber => $composableBuilder(
    column: $table.stepNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableNumericRecord => $composableBuilder(
    column: $table.enableNumericRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableOptionRecord => $composableBuilder(
    column: $table.enableOptionRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get enableMediaRecord => $composableBuilder(
    column: $table.enableMediaRecord,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$StepDefinitionTableAnnotationComposer
    extends Composer<_$AppDatabase, $StepDefinitionTable> {
  $$StepDefinitionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get stepNumber => $composableBuilder(
    column: $table.stepNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableNumericRecord => $composableBuilder(
    column: $table.enableNumericRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableOptionRecord => $composableBuilder(
    column: $table.enableOptionRecord,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get enableMediaRecord => $composableBuilder(
    column: $table.enableMediaRecord,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> recordStepRefs<T extends Object>(
    Expression<T> Function($$RecordStepTableAnnotationComposer a) f,
  ) {
    final $$RecordStepTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordStep,
      getReferencedColumn: (t) => t.stepDefinitionId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordStepTableAnnotationComposer(
            $db: $db,
            $table: $db.recordStep,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$StepDefinitionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $StepDefinitionTable,
          StepDefinitionData,
          $$StepDefinitionTableFilterComposer,
          $$StepDefinitionTableOrderingComposer,
          $$StepDefinitionTableAnnotationComposer,
          $$StepDefinitionTableCreateCompanionBuilder,
          $$StepDefinitionTableUpdateCompanionBuilder,
          (StepDefinitionData, $$StepDefinitionTableReferences),
          StepDefinitionData,
          PrefetchHooks Function({bool projectId, bool recordStepRefs})
        > {
  $$StepDefinitionTableTableManager(
    _$AppDatabase db,
    $StepDefinitionTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StepDefinitionTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StepDefinitionTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StepDefinitionTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> stepNumber = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> description = const Value.absent(),
                Value<bool> enableNumericRecord = const Value.absent(),
                Value<bool> enableOptionRecord = const Value.absent(),
                Value<bool> enableMediaRecord = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => StepDefinitionCompanion(
                id: id,
                projectId: projectId,
                stepNumber: stepNumber,
                title: title,
                description: description,
                enableNumericRecord: enableNumericRecord,
                enableOptionRecord: enableOptionRecord,
                enableMediaRecord: enableMediaRecord,
                updatedAt: updatedAt,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int stepNumber,
                required String title,
                Value<String?> description = const Value.absent(),
                required bool enableNumericRecord,
                required bool enableOptionRecord,
                required bool enableMediaRecord,
                required DateTime updatedAt,
                required DateTime createdAt,
              }) => StepDefinitionCompanion.insert(
                id: id,
                projectId: projectId,
                stepNumber: stepNumber,
                title: title,
                description: description,
                enableNumericRecord: enableNumericRecord,
                enableOptionRecord: enableOptionRecord,
                enableMediaRecord: enableMediaRecord,
                updatedAt: updatedAt,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$StepDefinitionTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({projectId = false, recordStepRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (recordStepRefs) db.recordStep],
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
                    if (projectId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.projectId,
                                referencedTable: $$StepDefinitionTableReferences
                                    ._projectIdTable(db),
                                referencedColumn:
                                    $$StepDefinitionTableReferences
                                        ._projectIdTable(db)
                                        .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (recordStepRefs)
                    await $_getPrefetchedData<
                      StepDefinitionData,
                      $StepDefinitionTable,
                      RecordStepData
                    >(
                      currentTable: table,
                      referencedTable: $$StepDefinitionTableReferences
                          ._recordStepRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$StepDefinitionTableReferences(
                            db,
                            table,
                            p0,
                          ).recordStepRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.stepDefinitionId == item.id,
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

typedef $$StepDefinitionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $StepDefinitionTable,
      StepDefinitionData,
      $$StepDefinitionTableFilterComposer,
      $$StepDefinitionTableOrderingComposer,
      $$StepDefinitionTableAnnotationComposer,
      $$StepDefinitionTableCreateCompanionBuilder,
      $$StepDefinitionTableUpdateCompanionBuilder,
      (StepDefinitionData, $$StepDefinitionTableReferences),
      StepDefinitionData,
      PrefetchHooks Function({bool projectId, bool recordStepRefs})
    >;
typedef $$RecordStepTableCreateCompanionBuilder =
    RecordStepCompanion Function({
      Value<int> id,
      required int projectId,
      required int recordId,
      required int stepDefinitionId,
      required int stepNumber,
    });
typedef $$RecordStepTableUpdateCompanionBuilder =
    RecordStepCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> recordId,
      Value<int> stepDefinitionId,
      Value<int> stepNumber,
    });

final class $$RecordStepTableReferences
    extends BaseReferences<_$AppDatabase, $RecordStepTable, RecordStepData> {
  $$RecordStepTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.recordStep.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) => db.records
      .createAlias($_aliasNameGenerator(db.recordStep.recordId, db.records.id));

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

  static $StepDefinitionTable _stepDefinitionIdTable(_$AppDatabase db) =>
      db.stepDefinition.createAlias(
        $_aliasNameGenerator(
          db.recordStep.stepDefinitionId,
          db.stepDefinition.id,
        ),
      );

  $$StepDefinitionTableProcessedTableManager get stepDefinitionId {
    final $_column = $_itemColumn<int>('step_definition_id')!;

    final manager = $$StepDefinitionTableTableManager(
      $_db,
      $_db.stepDefinition,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_stepDefinitionIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordStepTableFilterComposer
    extends Composer<_$AppDatabase, $RecordStepTable> {
  $$RecordStepTableFilterComposer({
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

  ColumnFilters<int> get stepNumber => $composableBuilder(
    column: $table.stepNumber,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
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

  $$StepDefinitionTableFilterComposer get stepDefinitionId {
    final $$StepDefinitionTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stepDefinitionId,
      referencedTable: $db.stepDefinition,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StepDefinitionTableFilterComposer(
            $db: $db,
            $table: $db.stepDefinition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordStepTable> {
  $$RecordStepTableOrderingComposer({
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

  ColumnOrderings<int> get stepNumber => $composableBuilder(
    column: $table.stepNumber,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

  $$StepDefinitionTableOrderingComposer get stepDefinitionId {
    final $$StepDefinitionTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stepDefinitionId,
      referencedTable: $db.stepDefinition,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StepDefinitionTableOrderingComposer(
            $db: $db,
            $table: $db.stepDefinition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordStepTable> {
  $$RecordStepTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get stepNumber => $composableBuilder(
    column: $table.stepNumber,
    builder: (column) => column,
  );

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
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

  $$StepDefinitionTableAnnotationComposer get stepDefinitionId {
    final $$StepDefinitionTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.stepDefinitionId,
      referencedTable: $db.stepDefinition,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$StepDefinitionTableAnnotationComposer(
            $db: $db,
            $table: $db.stepDefinition,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordStepTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordStepTable,
          RecordStepData,
          $$RecordStepTableFilterComposer,
          $$RecordStepTableOrderingComposer,
          $$RecordStepTableAnnotationComposer,
          $$RecordStepTableCreateCompanionBuilder,
          $$RecordStepTableUpdateCompanionBuilder,
          (RecordStepData, $$RecordStepTableReferences),
          RecordStepData,
          PrefetchHooks Function({
            bool projectId,
            bool recordId,
            bool stepDefinitionId,
          })
        > {
  $$RecordStepTableTableManager(_$AppDatabase db, $RecordStepTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordStepTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordStepTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordStepTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<int> stepDefinitionId = const Value.absent(),
                Value<int> stepNumber = const Value.absent(),
              }) => RecordStepCompanion(
                id: id,
                projectId: projectId,
                recordId: recordId,
                stepDefinitionId: stepDefinitionId,
                stepNumber: stepNumber,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int recordId,
                required int stepDefinitionId,
                required int stepNumber,
              }) => RecordStepCompanion.insert(
                id: id,
                projectId: projectId,
                recordId: recordId,
                stepDefinitionId: stepDefinitionId,
                stepNumber: stepNumber,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordStepTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({
                projectId = false,
                recordId = false,
                stepDefinitionId = false,
              }) {
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable: $$RecordStepTableReferences
                                        ._projectIdTable(db),
                                    referencedColumn:
                                        $$RecordStepTableReferences
                                            ._projectIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (recordId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.recordId,
                                    referencedTable: $$RecordStepTableReferences
                                        ._recordIdTable(db),
                                    referencedColumn:
                                        $$RecordStepTableReferences
                                            ._recordIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (stepDefinitionId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.stepDefinitionId,
                                    referencedTable: $$RecordStepTableReferences
                                        ._stepDefinitionIdTable(db),
                                    referencedColumn:
                                        $$RecordStepTableReferences
                                            ._stepDefinitionIdTable(db)
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

typedef $$RecordStepTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordStepTable,
      RecordStepData,
      $$RecordStepTableFilterComposer,
      $$RecordStepTableOrderingComposer,
      $$RecordStepTableAnnotationComposer,
      $$RecordStepTableCreateCompanionBuilder,
      $$RecordStepTableUpdateCompanionBuilder,
      (RecordStepData, $$RecordStepTableReferences),
      RecordStepData,
      PrefetchHooks Function({
        bool projectId,
        bool recordId,
        bool stepDefinitionId,
      })
    >;
typedef $$TagTableCreateCompanionBuilder =
    TagCompanion Function({
      Value<int> id,
      required String title,
      Value<String?> icon,
      Value<String?> colorTheme,
    });
typedef $$TagTableUpdateCompanionBuilder =
    TagCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<String?> icon,
      Value<String?> colorTheme,
    });

final class $$TagTableReferences
    extends BaseReferences<_$AppDatabase, $TagTable, TagData> {
  $$TagTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$RecordTagTable, List<RecordTagData>>
  _recordTagRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.recordTag,
    aliasName: $_aliasNameGenerator(db.tag.id, db.recordTag.tagId),
  );

  $$RecordTagTableProcessedTableManager get recordTagRefs {
    final manager = $$RecordTagTableTableManager(
      $_db,
      $_db.recordTag,
    ).filter((f) => f.tagId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_recordTagRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$TagTableFilterComposer extends Composer<_$AppDatabase, $TagTable> {
  $$TagTableFilterComposer({
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

  ColumnFilters<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> recordTagRefs(
    Expression<bool> Function($$RecordTagTableFilterComposer f) f,
  ) {
    final $$RecordTagTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTag,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagTableFilterComposer(
            $db: $db,
            $table: $db.recordTag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TagTableOrderingComposer extends Composer<_$AppDatabase, $TagTable> {
  $$TagTableOrderingComposer({
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

  ColumnOrderings<String> get icon => $composableBuilder(
    column: $table.icon,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TagTableAnnotationComposer extends Composer<_$AppDatabase, $TagTable> {
  $$TagTableAnnotationComposer({
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

  GeneratedColumn<String> get icon =>
      $composableBuilder(column: $table.icon, builder: (column) => column);

  GeneratedColumn<String> get colorTheme => $composableBuilder(
    column: $table.colorTheme,
    builder: (column) => column,
  );

  Expression<T> recordTagRefs<T extends Object>(
    Expression<T> Function($$RecordTagTableAnnotationComposer a) f,
  ) {
    final $$RecordTagTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordTag,
      getReferencedColumn: (t) => t.tagId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordTagTableAnnotationComposer(
            $db: $db,
            $table: $db.recordTag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$TagTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TagTable,
          TagData,
          $$TagTableFilterComposer,
          $$TagTableOrderingComposer,
          $$TagTableAnnotationComposer,
          $$TagTableCreateCompanionBuilder,
          $$TagTableUpdateCompanionBuilder,
          (TagData, $$TagTableReferences),
          TagData,
          PrefetchHooks Function({bool recordTagRefs})
        > {
  $$TagTableTableManager(_$AppDatabase db, $TagTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TagTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TagTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TagTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> icon = const Value.absent(),
                Value<String?> colorTheme = const Value.absent(),
              }) => TagCompanion(
                id: id,
                title: title,
                icon: icon,
                colorTheme: colorTheme,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                Value<String?> icon = const Value.absent(),
                Value<String?> colorTheme = const Value.absent(),
              }) => TagCompanion.insert(
                id: id,
                title: title,
                icon: icon,
                colorTheme: colorTheme,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (e.readTable(table), $$TagTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({recordTagRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (recordTagRefs) db.recordTag],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (recordTagRefs)
                    await $_getPrefetchedData<
                      TagData,
                      $TagTable,
                      RecordTagData
                    >(
                      currentTable: table,
                      referencedTable: $$TagTableReferences._recordTagRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$TagTableReferences(db, table, p0).recordTagRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.tagId == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$TagTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TagTable,
      TagData,
      $$TagTableFilterComposer,
      $$TagTableOrderingComposer,
      $$TagTableAnnotationComposer,
      $$TagTableCreateCompanionBuilder,
      $$TagTableUpdateCompanionBuilder,
      (TagData, $$TagTableReferences),
      TagData,
      PrefetchHooks Function({bool recordTagRefs})
    >;
typedef $$RecordTagTableCreateCompanionBuilder =
    RecordTagCompanion Function({
      Value<int> id,
      required int projectId,
      required int recordId,
      required int tagId,
    });
typedef $$RecordTagTableUpdateCompanionBuilder =
    RecordTagCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> recordId,
      Value<int> tagId,
    });

final class $$RecordTagTableReferences
    extends BaseReferences<_$AppDatabase, $RecordTagTable, RecordTagData> {
  $$RecordTagTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectTable _projectIdTable(_$AppDatabase db) => db.project
      .createAlias($_aliasNameGenerator(db.recordTag.projectId, db.project.id));

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) => db.records
      .createAlias($_aliasNameGenerator(db.recordTag.recordId, db.records.id));

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

  static $TagTable _tagIdTable(_$AppDatabase db) =>
      db.tag.createAlias($_aliasNameGenerator(db.recordTag.tagId, db.tag.id));

  $$TagTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<int>('tag_id')!;

    final manager = $$TagTableTableManager(
      $_db,
      $_db.tag,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordTagTableFilterComposer
    extends Composer<_$AppDatabase, $RecordTagTable> {
  $$RecordTagTableFilterComposer({
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

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
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

  $$TagTableFilterComposer get tagId {
    final $$TagTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tag,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagTableFilterComposer(
            $db: $db,
            $table: $db.tag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTagTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordTagTable> {
  $$RecordTagTableOrderingComposer({
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

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

  $$TagTableOrderingComposer get tagId {
    final $$TagTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tag,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagTableOrderingComposer(
            $db: $db,
            $table: $db.tag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTagTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordTagTable> {
  $$RecordTagTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
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

  $$TagTableAnnotationComposer get tagId {
    final $$TagTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.tagId,
      referencedTable: $db.tag,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$TagTableAnnotationComposer(
            $db: $db,
            $table: $db.tag,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordTagTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordTagTable,
          RecordTagData,
          $$RecordTagTableFilterComposer,
          $$RecordTagTableOrderingComposer,
          $$RecordTagTableAnnotationComposer,
          $$RecordTagTableCreateCompanionBuilder,
          $$RecordTagTableUpdateCompanionBuilder,
          (RecordTagData, $$RecordTagTableReferences),
          RecordTagData,
          PrefetchHooks Function({bool projectId, bool recordId, bool tagId})
        > {
  $$RecordTagTableTableManager(_$AppDatabase db, $RecordTagTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordTagTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordTagTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordTagTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<int> tagId = const Value.absent(),
              }) => RecordTagCompanion(
                id: id,
                projectId: projectId,
                recordId: recordId,
                tagId: tagId,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int recordId,
                required int tagId,
              }) => RecordTagCompanion.insert(
                id: id,
                projectId: projectId,
                recordId: recordId,
                tagId: tagId,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordTagTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({projectId = false, recordId = false, tagId = false}) {
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable: $$RecordTagTableReferences
                                        ._projectIdTable(db),
                                    referencedColumn: $$RecordTagTableReferences
                                        ._projectIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }
                        if (recordId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.recordId,
                                    referencedTable: $$RecordTagTableReferences
                                        ._recordIdTable(db),
                                    referencedColumn: $$RecordTagTableReferences
                                        ._recordIdTable(db)
                                        .id,
                                  )
                                  as T;
                        }
                        if (tagId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.tagId,
                                    referencedTable: $$RecordTagTableReferences
                                        ._tagIdTable(db),
                                    referencedColumn: $$RecordTagTableReferences
                                        ._tagIdTable(db)
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

typedef $$RecordTagTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordTagTable,
      RecordTagData,
      $$RecordTagTableFilterComposer,
      $$RecordTagTableOrderingComposer,
      $$RecordTagTableAnnotationComposer,
      $$RecordTagTableCreateCompanionBuilder,
      $$RecordTagTableUpdateCompanionBuilder,
      (RecordTagData, $$RecordTagTableReferences),
      RecordTagData,
      PrefetchHooks Function({bool projectId, bool recordId, bool tagId})
    >;
typedef $$NumericFieldTableCreateCompanionBuilder =
    NumericFieldCompanion Function({
      Value<int> id,
      required int projectId,
      required String title,
      Value<String?> unit,
    });
typedef $$NumericFieldTableUpdateCompanionBuilder =
    NumericFieldCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<String> title,
      Value<String?> unit,
    });

final class $$NumericFieldTableReferences
    extends
        BaseReferences<_$AppDatabase, $NumericFieldTable, NumericFieldData> {
  $$NumericFieldTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.numericField.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $RecordNumericValueTable,
    List<RecordNumericValueData>
  >
  _recordNumericValueRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordNumericValue,
        aliasName: $_aliasNameGenerator(
          db.numericField.id,
          db.recordNumericValue.numericFieldId,
        ),
      );

  $$RecordNumericValueTableProcessedTableManager get recordNumericValueRefs {
    final manager = $$RecordNumericValueTableTableManager(
      $_db,
      $_db.recordNumericValue,
    ).filter((f) => f.numericFieldId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordNumericValueRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$NumericFieldTableFilterComposer
    extends Composer<_$AppDatabase, $NumericFieldTable> {
  $$NumericFieldTableFilterComposer({
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

  ColumnFilters<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> recordNumericValueRefs(
    Expression<bool> Function($$RecordNumericValueTableFilterComposer f) f,
  ) {
    final $$RecordNumericValueTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.recordNumericValue,
      getReferencedColumn: (t) => t.numericFieldId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$RecordNumericValueTableFilterComposer(
            $db: $db,
            $table: $db.recordNumericValue,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$NumericFieldTableOrderingComposer
    extends Composer<_$AppDatabase, $NumericFieldTable> {
  $$NumericFieldTableOrderingComposer({
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

  ColumnOrderings<String> get unit => $composableBuilder(
    column: $table.unit,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$NumericFieldTableAnnotationComposer
    extends Composer<_$AppDatabase, $NumericFieldTable> {
  $$NumericFieldTableAnnotationComposer({
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

  GeneratedColumn<String> get unit =>
      $composableBuilder(column: $table.unit, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> recordNumericValueRefs<T extends Object>(
    Expression<T> Function($$RecordNumericValueTableAnnotationComposer a) f,
  ) {
    final $$RecordNumericValueTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordNumericValue,
          getReferencedColumn: (t) => t.numericFieldId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordNumericValueTableAnnotationComposer(
                $db: $db,
                $table: $db.recordNumericValue,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$NumericFieldTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NumericFieldTable,
          NumericFieldData,
          $$NumericFieldTableFilterComposer,
          $$NumericFieldTableOrderingComposer,
          $$NumericFieldTableAnnotationComposer,
          $$NumericFieldTableCreateCompanionBuilder,
          $$NumericFieldTableUpdateCompanionBuilder,
          (NumericFieldData, $$NumericFieldTableReferences),
          NumericFieldData,
          PrefetchHooks Function({bool projectId, bool recordNumericValueRefs})
        > {
  $$NumericFieldTableTableManager(_$AppDatabase db, $NumericFieldTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NumericFieldTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NumericFieldTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NumericFieldTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String?> unit = const Value.absent(),
              }) => NumericFieldCompanion(
                id: id,
                projectId: projectId,
                title: title,
                unit: unit,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required String title,
                Value<String?> unit = const Value.absent(),
              }) => NumericFieldCompanion.insert(
                id: id,
                projectId: projectId,
                title: title,
                unit: unit,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$NumericFieldTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({projectId = false, recordNumericValueRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordNumericValueRefs) db.recordNumericValue,
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable:
                                        $$NumericFieldTableReferences
                                            ._projectIdTable(db),
                                    referencedColumn:
                                        $$NumericFieldTableReferences
                                            ._projectIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recordNumericValueRefs)
                        await $_getPrefetchedData<
                          NumericFieldData,
                          $NumericFieldTable,
                          RecordNumericValueData
                        >(
                          currentTable: table,
                          referencedTable: $$NumericFieldTableReferences
                              ._recordNumericValueRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$NumericFieldTableReferences(
                                db,
                                table,
                                p0,
                              ).recordNumericValueRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.numericFieldId == item.id,
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

typedef $$NumericFieldTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NumericFieldTable,
      NumericFieldData,
      $$NumericFieldTableFilterComposer,
      $$NumericFieldTableOrderingComposer,
      $$NumericFieldTableAnnotationComposer,
      $$NumericFieldTableCreateCompanionBuilder,
      $$NumericFieldTableUpdateCompanionBuilder,
      (NumericFieldData, $$NumericFieldTableReferences),
      NumericFieldData,
      PrefetchHooks Function({bool projectId, bool recordNumericValueRefs})
    >;
typedef $$RecordNumericValueTableCreateCompanionBuilder =
    RecordNumericValueCompanion Function({
      Value<int> id,
      required int projectId,
      required int recordId,
      required int numericFieldId,
      required double value,
    });
typedef $$RecordNumericValueTableUpdateCompanionBuilder =
    RecordNumericValueCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> recordId,
      Value<int> numericFieldId,
      Value<double> value,
    });

final class $$RecordNumericValueTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecordNumericValueTable,
          RecordNumericValueData
        > {
  $$RecordNumericValueTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.recordNumericValue.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.recordNumericValue.recordId, db.records.id),
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

  static $NumericFieldTable _numericFieldIdTable(_$AppDatabase db) =>
      db.numericField.createAlias(
        $_aliasNameGenerator(
          db.recordNumericValue.numericFieldId,
          db.numericField.id,
        ),
      );

  $$NumericFieldTableProcessedTableManager get numericFieldId {
    final $_column = $_itemColumn<int>('numeric_field_id')!;

    final manager = $$NumericFieldTableTableManager(
      $_db,
      $_db.numericField,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_numericFieldIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordNumericValueTableFilterComposer
    extends Composer<_$AppDatabase, $RecordNumericValueTable> {
  $$RecordNumericValueTableFilterComposer({
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

  ColumnFilters<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
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

  $$NumericFieldTableFilterComposer get numericFieldId {
    final $$NumericFieldTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.numericFieldId,
      referencedTable: $db.numericField,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NumericFieldTableFilterComposer(
            $db: $db,
            $table: $db.numericField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordNumericValueTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordNumericValueTable> {
  $$RecordNumericValueTableOrderingComposer({
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

  ColumnOrderings<double> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

  $$NumericFieldTableOrderingComposer get numericFieldId {
    final $$NumericFieldTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.numericFieldId,
      referencedTable: $db.numericField,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NumericFieldTableOrderingComposer(
            $db: $db,
            $table: $db.numericField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordNumericValueTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordNumericValueTable> {
  $$RecordNumericValueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
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

  $$NumericFieldTableAnnotationComposer get numericFieldId {
    final $$NumericFieldTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.numericFieldId,
      referencedTable: $db.numericField,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$NumericFieldTableAnnotationComposer(
            $db: $db,
            $table: $db.numericField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordNumericValueTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordNumericValueTable,
          RecordNumericValueData,
          $$RecordNumericValueTableFilterComposer,
          $$RecordNumericValueTableOrderingComposer,
          $$RecordNumericValueTableAnnotationComposer,
          $$RecordNumericValueTableCreateCompanionBuilder,
          $$RecordNumericValueTableUpdateCompanionBuilder,
          (RecordNumericValueData, $$RecordNumericValueTableReferences),
          RecordNumericValueData,
          PrefetchHooks Function({
            bool projectId,
            bool recordId,
            bool numericFieldId,
          })
        > {
  $$RecordNumericValueTableTableManager(
    _$AppDatabase db,
    $RecordNumericValueTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordNumericValueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$RecordNumericValueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$RecordNumericValueTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<int> numericFieldId = const Value.absent(),
                Value<double> value = const Value.absent(),
              }) => RecordNumericValueCompanion(
                id: id,
                projectId: projectId,
                recordId: recordId,
                numericFieldId: numericFieldId,
                value: value,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int recordId,
                required int numericFieldId,
                required double value,
              }) => RecordNumericValueCompanion.insert(
                id: id,
                projectId: projectId,
                recordId: recordId,
                numericFieldId: numericFieldId,
                value: value,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordNumericValueTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({projectId = false, recordId = false, numericFieldId = false}) {
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable:
                                        $$RecordNumericValueTableReferences
                                            ._projectIdTable(db),
                                    referencedColumn:
                                        $$RecordNumericValueTableReferences
                                            ._projectIdTable(db)
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
                                        $$RecordNumericValueTableReferences
                                            ._recordIdTable(db),
                                    referencedColumn:
                                        $$RecordNumericValueTableReferences
                                            ._recordIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (numericFieldId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.numericFieldId,
                                    referencedTable:
                                        $$RecordNumericValueTableReferences
                                            ._numericFieldIdTable(db),
                                    referencedColumn:
                                        $$RecordNumericValueTableReferences
                                            ._numericFieldIdTable(db)
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

typedef $$RecordNumericValueTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordNumericValueTable,
      RecordNumericValueData,
      $$RecordNumericValueTableFilterComposer,
      $$RecordNumericValueTableOrderingComposer,
      $$RecordNumericValueTableAnnotationComposer,
      $$RecordNumericValueTableCreateCompanionBuilder,
      $$RecordNumericValueTableUpdateCompanionBuilder,
      (RecordNumericValueData, $$RecordNumericValueTableReferences),
      RecordNumericValueData,
      PrefetchHooks Function({
        bool projectId,
        bool recordId,
        bool numericFieldId,
      })
    >;
typedef $$OptionFieldTableCreateCompanionBuilder =
    OptionFieldCompanion Function({
      Value<int> id,
      required int projectId,
      required String title,
      required int optionCount,
      required int maxSelections,
      required String optionsList,
    });
typedef $$OptionFieldTableUpdateCompanionBuilder =
    OptionFieldCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<String> title,
      Value<int> optionCount,
      Value<int> maxSelections,
      Value<String> optionsList,
    });

final class $$OptionFieldTableReferences
    extends BaseReferences<_$AppDatabase, $OptionFieldTable, OptionFieldData> {
  $$OptionFieldTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.optionField.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<
    $RecordOptionSelectionTable,
    List<RecordOptionSelectionData>
  >
  _recordOptionSelectionRefsTable(_$AppDatabase db) =>
      MultiTypedResultKey.fromTable(
        db.recordOptionSelection,
        aliasName: $_aliasNameGenerator(
          db.optionField.id,
          db.recordOptionSelection.optionFieldId,
        ),
      );

  $$RecordOptionSelectionTableProcessedTableManager
  get recordOptionSelectionRefs {
    final manager = $$RecordOptionSelectionTableTableManager(
      $_db,
      $_db.recordOptionSelection,
    ).filter((f) => f.optionFieldId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(
      _recordOptionSelectionRefsTable($_db),
    );
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$OptionFieldTableFilterComposer
    extends Composer<_$AppDatabase, $OptionFieldTable> {
  $$OptionFieldTableFilterComposer({
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

  ColumnFilters<int> get optionCount => $composableBuilder(
    column: $table.optionCount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get maxSelections => $composableBuilder(
    column: $table.maxSelections,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get optionsList => $composableBuilder(
    column: $table.optionsList,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> recordOptionSelectionRefs(
    Expression<bool> Function($$RecordOptionSelectionTableFilterComposer f) f,
  ) {
    final $$RecordOptionSelectionTableFilterComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordOptionSelection,
          getReferencedColumn: (t) => t.optionFieldId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordOptionSelectionTableFilterComposer(
                $db: $db,
                $table: $db.recordOptionSelection,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$OptionFieldTableOrderingComposer
    extends Composer<_$AppDatabase, $OptionFieldTable> {
  $$OptionFieldTableOrderingComposer({
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

  ColumnOrderings<int> get optionCount => $composableBuilder(
    column: $table.optionCount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get maxSelections => $composableBuilder(
    column: $table.maxSelections,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get optionsList => $composableBuilder(
    column: $table.optionsList,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$OptionFieldTableAnnotationComposer
    extends Composer<_$AppDatabase, $OptionFieldTable> {
  $$OptionFieldTableAnnotationComposer({
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

  GeneratedColumn<int> get optionCount => $composableBuilder(
    column: $table.optionCount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get maxSelections => $composableBuilder(
    column: $table.maxSelections,
    builder: (column) => column,
  );

  GeneratedColumn<String> get optionsList => $composableBuilder(
    column: $table.optionsList,
    builder: (column) => column,
  );

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> recordOptionSelectionRefs<T extends Object>(
    Expression<T> Function($$RecordOptionSelectionTableAnnotationComposer a) f,
  ) {
    final $$RecordOptionSelectionTableAnnotationComposer composer =
        $composerBuilder(
          composer: this,
          getCurrentColumn: (t) => t.id,
          referencedTable: $db.recordOptionSelection,
          getReferencedColumn: (t) => t.optionFieldId,
          builder:
              (
                joinBuilder, {
                $addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer,
              }) => $$RecordOptionSelectionTableAnnotationComposer(
                $db: $db,
                $table: $db.recordOptionSelection,
                $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
                joinBuilder: joinBuilder,
                $removeJoinBuilderFromRootComposer:
                    $removeJoinBuilderFromRootComposer,
              ),
        );
    return f(composer);
  }
}

class $$OptionFieldTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OptionFieldTable,
          OptionFieldData,
          $$OptionFieldTableFilterComposer,
          $$OptionFieldTableOrderingComposer,
          $$OptionFieldTableAnnotationComposer,
          $$OptionFieldTableCreateCompanionBuilder,
          $$OptionFieldTableUpdateCompanionBuilder,
          (OptionFieldData, $$OptionFieldTableReferences),
          OptionFieldData,
          PrefetchHooks Function({
            bool projectId,
            bool recordOptionSelectionRefs,
          })
        > {
  $$OptionFieldTableTableManager(_$AppDatabase db, $OptionFieldTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OptionFieldTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OptionFieldTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OptionFieldTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> optionCount = const Value.absent(),
                Value<int> maxSelections = const Value.absent(),
                Value<String> optionsList = const Value.absent(),
              }) => OptionFieldCompanion(
                id: id,
                projectId: projectId,
                title: title,
                optionCount: optionCount,
                maxSelections: maxSelections,
                optionsList: optionsList,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required String title,
                required int optionCount,
                required int maxSelections,
                required String optionsList,
              }) => OptionFieldCompanion.insert(
                id: id,
                projectId: projectId,
                title: title,
                optionCount: optionCount,
                maxSelections: maxSelections,
                optionsList: optionsList,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$OptionFieldTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({projectId = false, recordOptionSelectionRefs = false}) {
                return PrefetchHooks(
                  db: db,
                  explicitlyWatchedTables: [
                    if (recordOptionSelectionRefs) db.recordOptionSelection,
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable:
                                        $$OptionFieldTableReferences
                                            ._projectIdTable(db),
                                    referencedColumn:
                                        $$OptionFieldTableReferences
                                            ._projectIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }

                        return state;
                      },
                  getPrefetchedDataCallback: (items) async {
                    return [
                      if (recordOptionSelectionRefs)
                        await $_getPrefetchedData<
                          OptionFieldData,
                          $OptionFieldTable,
                          RecordOptionSelectionData
                        >(
                          currentTable: table,
                          referencedTable: $$OptionFieldTableReferences
                              ._recordOptionSelectionRefsTable(db),
                          managerFromTypedResult: (p0) =>
                              $$OptionFieldTableReferences(
                                db,
                                table,
                                p0,
                              ).recordOptionSelectionRefs,
                          referencedItemsForCurrentItem:
                              (item, referencedItems) => referencedItems.where(
                                (e) => e.optionFieldId == item.id,
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

typedef $$OptionFieldTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OptionFieldTable,
      OptionFieldData,
      $$OptionFieldTableFilterComposer,
      $$OptionFieldTableOrderingComposer,
      $$OptionFieldTableAnnotationComposer,
      $$OptionFieldTableCreateCompanionBuilder,
      $$OptionFieldTableUpdateCompanionBuilder,
      (OptionFieldData, $$OptionFieldTableReferences),
      OptionFieldData,
      PrefetchHooks Function({bool projectId, bool recordOptionSelectionRefs})
    >;
typedef $$RecordOptionSelectionTableCreateCompanionBuilder =
    RecordOptionSelectionCompanion Function({
      Value<int> id,
      required int projectId,
      required int recordId,
      required int optionFieldId,
      required String selectedOptions,
    });
typedef $$RecordOptionSelectionTableUpdateCompanionBuilder =
    RecordOptionSelectionCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> recordId,
      Value<int> optionFieldId,
      Value<String> selectedOptions,
    });

final class $$RecordOptionSelectionTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $RecordOptionSelectionTable,
          RecordOptionSelectionData
        > {
  $$RecordOptionSelectionTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.recordOptionSelection.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.recordOptionSelection.recordId, db.records.id),
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

  static $OptionFieldTable _optionFieldIdTable(_$AppDatabase db) =>
      db.optionField.createAlias(
        $_aliasNameGenerator(
          db.recordOptionSelection.optionFieldId,
          db.optionField.id,
        ),
      );

  $$OptionFieldTableProcessedTableManager get optionFieldId {
    final $_column = $_itemColumn<int>('option_field_id')!;

    final manager = $$OptionFieldTableTableManager(
      $_db,
      $_db.optionField,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_optionFieldIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$RecordOptionSelectionTableFilterComposer
    extends Composer<_$AppDatabase, $RecordOptionSelectionTable> {
  $$RecordOptionSelectionTableFilterComposer({
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

  ColumnFilters<String> get selectedOptions => $composableBuilder(
    column: $table.selectedOptions,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
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

  $$OptionFieldTableFilterComposer get optionFieldId {
    final $$OptionFieldTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.optionFieldId,
      referencedTable: $db.optionField,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OptionFieldTableFilterComposer(
            $db: $db,
            $table: $db.optionField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordOptionSelectionTableOrderingComposer
    extends Composer<_$AppDatabase, $RecordOptionSelectionTable> {
  $$RecordOptionSelectionTableOrderingComposer({
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

  ColumnOrderings<String> get selectedOptions => $composableBuilder(
    column: $table.selectedOptions,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

  $$OptionFieldTableOrderingComposer get optionFieldId {
    final $$OptionFieldTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.optionFieldId,
      referencedTable: $db.optionField,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OptionFieldTableOrderingComposer(
            $db: $db,
            $table: $db.optionField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordOptionSelectionTableAnnotationComposer
    extends Composer<_$AppDatabase, $RecordOptionSelectionTable> {
  $$RecordOptionSelectionTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get selectedOptions => $composableBuilder(
    column: $table.selectedOptions,
    builder: (column) => column,
  );

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
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

  $$OptionFieldTableAnnotationComposer get optionFieldId {
    final $$OptionFieldTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.optionFieldId,
      referencedTable: $db.optionField,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$OptionFieldTableAnnotationComposer(
            $db: $db,
            $table: $db.optionField,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$RecordOptionSelectionTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $RecordOptionSelectionTable,
          RecordOptionSelectionData,
          $$RecordOptionSelectionTableFilterComposer,
          $$RecordOptionSelectionTableOrderingComposer,
          $$RecordOptionSelectionTableAnnotationComposer,
          $$RecordOptionSelectionTableCreateCompanionBuilder,
          $$RecordOptionSelectionTableUpdateCompanionBuilder,
          (RecordOptionSelectionData, $$RecordOptionSelectionTableReferences),
          RecordOptionSelectionData,
          PrefetchHooks Function({
            bool projectId,
            bool recordId,
            bool optionFieldId,
          })
        > {
  $$RecordOptionSelectionTableTableManager(
    _$AppDatabase db,
    $RecordOptionSelectionTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$RecordOptionSelectionTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$RecordOptionSelectionTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$RecordOptionSelectionTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<int> optionFieldId = const Value.absent(),
                Value<String> selectedOptions = const Value.absent(),
              }) => RecordOptionSelectionCompanion(
                id: id,
                projectId: projectId,
                recordId: recordId,
                optionFieldId: optionFieldId,
                selectedOptions: selectedOptions,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int recordId,
                required int optionFieldId,
                required String selectedOptions,
              }) => RecordOptionSelectionCompanion.insert(
                id: id,
                projectId: projectId,
                recordId: recordId,
                optionFieldId: optionFieldId,
                selectedOptions: selectedOptions,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$RecordOptionSelectionTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback:
              ({projectId = false, recordId = false, optionFieldId = false}) {
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
                        if (projectId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.projectId,
                                    referencedTable:
                                        $$RecordOptionSelectionTableReferences
                                            ._projectIdTable(db),
                                    referencedColumn:
                                        $$RecordOptionSelectionTableReferences
                                            ._projectIdTable(db)
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
                                        $$RecordOptionSelectionTableReferences
                                            ._recordIdTable(db),
                                    referencedColumn:
                                        $$RecordOptionSelectionTableReferences
                                            ._recordIdTable(db)
                                            .id,
                                  )
                                  as T;
                        }
                        if (optionFieldId) {
                          state =
                              state.withJoin(
                                    currentTable: table,
                                    currentColumn: table.optionFieldId,
                                    referencedTable:
                                        $$RecordOptionSelectionTableReferences
                                            ._optionFieldIdTable(db),
                                    referencedColumn:
                                        $$RecordOptionSelectionTableReferences
                                            ._optionFieldIdTable(db)
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

typedef $$RecordOptionSelectionTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $RecordOptionSelectionTable,
      RecordOptionSelectionData,
      $$RecordOptionSelectionTableFilterComposer,
      $$RecordOptionSelectionTableOrderingComposer,
      $$RecordOptionSelectionTableAnnotationComposer,
      $$RecordOptionSelectionTableCreateCompanionBuilder,
      $$RecordOptionSelectionTableUpdateCompanionBuilder,
      (RecordOptionSelectionData, $$RecordOptionSelectionTableReferences),
      RecordOptionSelectionData,
      PrefetchHooks Function({
        bool projectId,
        bool recordId,
        bool optionFieldId,
      })
    >;
typedef $$LocationRecordTableCreateCompanionBuilder =
    LocationRecordCompanion Function({
      Value<int> id,
      required int projectId,
      required int recordId,
      required String locationName,
      required double accuracy,
      required double longitude,
      required double latitude,
      required DateTime createdAt,
    });
typedef $$LocationRecordTableUpdateCompanionBuilder =
    LocationRecordCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> recordId,
      Value<String> locationName,
      Value<double> accuracy,
      Value<double> longitude,
      Value<double> latitude,
      Value<DateTime> createdAt,
    });

final class $$LocationRecordTableReferences
    extends
        BaseReferences<
          _$AppDatabase,
          $LocationRecordTable,
          LocationRecordData
        > {
  $$LocationRecordTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.locationRecord.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.locationRecord.recordId, db.records.id),
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

class $$LocationRecordTableFilterComposer
    extends Composer<_$AppDatabase, $LocationRecordTable> {
  $$LocationRecordTableFilterComposer({
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

  ColumnFilters<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
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

class $$LocationRecordTableOrderingComposer
    extends Composer<_$AppDatabase, $LocationRecordTable> {
  $$LocationRecordTableOrderingComposer({
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

  ColumnOrderings<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get accuracy => $composableBuilder(
    column: $table.accuracy,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get longitude => $composableBuilder(
    column: $table.longitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get latitude => $composableBuilder(
    column: $table.latitude,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

class $$LocationRecordTableAnnotationComposer
    extends Composer<_$AppDatabase, $LocationRecordTable> {
  $$LocationRecordTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get locationName => $composableBuilder(
    column: $table.locationName,
    builder: (column) => column,
  );

  GeneratedColumn<double> get accuracy =>
      $composableBuilder(column: $table.accuracy, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
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

class $$LocationRecordTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $LocationRecordTable,
          LocationRecordData,
          $$LocationRecordTableFilterComposer,
          $$LocationRecordTableOrderingComposer,
          $$LocationRecordTableAnnotationComposer,
          $$LocationRecordTableCreateCompanionBuilder,
          $$LocationRecordTableUpdateCompanionBuilder,
          (LocationRecordData, $$LocationRecordTableReferences),
          LocationRecordData,
          PrefetchHooks Function({bool projectId, bool recordId})
        > {
  $$LocationRecordTableTableManager(
    _$AppDatabase db,
    $LocationRecordTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LocationRecordTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LocationRecordTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LocationRecordTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<String> locationName = const Value.absent(),
                Value<double> accuracy = const Value.absent(),
                Value<double> longitude = const Value.absent(),
                Value<double> latitude = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => LocationRecordCompanion(
                id: id,
                projectId: projectId,
                recordId: recordId,
                locationName: locationName,
                accuracy: accuracy,
                longitude: longitude,
                latitude: latitude,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int recordId,
                required String locationName,
                required double accuracy,
                required double longitude,
                required double latitude,
                required DateTime createdAt,
              }) => LocationRecordCompanion.insert(
                id: id,
                projectId: projectId,
                recordId: recordId,
                locationName: locationName,
                accuracy: accuracy,
                longitude: longitude,
                latitude: latitude,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$LocationRecordTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({projectId = false, recordId = false}) {
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
                    if (projectId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.projectId,
                                referencedTable: $$LocationRecordTableReferences
                                    ._projectIdTable(db),
                                referencedColumn:
                                    $$LocationRecordTableReferences
                                        ._projectIdTable(db)
                                        .id,
                              )
                              as T;
                    }
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable: $$LocationRecordTableReferences
                                    ._recordIdTable(db),
                                referencedColumn:
                                    $$LocationRecordTableReferences
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

typedef $$LocationRecordTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $LocationRecordTable,
      LocationRecordData,
      $$LocationRecordTableFilterComposer,
      $$LocationRecordTableOrderingComposer,
      $$LocationRecordTableAnnotationComposer,
      $$LocationRecordTableCreateCompanionBuilder,
      $$LocationRecordTableUpdateCompanionBuilder,
      (LocationRecordData, $$LocationRecordTableReferences),
      LocationRecordData,
      PrefetchHooks Function({bool projectId, bool recordId})
    >;
typedef $$MediaRecordTableCreateCompanionBuilder =
    MediaRecordCompanion Function({
      Value<int> id,
      required int projectId,
      required int recordId,
      required String storageRootDir,
      required String storageDir,
      required String metadata,
      required DateTime createdAt,
    });
typedef $$MediaRecordTableUpdateCompanionBuilder =
    MediaRecordCompanion Function({
      Value<int> id,
      Value<int> projectId,
      Value<int> recordId,
      Value<String> storageRootDir,
      Value<String> storageDir,
      Value<String> metadata,
      Value<DateTime> createdAt,
    });

final class $$MediaRecordTableReferences
    extends BaseReferences<_$AppDatabase, $MediaRecordTable, MediaRecordData> {
  $$MediaRecordTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProjectTable _projectIdTable(_$AppDatabase db) =>
      db.project.createAlias(
        $_aliasNameGenerator(db.mediaRecord.projectId, db.project.id),
      );

  $$ProjectTableProcessedTableManager get projectId {
    final $_column = $_itemColumn<int>('project_id')!;

    final manager = $$ProjectTableTableManager(
      $_db,
      $_db.project,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_projectIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $RecordsTable _recordIdTable(_$AppDatabase db) =>
      db.records.createAlias(
        $_aliasNameGenerator(db.mediaRecord.recordId, db.records.id),
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

class $$MediaRecordTableFilterComposer
    extends Composer<_$AppDatabase, $MediaRecordTable> {
  $$MediaRecordTableFilterComposer({
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

  ColumnFilters<String> get storageRootDir => $composableBuilder(
    column: $table.storageRootDir,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get storageDir => $composableBuilder(
    column: $table.storageDir,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get metadata => $composableBuilder(
    column: $table.metadata,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  $$ProjectTableFilterComposer get projectId {
    final $$ProjectTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableFilterComposer(
            $db: $db,
            $table: $db.project,
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

class $$MediaRecordTableOrderingComposer
    extends Composer<_$AppDatabase, $MediaRecordTable> {
  $$MediaRecordTableOrderingComposer({
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

  ColumnOrderings<String> get storageRootDir => $composableBuilder(
    column: $table.storageRootDir,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get storageDir => $composableBuilder(
    column: $table.storageDir,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get metadata => $composableBuilder(
    column: $table.metadata,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  $$ProjectTableOrderingComposer get projectId {
    final $$ProjectTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableOrderingComposer(
            $db: $db,
            $table: $db.project,
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

class $$MediaRecordTableAnnotationComposer
    extends Composer<_$AppDatabase, $MediaRecordTable> {
  $$MediaRecordTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get storageRootDir => $composableBuilder(
    column: $table.storageRootDir,
    builder: (column) => column,
  );

  GeneratedColumn<String> get storageDir => $composableBuilder(
    column: $table.storageDir,
    builder: (column) => column,
  );

  GeneratedColumn<String> get metadata =>
      $composableBuilder(column: $table.metadata, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  $$ProjectTableAnnotationComposer get projectId {
    final $$ProjectTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.projectId,
      referencedTable: $db.project,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ProjectTableAnnotationComposer(
            $db: $db,
            $table: $db.project,
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

class $$MediaRecordTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $MediaRecordTable,
          MediaRecordData,
          $$MediaRecordTableFilterComposer,
          $$MediaRecordTableOrderingComposer,
          $$MediaRecordTableAnnotationComposer,
          $$MediaRecordTableCreateCompanionBuilder,
          $$MediaRecordTableUpdateCompanionBuilder,
          (MediaRecordData, $$MediaRecordTableReferences),
          MediaRecordData,
          PrefetchHooks Function({bool projectId, bool recordId})
        > {
  $$MediaRecordTableTableManager(_$AppDatabase db, $MediaRecordTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MediaRecordTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MediaRecordTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MediaRecordTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> projectId = const Value.absent(),
                Value<int> recordId = const Value.absent(),
                Value<String> storageRootDir = const Value.absent(),
                Value<String> storageDir = const Value.absent(),
                Value<String> metadata = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => MediaRecordCompanion(
                id: id,
                projectId: projectId,
                recordId: recordId,
                storageRootDir: storageRootDir,
                storageDir: storageDir,
                metadata: metadata,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int projectId,
                required int recordId,
                required String storageRootDir,
                required String storageDir,
                required String metadata,
                required DateTime createdAt,
              }) => MediaRecordCompanion.insert(
                id: id,
                projectId: projectId,
                recordId: recordId,
                storageRootDir: storageRootDir,
                storageDir: storageDir,
                metadata: metadata,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$MediaRecordTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({projectId = false, recordId = false}) {
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
                    if (projectId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.projectId,
                                referencedTable: $$MediaRecordTableReferences
                                    ._projectIdTable(db),
                                referencedColumn: $$MediaRecordTableReferences
                                    ._projectIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (recordId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.recordId,
                                referencedTable: $$MediaRecordTableReferences
                                    ._recordIdTable(db),
                                referencedColumn: $$MediaRecordTableReferences
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

typedef $$MediaRecordTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $MediaRecordTable,
      MediaRecordData,
      $$MediaRecordTableFilterComposer,
      $$MediaRecordTableOrderingComposer,
      $$MediaRecordTableAnnotationComposer,
      $$MediaRecordTableCreateCompanionBuilder,
      $$MediaRecordTableUpdateCompanionBuilder,
      (MediaRecordData, $$MediaRecordTableReferences),
      MediaRecordData,
      PrefetchHooks Function({bool projectId, bool recordId})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CategoryTableTableManager get category =>
      $$CategoryTableTableManager(_db, _db.category);
  $$ProjectTableTableManager get project =>
      $$ProjectTableTableManager(_db, _db.project);
  $$RecordsTableTableManager get records =>
      $$RecordsTableTableManager(_db, _db.records);
  $$StepDefinitionTableTableManager get stepDefinition =>
      $$StepDefinitionTableTableManager(_db, _db.stepDefinition);
  $$RecordStepTableTableManager get recordStep =>
      $$RecordStepTableTableManager(_db, _db.recordStep);
  $$TagTableTableManager get tag => $$TagTableTableManager(_db, _db.tag);
  $$RecordTagTableTableManager get recordTag =>
      $$RecordTagTableTableManager(_db, _db.recordTag);
  $$NumericFieldTableTableManager get numericField =>
      $$NumericFieldTableTableManager(_db, _db.numericField);
  $$RecordNumericValueTableTableManager get recordNumericValue =>
      $$RecordNumericValueTableTableManager(_db, _db.recordNumericValue);
  $$OptionFieldTableTableManager get optionField =>
      $$OptionFieldTableTableManager(_db, _db.optionField);
  $$RecordOptionSelectionTableTableManager get recordOptionSelection =>
      $$RecordOptionSelectionTableTableManager(_db, _db.recordOptionSelection);
  $$LocationRecordTableTableManager get locationRecord =>
      $$LocationRecordTableTableManager(_db, _db.locationRecord);
  $$MediaRecordTableTableManager get mediaRecord =>
      $$MediaRecordTableTableManager(_db, _db.mediaRecord);
}
