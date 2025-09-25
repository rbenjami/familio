import 'dart:core';

import 'package:brick_offline_first_with_supabase/brick_offline_first_with_supabase.dart';
import 'package:brick_sqlite/brick_sqlite.dart';
import 'package:brick_supabase/brick_supabase.dart';
import 'package:familio/brick/models/home.model.dart';
import 'package:familio/brick/models/user.model.dart';

enum RelationshipType {
  parent,
  child,
  sibling,
  stepparent,
  stepchild,
  stepsibling,
  grandparent,
  grandchild,
  other,
}

@ConnectOfflineFirstWithSupabase(
  supabaseConfig: SupabaseSerializable(tableName: 'relationships'),
)
class Relationship extends OfflineFirstWithSupabaseModel {
  @Sqlite(index: true, unique: true)
  @Supabase(unique: true)
  final String id;
  @Supabase(foreignKey: 'user1_id')
  final User user1;
  @Sqlite(ignore: true)
  String get user1Id => user1.id;
  @Supabase(foreignKey: 'user2_id')
  final User user2;
  @Sqlite(ignore: true)
  String get user2Id => user2.id;
  @Supabase(enumAsString: true)
  final RelationshipType relationshipType;
  @Supabase(foreignKey: 'home_id')
  final Home? home;
  @Sqlite(ignore: true)
  String? get homeId => home?.id;
  final DateTime createdAt;

  Relationship({
    required this.id,
    required this.user1,
    required this.user2,
    required this.relationshipType,
    this.home,
    required this.createdAt,
  });
}
