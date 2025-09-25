import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'users'),
)
class User extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  final String name;
  final String? avatar;
  final DateTime? birthDate;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    this.avatar,
    this.birthDate,
    required this.createdAt,
    required this.updatedAt,
  });

  User.stub(String id)
    : this(
        id: id,
        name: '',
        avatar: null,
        birthDate: null,
        createdAt: DateTime.fromMillisecondsSinceEpoch(0),
        updatedAt: DateTime.fromMillisecondsSinceEpoch(0),
      );
}
