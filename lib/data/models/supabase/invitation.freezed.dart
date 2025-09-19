// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Invitation {

 String get id; String get homeId; String get invitedById; String? get invitedEmail; String? get invitedUserName; String get invitationCode; String get status; DateTime get createdAt; DateTime get expiresAt; DateTime? get acceptedAt; String? get acceptedById;
/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationCopyWith<Invitation> get copyWith => _$InvitationCopyWithImpl<Invitation>(this as Invitation, _$identity);

  /// Serializes this Invitation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.invitedById, invitedById) || other.invitedById == invitedById)&&(identical(other.invitedEmail, invitedEmail) || other.invitedEmail == invitedEmail)&&(identical(other.invitedUserName, invitedUserName) || other.invitedUserName == invitedUserName)&&(identical(other.invitationCode, invitationCode) || other.invitationCode == invitationCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.acceptedById, acceptedById) || other.acceptedById == acceptedById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,invitedById,invitedEmail,invitedUserName,invitationCode,status,createdAt,expiresAt,acceptedAt,acceptedById);

@override
String toString() {
  return 'Invitation(id: $id, homeId: $homeId, invitedById: $invitedById, invitedEmail: $invitedEmail, invitedUserName: $invitedUserName, invitationCode: $invitationCode, status: $status, createdAt: $createdAt, expiresAt: $expiresAt, acceptedAt: $acceptedAt, acceptedById: $acceptedById)';
}


}

/// @nodoc
abstract mixin class $InvitationCopyWith<$Res>  {
  factory $InvitationCopyWith(Invitation value, $Res Function(Invitation) _then) = _$InvitationCopyWithImpl;
@useResult
$Res call({
 String id, String homeId, String invitedById, String? invitedEmail, String? invitedUserName, String invitationCode, String status, DateTime createdAt, DateTime expiresAt, DateTime? acceptedAt, String? acceptedById
});




}
/// @nodoc
class _$InvitationCopyWithImpl<$Res>
    implements $InvitationCopyWith<$Res> {
  _$InvitationCopyWithImpl(this._self, this._then);

  final Invitation _self;
  final $Res Function(Invitation) _then;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? homeId = null,Object? invitedById = null,Object? invitedEmail = freezed,Object? invitedUserName = freezed,Object? invitationCode = null,Object? status = null,Object? createdAt = null,Object? expiresAt = null,Object? acceptedAt = freezed,Object? acceptedById = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,invitedById: null == invitedById ? _self.invitedById : invitedById // ignore: cast_nullable_to_non_nullable
as String,invitedEmail: freezed == invitedEmail ? _self.invitedEmail : invitedEmail // ignore: cast_nullable_to_non_nullable
as String?,invitedUserName: freezed == invitedUserName ? _self.invitedUserName : invitedUserName // ignore: cast_nullable_to_non_nullable
as String?,invitationCode: null == invitationCode ? _self.invitationCode : invitationCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedById: freezed == acceptedById ? _self.acceptedById : acceptedById // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Invitation implements Invitation {
  const _Invitation({required this.id, required this.homeId, required this.invitedById, this.invitedEmail, this.invitedUserName, required this.invitationCode, required this.status, required this.createdAt, required this.expiresAt, this.acceptedAt, this.acceptedById});
  factory _Invitation.fromJson(Map<String, dynamic> json) => _$InvitationFromJson(json);

@override final  String id;
@override final  String homeId;
@override final  String invitedById;
@override final  String? invitedEmail;
@override final  String? invitedUserName;
@override final  String invitationCode;
@override final  String status;
@override final  DateTime createdAt;
@override final  DateTime expiresAt;
@override final  DateTime? acceptedAt;
@override final  String? acceptedById;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationCopyWith<_Invitation> get copyWith => __$InvitationCopyWithImpl<_Invitation>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvitationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.invitedById, invitedById) || other.invitedById == invitedById)&&(identical(other.invitedEmail, invitedEmail) || other.invitedEmail == invitedEmail)&&(identical(other.invitedUserName, invitedUserName) || other.invitedUserName == invitedUserName)&&(identical(other.invitationCode, invitationCode) || other.invitationCode == invitationCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.acceptedAt, acceptedAt) || other.acceptedAt == acceptedAt)&&(identical(other.acceptedById, acceptedById) || other.acceptedById == acceptedById));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,invitedById,invitedEmail,invitedUserName,invitationCode,status,createdAt,expiresAt,acceptedAt,acceptedById);

@override
String toString() {
  return 'Invitation(id: $id, homeId: $homeId, invitedById: $invitedById, invitedEmail: $invitedEmail, invitedUserName: $invitedUserName, invitationCode: $invitationCode, status: $status, createdAt: $createdAt, expiresAt: $expiresAt, acceptedAt: $acceptedAt, acceptedById: $acceptedById)';
}


}

/// @nodoc
abstract mixin class _$InvitationCopyWith<$Res> implements $InvitationCopyWith<$Res> {
  factory _$InvitationCopyWith(_Invitation value, $Res Function(_Invitation) _then) = __$InvitationCopyWithImpl;
@override @useResult
$Res call({
 String id, String homeId, String invitedById, String? invitedEmail, String? invitedUserName, String invitationCode, String status, DateTime createdAt, DateTime expiresAt, DateTime? acceptedAt, String? acceptedById
});




}
/// @nodoc
class __$InvitationCopyWithImpl<$Res>
    implements _$InvitationCopyWith<$Res> {
  __$InvitationCopyWithImpl(this._self, this._then);

  final _Invitation _self;
  final $Res Function(_Invitation) _then;

/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? homeId = null,Object? invitedById = null,Object? invitedEmail = freezed,Object? invitedUserName = freezed,Object? invitationCode = null,Object? status = null,Object? createdAt = null,Object? expiresAt = null,Object? acceptedAt = freezed,Object? acceptedById = freezed,}) {
  return _then(_Invitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,invitedById: null == invitedById ? _self.invitedById : invitedById // ignore: cast_nullable_to_non_nullable
as String,invitedEmail: freezed == invitedEmail ? _self.invitedEmail : invitedEmail // ignore: cast_nullable_to_non_nullable
as String?,invitedUserName: freezed == invitedUserName ? _self.invitedUserName : invitedUserName // ignore: cast_nullable_to_non_nullable
as String?,invitationCode: null == invitationCode ? _self.invitationCode : invitationCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,acceptedAt: freezed == acceptedAt ? _self.acceptedAt : acceptedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,acceptedById: freezed == acceptedById ? _self.acceptedById : acceptedById // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Relationship {

 String get id; String get user1Id; String get user2Id; String get relationshipType; String? get homeId; DateTime get createdAt;
/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipCopyWith<Relationship> get copyWith => _$RelationshipCopyWithImpl<Relationship>(this as Relationship, _$identity);

  /// Serializes this Relationship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relationship&&(identical(other.id, id) || other.id == id)&&(identical(other.user1Id, user1Id) || other.user1Id == user1Id)&&(identical(other.user2Id, user2Id) || other.user2Id == user2Id)&&(identical(other.relationshipType, relationshipType) || other.relationshipType == relationshipType)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user1Id,user2Id,relationshipType,homeId,createdAt);

@override
String toString() {
  return 'Relationship(id: $id, user1Id: $user1Id, user2Id: $user2Id, relationshipType: $relationshipType, homeId: $homeId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RelationshipCopyWith<$Res>  {
  factory $RelationshipCopyWith(Relationship value, $Res Function(Relationship) _then) = _$RelationshipCopyWithImpl;
@useResult
$Res call({
 String id, String user1Id, String user2Id, String relationshipType, String? homeId, DateTime createdAt
});




}
/// @nodoc
class _$RelationshipCopyWithImpl<$Res>
    implements $RelationshipCopyWith<$Res> {
  _$RelationshipCopyWithImpl(this._self, this._then);

  final Relationship _self;
  final $Res Function(Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user1Id = null,Object? user2Id = null,Object? relationshipType = null,Object? homeId = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user1Id: null == user1Id ? _self.user1Id : user1Id // ignore: cast_nullable_to_non_nullable
as String,user2Id: null == user2Id ? _self.user2Id : user2Id // ignore: cast_nullable_to_non_nullable
as String,relationshipType: null == relationshipType ? _self.relationshipType : relationshipType // ignore: cast_nullable_to_non_nullable
as String,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Relationship implements Relationship {
  const _Relationship({required this.id, required this.user1Id, required this.user2Id, required this.relationshipType, this.homeId, required this.createdAt});
  factory _Relationship.fromJson(Map<String, dynamic> json) => _$RelationshipFromJson(json);

@override final  String id;
@override final  String user1Id;
@override final  String user2Id;
@override final  String relationshipType;
@override final  String? homeId;
@override final  DateTime createdAt;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipCopyWith<_Relationship> get copyWith => __$RelationshipCopyWithImpl<_Relationship>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Relationship&&(identical(other.id, id) || other.id == id)&&(identical(other.user1Id, user1Id) || other.user1Id == user1Id)&&(identical(other.user2Id, user2Id) || other.user2Id == user2Id)&&(identical(other.relationshipType, relationshipType) || other.relationshipType == relationshipType)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user1Id,user2Id,relationshipType,homeId,createdAt);

@override
String toString() {
  return 'Relationship(id: $id, user1Id: $user1Id, user2Id: $user2Id, relationshipType: $relationshipType, homeId: $homeId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RelationshipCopyWith<$Res> implements $RelationshipCopyWith<$Res> {
  factory _$RelationshipCopyWith(_Relationship value, $Res Function(_Relationship) _then) = __$RelationshipCopyWithImpl;
@override @useResult
$Res call({
 String id, String user1Id, String user2Id, String relationshipType, String? homeId, DateTime createdAt
});




}
/// @nodoc
class __$RelationshipCopyWithImpl<$Res>
    implements _$RelationshipCopyWith<$Res> {
  __$RelationshipCopyWithImpl(this._self, this._then);

  final _Relationship _self;
  final $Res Function(_Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user1Id = null,Object? user2Id = null,Object? relationshipType = null,Object? homeId = freezed,Object? createdAt = null,}) {
  return _then(_Relationship(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user1Id: null == user1Id ? _self.user1Id : user1Id // ignore: cast_nullable_to_non_nullable
as String,user2Id: null == user2Id ? _self.user2Id : user2Id // ignore: cast_nullable_to_non_nullable
as String,relationshipType: null == relationshipType ? _self.relationshipType : relationshipType // ignore: cast_nullable_to_non_nullable
as String,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
