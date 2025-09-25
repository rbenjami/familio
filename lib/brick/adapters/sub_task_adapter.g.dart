// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<SubTask> _$SubTaskFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return SubTask(
    id: data['id'] as String,
    task: await TaskAdapter().fromSupabase(
      data['task'],
      provider: provider,
      repository: repository,
    ),
    title: data['title'] as String,
    isCompleted: data['is_completed'] as bool,
    orderIndex: data['order_index'] as int,
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: data['updated_at'] == null
        ? null
        : data['updated_at'] == null
        ? null
        : DateTime.tryParse(data['updated_at'] as String),
  );
}

Future<Map<String, dynamic>> _$SubTaskToSupabase(
  SubTask instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'task': await TaskAdapter().toSupabase(
      instance.task,
      provider: provider,
      repository: repository,
    ),
    'task_id': instance.taskId,
    'title': instance.title,
    'is_completed': instance.isCompleted,
    'order_index': instance.orderIndex,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt?.toIso8601String(),
  };
}

Future<SubTask> _$SubTaskFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return SubTask(
    id: data['id'] as String,
    task: (await repository!.getAssociation<Task>(
      Query.where(
        'primaryKey',
        data['task_Task_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    title: data['title'] as String,
    isCompleted: data['is_completed'] == 1,
    orderIndex: data['order_index'] as int,
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: data['updated_at'] == null
        ? null
        : data['updated_at'] == null
        ? null
        : DateTime.tryParse(data['updated_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$SubTaskToSqlite(
  SubTask instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'task_Task_brick_id':
        instance.task.primaryKey ??
        await provider.upsert<Task>(instance.task, repository: repository),
    'title': instance.title,
    'is_completed': instance.isCompleted ? 1 : 0,
    'order_index': instance.orderIndex,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt?.toIso8601String(),
  };
}

/// Construct a [SubTask]
class SubTaskAdapter extends OfflineFirstWithSupabaseAdapter<SubTask> {
  SubTaskAdapter();

  @override
  final supabaseTableName = 'sub_tasks';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'task': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'task',
      associationType: Task,
      associationIsNullable: false,
      foreignKey: 'task_id',
    ),
    'taskId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'task_id',
    ),
    'title': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'title',
    ),
    'isCompleted': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'is_completed',
    ),
    'orderIndex': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'order_index',
    ),
    'createdAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'created_at',
    ),
    'updatedAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'updated_at',
    ),
  };
  @override
  final ignoreDuplicates = false;
  @override
  final uniqueFields = {'id'};
  @override
  final Map<String, RuntimeSqliteColumnDefinition> fieldsToSqliteColumns = {
    'primaryKey': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: '_brick_id',
      iterable: false,
      type: int,
    ),
    'id': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'id',
      iterable: false,
      type: String,
    ),
    'task': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'task_Task_brick_id',
      iterable: false,
      type: Task,
    ),
    'title': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'title',
      iterable: false,
      type: String,
    ),
    'isCompleted': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'is_completed',
      iterable: false,
      type: bool,
    ),
    'orderIndex': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'order_index',
      iterable: false,
      type: int,
    ),
    'createdAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'created_at',
      iterable: false,
      type: DateTime,
    ),
    'updatedAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'updated_at',
      iterable: false,
      type: DateTime,
    ),
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
    SubTask instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `SubTask` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'SubTask';

  @override
  Future<SubTask> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$SubTaskFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    SubTask input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$SubTaskToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<SubTask> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$SubTaskFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    SubTask input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$SubTaskToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
