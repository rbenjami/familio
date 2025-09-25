// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<TaskAssignee> _$TaskAssigneeFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return TaskAssignee(
    id: data['id'] as String,
    task: await TaskAdapter().fromSupabase(
      data['task'],
      provider: provider,
      repository: repository,
    ),
    user: await UserAdapter().fromSupabase(
      data['user'],
      provider: provider,
      repository: repository,
    ),
    assignedAt: DateTime.parse(data['assigned_at'] as String),
  );
}

Future<Map<String, dynamic>> _$TaskAssigneeToSupabase(
  TaskAssignee instance, {
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
    'user': await UserAdapter().toSupabase(
      instance.user,
      provider: provider,
      repository: repository,
    ),
    'user_id': instance.userId,
    'assigned_at': instance.assignedAt.toIso8601String(),
  };
}

Future<TaskAssignee> _$TaskAssigneeFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return TaskAssignee(
    id: data['id'] as String,
    task: (await repository!.getAssociation<Task>(
      Query.where(
        'primaryKey',
        data['task_Task_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    user: (await repository.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['user_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    assignedAt: DateTime.parse(data['assigned_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$TaskAssigneeToSqlite(
  TaskAssignee instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'task_Task_brick_id':
        instance.task.primaryKey ??
        await provider.upsert<Task>(instance.task, repository: repository),
    'user_User_brick_id':
        instance.user.primaryKey ??
        await provider.upsert<User>(instance.user, repository: repository),
    'assigned_at': instance.assignedAt.toIso8601String(),
  };
}

/// Construct a [TaskAssignee]
class TaskAssigneeAdapter
    extends OfflineFirstWithSupabaseAdapter<TaskAssignee> {
  TaskAssigneeAdapter();

  @override
  final supabaseTableName = 'task_assignees';
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
    'user': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'user',
      associationType: User,
      associationIsNullable: false,
      foreignKey: 'user_id',
    ),
    'userId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user_id',
    ),
    'assignedAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'assigned_at',
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
    'user': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'user_User_brick_id',
      iterable: false,
      type: User,
    ),
    'assignedAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'assigned_at',
      iterable: false,
      type: DateTime,
    ),
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
    TaskAssignee instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `TaskAssignee` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'TaskAssignee';

  @override
  Future<TaskAssignee> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$TaskAssigneeFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    TaskAssignee input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$TaskAssigneeToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<TaskAssignee> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$TaskAssigneeFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    TaskAssignee input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$TaskAssigneeToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
