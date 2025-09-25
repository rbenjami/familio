// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Relationship> _$RelationshipFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Relationship(
    id: data['id'] as String,
    user1: await UserAdapter().fromSupabase(
      data['user1'],
      provider: provider,
      repository: repository,
    ),
    user2: await UserAdapter().fromSupabase(
      data['user2'],
      provider: provider,
      repository: repository,
    ),
    relationshipType: RelationshipType.values.byName(data['relationship_type']),
    home: data['home'] == null
        ? null
        : await HomeAdapter().fromSupabase(
            data['home'],
            provider: provider,
            repository: repository,
          ),
    createdAt: DateTime.parse(data['created_at'] as String),
  );
}

Future<Map<String, dynamic>> _$RelationshipToSupabase(
  Relationship instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'user1': await UserAdapter().toSupabase(
      instance.user1,
      provider: provider,
      repository: repository,
    ),
    'user1_id': instance.user1Id,
    'user2': await UserAdapter().toSupabase(
      instance.user2,
      provider: provider,
      repository: repository,
    ),
    'user2_id': instance.user2Id,
    'relationship_type': instance.relationshipType.name,
    'home': instance.home != null
        ? await HomeAdapter().toSupabase(
            instance.home!,
            provider: provider,
            repository: repository,
          )
        : null,
    'home_id': instance.homeId,
    'created_at': instance.createdAt.toIso8601String(),
  };
}

Future<Relationship> _$RelationshipFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Relationship(
    id: data['id'] as String,
    user1: (await repository!.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['user1_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    user2: (await repository.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['user2_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    relationshipType: RelationshipType.values[data['relationship_type'] as int],
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
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$RelationshipToSqlite(
  Relationship instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'user1_User_brick_id':
        instance.user1.primaryKey ??
        await provider.upsert<User>(instance.user1, repository: repository),
    'user2_User_brick_id':
        instance.user2.primaryKey ??
        await provider.upsert<User>(instance.user2, repository: repository),
    'relationship_type': RelationshipType.values.indexOf(
      instance.relationshipType,
    ),
    'home_Home_brick_id': instance.home != null
        ? instance.home!.primaryKey ??
              await provider.upsert<Home>(
                instance.home!,
                repository: repository,
              )
        : null,
    'created_at': instance.createdAt.toIso8601String(),
  };
}

/// Construct a [Relationship]
class RelationshipAdapter
    extends OfflineFirstWithSupabaseAdapter<Relationship> {
  RelationshipAdapter();

  @override
  final supabaseTableName = 'relationships';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'user1': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'user1',
      associationType: User,
      associationIsNullable: false,
      foreignKey: 'user1_id',
    ),
    'user1Id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user1_id',
    ),
    'user2': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'user2',
      associationType: User,
      associationIsNullable: false,
      foreignKey: 'user2_id',
    ),
    'user2Id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'user2_id',
    ),
    'relationshipType': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'relationship_type',
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
    'user1': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'user1_User_brick_id',
      iterable: false,
      type: User,
    ),
    'user2': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'user2_User_brick_id',
      iterable: false,
      type: User,
    ),
    'relationshipType': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'relationship_type',
      iterable: false,
      type: RelationshipType,
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
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
    Relationship instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `Relationship` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Relationship';

  @override
  Future<Relationship> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$RelationshipFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    Relationship input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$RelationshipToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Relationship> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$RelationshipFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    Relationship input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$RelationshipToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
