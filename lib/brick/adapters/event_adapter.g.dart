// GENERATED CODE DO NOT EDIT
part of '../brick.g.dart';

Future<Event> _$EventFromSupabase(
  Map<String, dynamic> data, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Event(
    id: data['id'] as String,
    calendar: await CalendarAdapter().fromSupabase(
      data['calendar'],
      provider: provider,
      repository: repository,
    ),
    title: data['title'] as String,
    description: data['description'] == null
        ? null
        : data['description'] as String?,
    startDate: DateTime.parse(data['start_date'] as String),
    endDate: data['end_date'] == null
        ? null
        : data['end_date'] == null
        ? null
        : DateTime.tryParse(data['end_date'] as String),
    isAllDay: data['is_all_day'] == null ? null : data['is_all_day'] as bool?,
    source: data['source'] == null
        ? null
        : EventSource.values.byName(data['source']),
    externalEventId: data['external_event_id'] == null
        ? null
        : data['external_event_id'] as String?,
    canEdit: data['can_edit'] == null ? null : data['can_edit'] as bool?,
    createdAt: data['created_at'] == null
        ? null
        : data['created_at'] == null
        ? null
        : DateTime.tryParse(data['created_at'] as String),
    updatedAt: data['updated_at'] == null
        ? null
        : data['updated_at'] == null
        ? null
        : DateTime.tryParse(data['updated_at'] as String),
  );
}

Future<Map<String, dynamic>> _$EventToSupabase(
  Event instance, {
  required SupabaseProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'calendar': await CalendarAdapter().toSupabase(
      instance.calendar,
      provider: provider,
      repository: repository,
    ),
    'calendar_id': instance.calendarId,
    'title': instance.title,
    'description': instance.description,
    'start_date': instance.startDate.toIso8601String(),
    'end_date': instance.endDate?.toIso8601String(),
    'is_all_day': instance.isAllDay,
    'source': instance.source?.name,
    'external_event_id': instance.externalEventId,
    'can_edit': instance.canEdit,
    'created_at': instance.createdAt?.toIso8601String(),
    'updated_at': instance.updatedAt?.toIso8601String(),
  };
}

Future<Event> _$EventFromSqlite(
  Map<String, dynamic> data, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return Event(
    id: data['id'] as String,
    calendar: (await repository!.getAssociation<Calendar>(
      Query.where(
        'primaryKey',
        data['calendar_Calendar_brick_id'] as int,
        limit1: true,
      ),
    ))!.first,
    title: data['title'] as String,
    description: data['description'] == null
        ? null
        : data['description'] as String?,
    startDate: DateTime.parse(data['start_date'] as String),
    endDate: data['end_date'] == null
        ? null
        : data['end_date'] == null
        ? null
        : DateTime.tryParse(data['end_date'] as String),
    isAllDay: data['is_all_day'] == null ? null : data['is_all_day'] == 1,
    source: data['source'] == null
        ? null
        : (data['source'] > -1
              ? EventSource.values[data['source'] as int]
              : null),
    externalEventId: data['external_event_id'] == null
        ? null
        : data['external_event_id'] as String?,
    canEdit: data['can_edit'] == null ? null : data['can_edit'] == 1,
    createdAt: data['created_at'] == null
        ? null
        : data['created_at'] == null
        ? null
        : DateTime.tryParse(data['created_at'] as String),
    updatedAt: data['updated_at'] == null
        ? null
        : data['updated_at'] == null
        ? null
        : DateTime.tryParse(data['updated_at'] as String),
  )..primaryKey = data['_brick_id'] as int;
}

Future<Map<String, dynamic>> _$EventToSqlite(
  Event instance, {
  required SqliteProvider provider,
  OfflineFirstWithSupabaseRepository? repository,
}) async {
  return {
    'id': instance.id,
    'calendar_Calendar_brick_id':
        instance.calendar.primaryKey ??
        await provider.upsert<Calendar>(
          instance.calendar,
          repository: repository,
        ),
    'title': instance.title,
    'description': instance.description,
    'start_date': instance.startDate.toIso8601String(),
    'end_date': instance.endDate?.toIso8601String(),
    'is_all_day': instance.isAllDay == null
        ? null
        : (instance.isAllDay! ? 1 : 0),
    'source': instance.source != null
        ? EventSource.values.indexOf(instance.source!)
        : null,
    'external_event_id': instance.externalEventId,
    'can_edit': instance.canEdit == null ? null : (instance.canEdit! ? 1 : 0),
    'created_at': instance.createdAt?.toIso8601String(),
    'updated_at': instance.updatedAt?.toIso8601String(),
  };
}

/// Construct a [Event]
class EventAdapter extends OfflineFirstWithSupabaseAdapter<Event> {
  EventAdapter();

  @override
  final supabaseTableName = 'events';
  @override
  final defaultToNull = true;
  @override
  final fieldsToSupabaseColumns = {
    'id': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'id',
    ),
    'calendar': const RuntimeSupabaseColumnDefinition(
      association: true,
      columnName: 'calendar',
      associationType: Calendar,
      associationIsNullable: false,
      foreignKey: 'calendar_id',
    ),
    'calendarId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'calendar_id',
    ),
    'title': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'title',
    ),
    'description': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'description',
    ),
    'startDate': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'start_date',
    ),
    'endDate': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'end_date',
    ),
    'isAllDay': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'is_all_day',
    ),
    'source': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'source',
    ),
    'externalEventId': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'external_event_id',
    ),
    'canEdit': const RuntimeSupabaseColumnDefinition(
      association: false,
      columnName: 'can_edit',
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
    'calendar': const RuntimeSqliteColumnDefinition(
      association: true,
      columnName: 'calendar_Calendar_brick_id',
      iterable: false,
      type: Calendar,
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
    'startDate': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'start_date',
      iterable: false,
      type: DateTime,
    ),
    'endDate': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'end_date',
      iterable: false,
      type: DateTime,
    ),
    'isAllDay': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'is_all_day',
      iterable: false,
      type: bool,
    ),
    'source': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'source',
      iterable: false,
      type: EventSource,
    ),
    'externalEventId': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'external_event_id',
      iterable: false,
      type: String,
    ),
    'canEdit': const RuntimeSqliteColumnDefinition(
      association: false,
      columnName: 'can_edit',
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
    Event instance,
    DatabaseExecutor executor,
  ) async {
    final results = await executor.rawQuery(
      '''
        SELECT * FROM `Event` WHERE id = ? LIMIT 1''',
      [instance.id],
    );

    // SQFlite returns [{}] when no results are found
    if (results.isEmpty || (results.length == 1 && results.first.isEmpty)) {
      return null;
    }

    return results.first['_brick_id'] as int;
  }

  @override
  final String tableName = 'Event';

  @override
  Future<Event> fromSupabase(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventFromSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSupabase(
    Event input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventToSupabase(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Event> fromSqlite(
    Map<String, dynamic> input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async => await _$EventFromSqlite(
    input,
    provider: provider,
    repository: repository,
  );
  @override
  Future<Map<String, dynamic>> toSqlite(
    Event input, {
    required provider,
    covariant OfflineFirstWithSupabaseRepository? repository,
  }) async =>
      await _$EventToSqlite(input, provider: provider, repository: repository);
}
