#!/bin/bash

# Script to fix remaining DAO files

# Function to fix a single DAO file
fix_dao_file() {
    local file=$1
    local table_name=$2
    local companion_name=$3
    local data_name=$4

    echo "Fixing $file..."

    # Create backup
    cp "$file" "${file}.backup"

    # Process the file
    sed -i "s/impl\?ements BaseDao<$table_name, int> {/impl\?ements BaseDao<$table_name, int, $companion_name> {/" "$file"
    sed -i "/class $(basename "$file" .dart | sed 's/_dao//g' | sed 's/^\(.\)/\U\1/') extends DatabaseAccessor<AppDatabase> with _\$/a \    \n  @override\n  AppDatabase get db => this.db;\n" "$file"
    
    # Add findAllRaw method
    sed -i "/@override\n  Future<List<${data_name}>> findAll() {/i \    @override\n    Future<List<Map<String, dynamic>>> findAllRaw() {\n      return select(${table_name:0:1}${table_name:1}..orderBy([(t) => OrderingTerm(expression: t.id)])).get().then((list) => list.map((item) => item.toJson()).toList());\n    }\n\n    @override" "$file"
    sed -i "s/return select(${table_name:0:1}${table_name:1})\.get();/return select(${table_name:0:1}${table_name:1}).get();/" "$file"
    
    # Fix update method
    sed -i "s/@override\n  Future<int> update(${companion_name} data) {/@override\n  Future<int> update(int id, ${companion_name} data) {/" "$file"
    sed -i "s/return (update(${table_name:0:1}${table_name:1})..where((tbl) => tbl.id.equals(data.id.value))).write(data);/return (update(${table_name:0:1}${table_name:1})..where((tbl) => tbl.id.equals(id))).write(data);/" "$file"
}

# Fix each remaining DAO file
fix_dao_file "lib/dao/record_values_dao.dart" "RecordValues" "RecordValuesCompanion" "RecordValuesData"
fix_dao_file "lib/dao/location_configs_dao.dart" "LocationConfigs" "LocationConfigsCompanion" "LocationConfigsData"
fix_dao_file "lib/dao/photo_configs_dao.dart" "PhotoConfigs" "PhotoConfigsCompanion" "PhotoConfigsData"
fix_dao_file "lib/dao/record_step_configs_dao.dart" "RecordStepConfigs" "RecordStepConfigsCompanion" "RecordStepConfigsData"
fix_dao_file "lib/dao/record_type_configs_dao.dart" "RecordTypeConfigs" "RecordTypeConfigsCompanion" "RecordTypeConfigsData"
fix_dao_file "lib/dao/record_value_configs_dao.dart" "RecordValueConfigs" "RecordValueConfigsCompanion" "RecordValueConfigsData"
fix_dao_file "lib/dao/tag_configs_dao.dart" "TagConfigs" "TagConfigsCompanion" "TagConfigsData"

echo "All DAO files have been fixed!"