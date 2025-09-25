// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Invitation> _$InvitationFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Invitation(
    id: data['id'] as String,
    home: await HomeAdapter().fromSupabase(
      data['home'],
      provider: provider,
      repository: repository,
    ),
    invitedBy: await UserAdapter().fromSupabase(
      data['invited_by'],
      provider: provider,
      repository: repository,
    ),
    invitedEmail: data['invited_email'] == null
        ? null
        : data['invited_email'] as String?,
    invitedUserName: data['invited_user_name'] == null
        ? null
        : data['invited_user_name'] as String?,
    invitationCode: data['invitation_code'] as String,
    status: InvitationStatus.values.byName(data['status']),
    createdAt: DateTime.parse(data['created_at'] as String),
    expiresAt: DateTime.parse(data['expires_at'] as String),
    acceptedAt: data['accepted_at'] == null
        ? null
        : data['accepted_at'] == null
        ? null
        : DateTime.tryParse(data['accepted_at'] as String),
    acceptedBy: data['accepted_by'] == null
        ? null
        : await UserAdapter().fromSupabase(
            data['accepted_by'],
            provider: provider,
            repository: repository,
          ),
  );
}

Future<Map<String, dynamic>> _$InvitationToSupabase(
  Invitation instance, {
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
    'invited_by': await UserAdapter().toSupabase(
      instance.invitedBy,
      provider: provider,
      repository: repository,
    ),
    'invited_by_id': instance.invitedById,
    'invited_email': instance.invitedEmail,
    'invited_user_name': instance.invitedUserName,
    'invitation_code': instance.invitationCode,
    'status': instance.status.name,
    'created_at': instance.createdAt.toIso8601String(),
    'expires_at': instance.expiresAt.toIso8601String(),
    'accepted_at': instance.acceptedAt?.toIso8601String(),
    'accepted_by': instance.acceptedBy != null
        ? await UserAdapter().toSupabase(
            instance.acceptedBy!,
            provider: provider,
            repository: repository,
          )
        : null,
    'accepted_by_id': instance.acceptedById,
  };
}

Future<Invitation> _$InvitationFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Invitation(
    id: data['id'] as String,
    home: (await repository!.getAssociation<Home>(
      Query.where(
        'primaryKey',
        data['home_Home_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    invitedBy: (await repository.getAssociation<User>(
      Query.where(
        'primaryKey',
        data['invited_by_User_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    invitedEmail: data['invited_email'] == null
        ? null
        : data['invited_email'] as String?,
    invitedUserName: data['invited_user_name'] == null
        ? null
        : data['invited_user_name'] as String?,
    invitationCode: data['invitation_code'] as String,
    status: InvitationStatus.values[data['status'] as int],
    createdAt: DateTime.parse(data['created_at'] as String),
    expiresAt: DateTime.parse(data['expires_at'] as String),
    acceptedAt: data['accepted_at'] == null
        ? null
        : data['accepted_at'] == null
        ? null
        : DateTime.tryParse(data['accepted_at'] as String),
    acceptedBy: data['accepted_by_User_brick_id'] == null
        ? null
        : (data['accepted_by_User_brick_id'] > -1
              ? (await repository.getAssociation<User>(
                  Query.where(
                    'primaryKey',
                    data['accepted_by_User_brick_id'] as int,
                    limit1: true,
                  ),
                ))?.first
              : null),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$InvitationToSqlite(
  Invitation instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'home_Home_brick_id':
        instance.home.primaryKey ??
        await provider.upsert<Home>(instance.home, repository: repository),
    'invited_by_User_brick_id':
        instance.invitedBy.primaryKey ??
        await provider.upsert<User>(instance.invitedBy, repository: repository),
    'invited_email': instance.invitedEmail,
    'invited_user_name': instance.invitedUserName,
    'invitation_code': instance.invitationCode,
    'status': InvitationStatus.values.indexOf(instance.status),
    'created_at': instance.createdAt.toIso8601String(),
    'expires_at': instance.expiresAt.toIso8601String(),
    'accepted_at': instance.acceptedAt?.toIso8601String(),
    'accepted_by_User_brick_id': instance.acceptedBy != null
        ? instance.acceptedBy!.primaryKey ??
              await provider.upsert<User>(
                instance.acceptedBy!,
                repository: repository,
              )
        : null,
  };
}

/// Construct a [Invitation]
class InvitationAdapter extends OfflineFirstWithSupabaseAdapter<Invitation> {
  InvitationAdapter();

  @override
  final supabaseTableName = 'invitations';
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
    'invitedBy': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'invited_by',
      associationType: User,
      associationIsNullable: false,
      foreignKey: 'invited_by_id',
    ),
    'invitedById': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'invited_by_id',
    ),
    'invitedEmail': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'invited_email',
    ),
    'invitedUserName': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'invited_user_name',
    ),
    'invitationCode': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'invitation_code',
    ),
    'status': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'status',
    ),
    'createdAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'created_at',
    ),
    'expiresAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'expires_at',
    ),
    'acceptedAt': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'accepted_at',
    ),
    'acceptedBy': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'accepted_by',
      associationType: User,
      associationIsNullable: true,
      foreignKey: 'accepted_by_id',
    ),
    'acceptedById': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'accepted_by_id',
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
    'invitedBy': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'invited_by_User_brick_id',
      iterable: false,
      type: User,
    ),
    'invitedEmail': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'invited_email',
      iterable: false,
      type: String,
    ),
    'invitedUserName': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'invited_user_name',
      iterable: false,
      type: String,
    ),
    'invitationCode': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'invitation_code',
      iterable: false,
      type: String,
    ),
    'status': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'status',
      iterable: false,
      type: InvitationStatus,
    ),
    'createdAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'created_at',
      iterable: false,
      type: DateTime,
    ),
    'expiresAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'expires_at',
      iterable: false,
      type: DateTime,
    ),
    'acceptedAt': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'accepted_at',
      iterable: false,
      type: DateTime,
    ),
    'acceptedBy': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'accepted_by_User_brick_id',
      iterable: false,
      type: User,
    ),
  };
  @override
  Future<int?> primaryKeyByUniqueColumns(
    Invitation instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `Invitation` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Invitation';

  @override
  Future<Invitation> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$InvitationFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    Invitation input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$InvitationToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Invitation> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$InvitationFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    Invitation input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$InvitationToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
