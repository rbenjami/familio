// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_core/query.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_sqlite/db.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_sqlite/brick_sqlite.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:brick_supabase/brick_supabase.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:familio/brick/models/task.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:familio/brick/models/user.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:familio/brick/models/calendar.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'dart:core';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:familio/brick/models/home.model.dart';
// ignore: unused_import, unused_shown_name, unnecessary_import
import 'package:familio/brick/models/event.model.dart';// GENERATED CODE DO NOT EDIT
// ignore: unused_import
import 'dart:convert';
import 'package:brick_sqlite/brick_sqlite.dart' show SqliteModel, SqliteAdapter, SqliteModelDictionary, RuntimeSqliteColumnDefinition, SqliteProvider;
import 'package:brick_supabase/brick_supabase.dart' show SupabaseProvider, SupabaseModel, SupabaseAdapter, SupabaseModelDictionary;
// ignore: unused_import, unused_shown_name
import 'package:brick_offline_first/brick_offline_first.dart' show RuntimeOfflineFirstDefinition;
// ignore: unused_import, unused_shown_name
import 'package:sqflite_common/sqlite_api.dart' show DatabaseExecutor;

import '../brick/models/task_assignee.model.dart';
import '../brick/models/event.model.dart';
import '../brick/models/relationship.model.dart';
import '../brick/models/home.model.dart';
import '../brick/models/event_attendee.model.dart';
import '../brick/models/user.model.dart';
import '../brick/models/calendar.model.dart';
import '../brick/models/task.model.dart';
import '../brick/models/home_member.model.dart';
import '../brick/models/invitation.model.dart';
import '../brick/models/sub_task.model.dart';

part 'adapters/task_assignee_adapter.g.dart';
part 'adapters/event_adapter.g.dart';
part 'adapters/relationship_adapter.g.dart';
part 'adapters/home_adapter.g.dart';
part 'adapters/event_attendee_adapter.g.dart';
part 'adapters/user_adapter.g.dart';
part 'adapters/calendar_adapter.g.dart';
part 'adapters/task_adapter.g.dart';
part 'adapters/home_member_adapter.g.dart';
part 'adapters/invitation_adapter.g.dart';
part 'adapters/sub_task_adapter.g.dart';

/// Supabase mappings should only be used when initializing a [SupabaseProvider]
final Map<Type, SupabaseAdapter<SupabaseModel>> supabaseMappings = {
  TaskAssignee: TaskAssigneeAdapter(),
  Event: EventAdapter(),
  Relationship: RelationshipAdapter(),
  Home: HomeAdapter(),
  EventAttendee: EventAttendeeAdapter(),
  User: UserAdapter(),
  Calendar: CalendarAdapter(),
  Task: TaskAdapter(),
  HomeMember: HomeMemberAdapter(),
  Invitation: InvitationAdapter(),
  SubTask: SubTaskAdapter()
};
final supabaseModelDictionary = SupabaseModelDictionary(supabaseMappings);

/// Sqlite mappings should only be used when initializing a [SqliteProvider]
final Map<Type, SqliteAdapter<SqliteModel>> sqliteMappings = {
  TaskAssignee: TaskAssigneeAdapter(),
  Event: EventAdapter(),
  Relationship: RelationshipAdapter(),
  Home: HomeAdapter(),
  EventAttendee: EventAttendeeAdapter(),
  User: UserAdapter(),
  Calendar: CalendarAdapter(),
  Task: TaskAdapter(),
  HomeMember: HomeMemberAdapter(),
  Invitation: InvitationAdapter(),
  SubTask: SubTaskAdapter()
};
final sqliteModelDictionary = SqliteModelDictionary(sqliteMappings);
