// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<EventAttendee> _$EventAttendeeFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return EventAttendee(
    id: data['id'] as String,
    event: await EventAdapter().fromSupabase(
      data['event'],
      provider: provider,
      repository: repository,
    ),
    user: await UserAdapter().fromSupabase(
      data['user'],
      provider: provider,
      repository: repository,
    ),
    createdAt: data['created_at'] == null
        ? null
        : data['created_at'] == null
        ? null
        : DateTime.tryParse(data['created_at'] as String),
  );
}

Future<Map<String, dynamic>> _$EventAttendeeToSupabase(
  EventAttendee instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'event': await EventAdapter().toSupabase(
      instance.event,
      provider: provider,
      repository: repository,
    ),
    'event_id': instance.eventId,
    'user': await UserAdapter().toSupabase(
      instance.user,
      provider: provider,
      repository: repository,
    ),
    'user_id': instance.userId,
    'created_at': instance.createdAt?.toIso8601String(),
  };
}

Future<EventAttendee> _$EventAttendeeFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return EventAttendee(
    id: data['id'] as String,
    event: (await repository!.getAssociation<Event>(
      Query.where(
        'primaryKey',
        data['event_Event_brick_id'] as int,
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
    createdAt: data['created_at'] == null
        ? null
        : data['created_at'] == null
        ? null
        : DateTime.tryParse(data['created_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$EventAttendeeToSqlite(
  EventAttendee instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'event_Event_brick_id':
        instance.event.primaryKey ??
        await provider.upsert<Event>(instance.event, repository: repository),
    'user_User_brick_id':
        instance.user.primaryKey ??
        await provider.upsert<User>(instance.user, repository: repository),
    'created_at': instance.createdAt?.toIso8601String(),
  };
}

/// Construct a [EventAttendee]
class EventAttendeeAdapter
    extends OfflineFirstWithSupabaseAdapter<EventAttendee> {
  EventAttendeeAdapter();

  @override
  final supabaseTableName = 'event_attendees';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'event': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'event',
      associationType: Event,
      associationIsNullable: false,
      foreignKey: 'event_id',
    ),
    'eventId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'event_id',
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
    'event': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'event_Event_brick_id',
      iterable: false,
      type: Event,
    ),
    'user': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'user_User_brick_id',
      iterable: false,
      type: User,
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
    EventAttendee instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `EventAttendee` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'EventAttendee';

  @override
  Future<EventAttendee> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventAttendeeFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    EventAttendee input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventAttendeeToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<EventAttendee> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventAttendeeFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    EventAttendee input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventAttendeeToSqlite(
    input,
    provider: provider,
    repository: repository,
  );
}
