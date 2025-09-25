// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Task> _$TaskFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Task(
    id: data['id'] as String,
    home: await HomeAdapter().fromSupabase(
      data['home'],
      provider: provider,
      repository: repository,
    ),
    title: data['title'] as String,
    description: data['description'] == null
        ? null
        : data['description'] as String?,
    createdBy: await UserAdapter().fromSupabase(
      data['created_by'],
      provider: provider,
      repository: repository,
    ),
    status: TaskStatus.values.byName(data['status']),
    dueDate: data['due_date'] == null
        ? null
        : data['due_date'] == null
        ? null
        : DateTime.tryParse(data['due_date'] as String),
    priority: Priority.values.byName(data['priority']),
    startDate: data['start_date'] == null
        ? null
        : data['start_date'] == null
        ? null
        : DateTime.tryParse(data['start_date'] as String),
    estimatedDurationMinutes: data['estimated_duration_minutes'] == null
        ? null
        : data['estimated_duration_minutes'] as int?,
    location: data['location'] == null ? null : data['location'] as String?,
    tags: data['tags'].toList().cast<String>(),
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: DateTime.parse(data['updated_at'] as String),
  );
}

Future<Map<String, dynamic>> _$TaskToSupabase(
  Task instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'home': await HomeAdapter().toSupabase(
      instance.home,
      provider: provider,
      repository: repository,
    ),
    'home_id': instance.homeId,
    'title': instance.title,
    'description': instance.description,
    'created_by': await UserAdapter().toSupabase(
      instance.createdBy,
      provider: provider,
      repository: repository,
    ),
    'created_by_id': instance.createdById,
    'status': instance.status.name,
    'due_date': instance.dueDate?.toIso8601String(),
    'priority': instance.priority.name,
    'start_date': instance.startDate?.toIso8601String(),
    'estimated_duration_minutes': instance.estimatedDurationMinutes,
    'location': instance.location,
    'tags': instance.tags,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };
}

Future<Task> _$TaskFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Task(
    id: data['id'] as String,
    home: (await repository!.getAssociation<Home>(
      Query.where(
        'primaryKey',
        data['home_Home_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    title: data['title'] as String,
    description: data['description'] == null
        ? null
        : data['description'] as String?,
    createdBy: (await repository.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['created_by_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    status: TaskStatus.values[data['status'] as int],
    dueDate: data['due_date'] == null
        ? null
        : data['due_date'] == null
        ? null
        : DateTime.tryParse(data['due_date'] as String),
    priority: Priority.values[data['priority'] as int],
    startDate: data['start_date'] == null
        ? null
        : data['start_date'] == null
        ? null
        : DateTime.tryParse(data['start_date'] as String),
    estimatedDurationMinutes: data['estimated_duration_minutes'] == null
        ? null
        : data['estimated_duration_minutes'] as int?,
    location: data['location'] == null ? null : data['location'] as String?,
    tags: jsonDecode(data['tags']).toList().cast<String>(),
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: DateTime.parse(data['updated_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$TaskToSqlite(
  Task instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'home_Home_brick_id':
        instance.home.primaryKey ??
        await provider.upsert<Home>(instance.home, repository: repository),
    'title': instance.title,
    'description': instance.description,
    'created_by_User_brick_id':
        instance.createdBy.primaryKey ??
        await provider.upsert<User>(instance.createdBy, repository: repository),
    'status': TaskStatus.values.indexOf(instance.status),
    'due_date': instance.dueDate?.toIso8601String(),
    'priority': Priority.values.indexOf(instance.priority),
    'start_date': instance.startDate?.toIso8601String(),
    'estimated_duration_minutes': instance.estimatedDurationMinutes,
    'location': instance.location,
    'tags': jsonEncode(instance.tags),
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };
}

/// Construct a [Task]
class TaskAdapter extends OfflineFirstWithSupabaseAdapter<Task> {
  TaskAdapter();

  @override
  final supabaseTableName = 'tasks';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'home': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'home',
      associationType: Home,
      associationIsNullable: false,
      foreignKey: 'home_id',
    ),
    'homeId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'home_id',
    ),
    'title': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'title',
    ),
    'description': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'description',
    ),
    'createdBy': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'created_by',
      associationType: User,
      associationIsNullable: false,
      foreignKey: 'created_by_id',
    ),
    'createdById': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'created_by_id',
    ),
    'status': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'status',
    ),
    'dueDate': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'due_date',
    ),
    'priority': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'priority',
    ),
    'startDate': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'start_date',
    ),
    'estimatedDurationMinutes': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'estimated_duration_minutes',
    ),
    'location': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'location',
    ),
    'tags': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'tags',
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
    'home': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'home_Home_brick_id',
      iterable: false,
      type: Home,
    ),
    'title': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'title',
      iterable: false,
      type: String,
    ),
    'description': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'description',
      iterable: false,
      type: String,
    ),
    'createdBy': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'created_by_User_brick_id',
      iterable: false,
      type: User,
    ),
    'status': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'status',
      iterable: false,
      type: TaskStatus,
    ),
    'dueDate': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'due_date',
      iterable: false,
      type: DateTime,
    ),
    'priority': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'priority',
      iterable: false,
      type: Priority,
    ),
    'startDate': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'start_date',
      iterable: false,
      type: DateTime,
    ),
    'estimatedDurationMinutes': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'estimated_duration_minutes',
      iterable: false,
      type: int,
    ),
    'location': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'location',
      iterable: false,
      type: String,
    ),
    'tags': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'tags',
      iterable: true,
      type: String,
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
    Task instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `Task` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Task';

  @override
  Future<Task> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$TaskFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    Task input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$TaskToSupabase(input, provider: provider, repository: repository);
  @override
  Future<Task> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$TaskFromSqlite(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(
    Task input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$TaskToSqlite(input, provider: provider, repository: repository);
}
