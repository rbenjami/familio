// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Home> _$HomeFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Home(
    id: data['id'] as String,
    name: data['name'] as String,
    description: data['description'] == null
        ? null
        : data['description'] as String?,
    owner: await UserAdapter().fromSupabase(
      data['owner'],
      provider: provider,
      repository: repository,
    ),
    allowMemberInvite: data['allow_member_invite'] as bool,
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: DateTime.parse(data['updated_at'] as String),
  );
}

Future<Map<String, dynamic>> _$HomeToSupabase(
  Home instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
    'owner': await UserAdapter().toSupabase(
      instance.owner,
      provider: provider,
      repository: repository,
    ),
    'owner_id': instance.ownerId,
    'allow_member_invite': instance.allowMemberInvite,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };
}

Future<Home> _$HomeFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Home(
    id: data['id'] as String,
    name: data['name'] as String,
    description: data['description'] == null
        ? null
        : data['description'] as String?,
    owner: (await repository!.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['owner_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    allowMemberInvite: data['allow_member_invite'] == 1,
    createdAt: DateTime.parse(data['created_at'] as String),
    updatedAt: DateTime.parse(data['updated_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$HomeToSqlite(
  Home instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'name': instance.name,
    'description': instance.description,
    'owner_User_brick_id':
        instance.owner.primaryKey ??
        await provider.upsert<User>(instance.owner, repository: repository),
    'allow_member_invite': instance.allowMemberInvite ? 1 : 0,
    'created_at': instance.createdAt.toIso8601String(),
    'updated_at': instance.updatedAt.toIso8601String(),
  };
}

/// Construct a [Home]
class HomeAdapter extends OfflineFirstWithSupabaseAdapter<Home> {
  HomeAdapter();

  @override
  final supabaseTableName = 'homes';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'name': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'name',
    ),
    'description': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'description',
    ),
    'owner': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'owner',
      associationType: User,
      associationIsNullable: false,
      foreignKey: 'owner_id',
    ),
    'ownerId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'owner_id',
    ),
    'allowMemberInvite': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'allow_member_invite',
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
    'name': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'name',
      iterable: false,
      type: String,
    ),
    'description': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'description',
      iterable: false,
      type: String,
    ),
    'owner': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'owner_User_brick_id',
      iterable: false,
      type: User,
    ),
    'allowMemberInvite': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'allow_member_invite',
      iterable: false,
      type: bool,
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
    Home instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `Home` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Home';

  @override
  Future<Home> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$HomeFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    Home input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$HomeToSupabase(input, provider: provider, repository: repository);
  @override
  Future<Home> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$HomeFromSqlite(input, provider: provider, repository: repository);
  @override
  Future<Map<String, dynamic>> toSqlite(
    Home input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$HomeToSqlite(input, provider: provider, repository: repository);
}
