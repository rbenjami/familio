import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/user.model.dart';

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'homes'),
)
class Home extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  final String name;
  final String? description;
  @Supabase(foreignKey: 'owner_id')
  final User owner;
  @Sqlite(ignore: true)
  String get ownerId => owner.id;
  final bool allowMemberInvite;
  final DateTime createdAt;
  final DateTime updatedAt;

  Home({
    required this.id,
    required this.name,
    this.description,
    required this.owner,
    required this.allowMemberInvite,
    required this.createdAt,
    required this.updatedAt,
  });

  Home.stub(String id)
    : this(
        id: id,
        name: '',
        description: null,
        owner: User.stub(''),
        allowMemberInvite: true,
        createdAt: DateTime.fromMillisecondsSinceEpoch(0),
        updatedAt: DateTime.fromMillisecondsSinceEpoch(0),
      );
}
