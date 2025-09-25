import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';

enum Priority { low, medium, high, urgent }

enum TaskStatus {
  pending,
  // ignore: constant_identifier_names
  in_progress,
  completed,
  cancelled,
}

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'tasks'),
)
class Task extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'home_id')
  final Home home;
  @Sqlite(ignore: true)
  String get homeId => home.id;
  final String title;
  final String? description;
  @Supabase(foreignKey: 'created_by_id')
  final User createdBy;
  @Sqlite(ignore: true)
  String get createdById => createdBy.id;
  @Supabase(enumAsString: true)
  final TaskStatus status;
  final DateTime? dueDate;
  @Supabase(enumAsString: true)
  final Priority priority;
  final DateTime? startDate;
  final int? estimatedDurationMinutes;
  final String? location;
  final List<String> tags;
  final DateTime createdAt;
  final DateTime updatedAt;

  Task({
    required this.id,
    required this.home,
    required this.title,
    this.description,
    required this.createdBy,
    required this.status,
    this.dueDate,
    required this.priority,
    this.startDate,
    this.estimatedDurationMinutes,
    this.location,
    this.tags = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  // Stub constructor for references
  Task.stub(String id)
    : this(
        id: id,
        home: Home.stub(''),
        title: '',
        createdBy: User.stub(''),
        status: TaskStatus.pending,
        priority: Priority.medium,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
}
