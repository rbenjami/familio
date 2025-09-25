// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<HomeMember> _$HomeMemberFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return HomeMember(
    id: data['id'] as String,
    home: await HomeAdapter().fromSupabase(
      data['home'],
      provider: provider,
      repository: repository,
    ),
    user: await UserAdapter().fromSupabase(
      data['user'],
      provider: provider,
      repository: repository,
    ),
    canCreateTasks: data['can_create_tasks'] as bool,
    canEditTasks: data['can_edit_tasks'] as bool,
    canDeleteTasks: data['can_delete_tasks'] as bool,
    canInviteMembers: data['can_invite_members'] as bool,
    canViewAllCalendars: data['can_view_all_calendars'] as bool,
    isAdmin: data['is_admin'] as bool,
    joinedAt: DateTime.parse(data['joined_at'] as String),
  );
}

Future<Map<String, dynamic>> _$HomeMemberToSupabase(
  HomeMember instance, {
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
    'user': await UserAdapter().toSupabase(
      instance.user,
      provider: provider,
      repository: repository,
    ),
    'user_id': instance.userId,
    'can_create_tasks': instance.canCreateTasks,
    'can_edit_tasks': instance.canEditTasks,
    'can_delete_tasks': instance.canDeleteTasks,
    'can_invite_members': instance.canInviteMembers,
    'can_view_all_calendars': instance.canViewAllCalendars,
    'is_admin': instance.isAdmin,
    'joined_at': instance.joinedAt.toIso8601String(),
  };
}

Future<HomeMember> _$HomeMemberFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return HomeMember(
    id: data['id'] as String,
    home: (await repository!.getAssociation<Home>(
      Query.where(
        'primaryKey',
        data['home_Home_brick_id'] as int,
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
    canCreateTasks: data['can_create_tasks'] == 1,
    canEditTasks: data['can_edit_tasks'] == 1,
    canDeleteTasks: data['can_delete_tasks'] == 1,
    canInviteMembers: data['can_invite_members'] == 1,
    canViewAllCalendars: data['can_view_all_calendars'] == 1,
    isAdmin: data['is_admin'] == 1,
    joinedAt: DateTime.parse(data['joined_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$HomeMemberToSqlite(
  HomeMember instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'home_Home_brick_id':
        instance.home.primaryKey ??
        await provider.upsert<Home>(instance.home, repository: repository),
    'user_User_brick_id':
        instance.user.primaryKey ??
        await provider.upsert<User>(instance.user, repository: repository),
    'can_create_tasks': instance.canCreateTasks ? 1 : 0,
    'can_edit_tasks': instance.canEditTasks ? 1 : 0,
    'can_delete_tasks': instance.canDeleteTasks ? 1 : 0,
    'can_invite_members': instance.canInviteMembers ? 1 : 0,
    'can_view_all_calendars': instance.canViewAllCalendars ? 1 : 0,
    'is_admin': instance.isAdmin ? 1 : 0,
    'joined_at': instance.joinedAt.toIso8601String(),
  };
}

/// Construct a [HomeMember]
class HomeMemberAdapter extends OfflineFirstWithSupabaseAdapter<HomeMember> {
  HomeMemberAdapter();

  @override
  final supabaseTableName = 'home_members';
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
    'canCreateTasks': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'can_create_tasks',
    ),
    'canEditTasks': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'can_edit_tasks',
    ),
    'canDeleteTasks': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'can_delete_tasks',
    ),
    'canInviteMembers': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'can_invite_members',
    ),
    'canViewAllCalendars': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'can_view_all_calendars',
    ),
    'isAdmin': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'is_admin',
    ),
    'joinedAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'joined_at',
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
    'user': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'user_User_brick_id',
      iterable: false,
      type: User,
    ),
    'canCreateTasks': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'can_create_tasks',
      iterable: false,
      type: bool,
    ),
    'canEditTasks': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'can_edit_tasks',
      iterable: false,
      type: bool,
    ),
    'canDeleteTasks': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'can_delete_tasks',
      iterable: false,
      type: bool,
    ),
    'canInviteMembers': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'can_invite_members',
      iterable: false,
      type: bool,
    ),
    'canViewAllCalendars': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'can_view_all_calendars',
      iterable: false,
      type: bool,
    ),
    'isAdmin': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'is_admin',
      iterable: false,
      type: bool,
    ),
    'joinedAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'joined_at',
      iterable: false,
      type: DateTime,
    ),
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
    HomeMember instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `HomeMember` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'HomeMember';

  @override
  Future<HomeMember> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$HomeMemberFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    HomeMember input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$HomeMemberToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<HomeMember> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$HomeMemberFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    HomeMember input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$HomeMemberToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
