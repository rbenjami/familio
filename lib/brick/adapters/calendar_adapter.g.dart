// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Calendar> _$CalendarFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Calendar(
    id: data['id'] as String,
    user: await UserAdapter().fromSupabase(
      data['user'],
      provider: provider,
      repository: repository,
    ),
    name: data['name'] as String,
    isVisibleInHome: data['is_visible_in_home'] as bool,
    color: data['color'] as String,
    calendarType: CalendarType.values.byName(data['calendar_type']),
    externalId: data['external_id'] == null
        ? null
        : data['external_id'] as String?,
    accessToken: data['access_token'] == null
        ? null
        : data['access_token'] as String?,
    refreshToken: data['refresh_token'] == null
        ? null
        : data['refresh_token'] as String?,
    lastSyncAt: data['last_sync_at'] == null
        ? null
        : data['last_sync_at'] == null
        ? null
        : DateTime.tryParse(data['last_sync_at'] as String),
    syncEnabled: data['sync_enabled'] as bool,
    home: data['home'] == null
        ? null
        : await HomeAdapter().fromSupabase(
            data['home'],
            provider: provider,
            repository: repository,
          ),
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: DateTime.parse(data['updated_at'] as String),
  );
}

Future<Map<String, dynamic>> _$CalendarToSupabase(
  Calendar instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'user': await UserAdapter().toSupabase(
      instance.user,
      provider: provider,
      repository: repository,
    ),
    'user_id': instance.userId,
    'name': instance.name,
    'is_visible_in_home': instance.isVisibleInHome,
    'color': instance.color,
    'calendar_type': instance.calendarType.name,
    'external_id': instance.externalId,
    'access_token': instance.accessToken,
    'refresh_token': instance.refreshToken,
    'last_sync_at': instance.lastSyncAt?.toIso8601String(),
    'sync_enabled': instance.syncEnabled,
    'home': instance.home != null
        ? await HomeAdapter().toSupabase(
            instance.home!,
            provider: provider,
            repository: repository,
          )
        : null,
    'home_id': instance.homeId,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };
}

Future<Calendar> _$CalendarFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Calendar(
    id: data['id'] as String,
    user: (await repository!.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['user_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    name: data['name'] as String,
    isVisibleInHome: data['is_visible_in_home'] == 1,
    color: data['color'] as String,
    calendarType: CalendarType.values[data['calendar_type'] as int],
    externalId: data['external_id'] == null
        ? null
        : data['external_id'] as String?,
    accessToken: data['access_token'] == null
        ? null
        : data['access_token'] as String?,
    refreshToken: data['refresh_token'] == null
        ? null
        : data['refresh_token'] as String?,
    lastSyncAt: data['last_sync_at'] == null
        ? null
        : data['last_sync_at'] == null
        ? null
        : DateTime.tryParse(data['last_sync_at'] as String),
    syncEnabled: data['sync_enabled'] == 1,
    home: data['home_Home_brick_id'] == null
        ? null
        : (data['home_Home_brick_id'] > -1
              ? (await repository.getAssociation<Home>(
                  Query.where(
                    'primaryKey',
                    data['home_Home_brick_id'] as int,
                    limit1: true,
                  ),
                ))?.first
              : null),
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: DateTime.parse(data['updated_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$CalendarToSqlite(
  Calendar instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'user_User_brick_id':
        instance.user.primaryKey ??
        await provider.upsert<User>(instance.user, repository: repository),
    'name': instance.name,
    'is_visible_in_home': instance.isVisibleInHome ? 1 : 0,
    'color': instance.color,
    'calendar_type': CalendarType.values.indexOf(instance.calendarType),
    'external_id': instance.externalId,
    'access_token': instance.accessToken,
    'refresh_token': instance.refreshToken,
    'last_sync_at': instance.lastSyncAt?.toIso8601String(),
    'sync_enabled': instance.syncEnabled ? 1 : 0,
    'home_Home_brick_id': instance.home != null
        ? instance.home!.primaryKey ??
              await provider.upsert<Home>(
                instance.home!,
                repository: repository,
              )
        : null,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };
}

/// Construct a [Calendar]
class CalendarAdapter extends OfflineFirstWithSupabaseAdapter<Calendar> {
  CalendarAdapter();

  @override
  final supabaseTableName = 'calendars';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
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
    'name': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'name',
    ),
    'isVisibleInHome': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'is_visible_in_home',
    ),
    'color': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'color',
    ),
    'calendarType': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'calendar_type',
    ),
    'externalId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'external_id',
    ),
    'accessToken': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'access_token',
    ),
    'refreshToken': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'refresh_token',
    ),
    'lastSyncAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'last_sync_at',
    ),
    'syncEnabled': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'sync_enabled',
    ),
    'home': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'home',
      associationType: Home,
      associationIsNullable: true,
      foreignKey: 'home_id',
    ),
    'homeId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'home_id',
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
    'user': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'user_User_brick_id',
      iterable: false,
      type: User,
    ),
    'name': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'name',
      iterable: false,
      type: String,
    ),
    'isVisibleInHome': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'is_visible_in_home',
      iterable: false,
      type: bool,
    ),
    'color': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'color',
      iterable: false,
      type: String,
    ),
    'calendarType': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'calendar_type',
      iterable: false,
      type: CalendarType,
    ),
    'externalId': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'external_id',
      iterable: false,
      type: String,
    ),
    'accessToken': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'access_token',
      iterable: false,
      type: String,
    ),
    'refreshToken': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'refresh_token',
      iterable: false,
      type: String,
    ),
    'lastSyncAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'last_sync_at',
      iterable: false,
      type: DateTime,
    ),
    'syncEnabled': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'sync_enabled',
      iterable: false,
      type: bool,
    ),
    'home': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'home_Home_brick_id',
      iterable: false,
      type: Home,
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
    Calendar instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `Calendar` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Calendar';

  @override
  Future<Calendar> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$CalendarFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    Calendar input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$CalendarToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Calendar> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$CalendarFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    Calendar input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$CalendarToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
