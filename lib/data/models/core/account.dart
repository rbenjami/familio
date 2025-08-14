import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

part 'account.freezed.dart';
part 'account.g.dart';

@freezed
abstract class Account with _$Account {
  // ignore: invalid_annotation_target
  @firestoreSerializable
  const factory Account({
    @Id() required String id,
    required String email,
    required DateTime createdAt,
    required String userId,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) =>
      _$AccountFromJson(json);
}

@Collection<Account>('accounts')
final accountsRef = AccountCollectionReference();
