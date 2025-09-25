import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';

enum InvitationStatus { pending, accepted, rejected, expired }

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'invitations'),
)
class Invitation extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'home_id')
  final Home home;
  @Sqlite(ignore: true)
  String get homeId => home.id;
  @Supabase(foreignKey: 'invited_by_id')
  final User invitedBy;
  @Sqlite(ignore: true)
  String get invitedById => invitedBy.id;
  final String? invitedEmail;
  final String? invitedUserName;
  final String invitationCode;
  @Supabase(enumAsString: true)
  final InvitationStatus status;
  final DateTime createdAt;
  final DateTime expiresAt;
  final DateTime? acceptedAt;
  @Supabase(foreignKey: 'accepted_by_id')
  final User? acceptedBy;
  @Sqlite(ignore: true)
  String? get acceptedById => acceptedBy?.id;

  Invitation({
    required this.id,
    required this.home,
    required this.invitedBy,
    this.invitedEmail,
    this.invitedUserName,
    required this.invitationCode,
    required this.status,
    required this.createdAt,
    required this.expiresAt,
    this.acceptedAt,
    this.acceptedBy,
  });

  // Stub constructor for references
  Invitation.stub(String id)
    : this(
        id: id,
        home: Home.stub(''),
        invitedBy: User.stub(''),
        invitationCode: '',
        status: InvitationStatus.pending,
        createdAt: DateTime.now(),
        expiresAt: DateTime.now(),
      );
}
