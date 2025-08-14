// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:familio/data/models/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'relationship.freezed.dart';
part 'relationship.g.dart';

@freezed
abstract class Relationship with _$Relationship {
  @firestoreSerializable
  const factory Relationship({
    @Id() @Default('unset') @JsonKey(includeToJson: false) String id,
    required String user1Id,
    required String user2Id,
    required RelationshipType type,
    String? homeId,
    required DateTime createdAt,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, Object?> json) =>
      _$RelationshipFromJson(json);
}

@Collection<Relationship>('relationships')
final relationshipsRef = RelationshipCollectionReference();
