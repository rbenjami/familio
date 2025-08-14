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

@Id() String get id; String get homeId; String? get invitedEmail; String? get invitedUserName; String get invitedBy; InvitationStatus get status; DateTime get createdAt; DateTime get expiresAt; String get invitationCode;
/// Create a copy of Invitation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationCopyWith<Invitation> get copyWith => _$InvitationCopyWithImpl<Invitation>(this as Invitation, _$identity);

  /// Serializes this Invitation to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.invitedEmail, invitedEmail) || other.invitedEmail == invitedEmail)&&(identical(other.invitedUserName, invitedUserName) || other.invitedUserName == invitedUserName)&&(identical(other.invitedBy, invitedBy) || other.invitedBy == invitedBy)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.invitationCode, invitationCode) || other.invitationCode == invitationCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,invitedEmail,invitedUserName,invitedBy,status,createdAt,expiresAt,invitationCode);

@override
String toString() {
  return 'Invitation(id: $id, homeId: $homeId, invitedEmail: $invitedEmail, invitedUserName: $invitedUserName, invitedBy: $invitedBy, status: $status, createdAt: $createdAt, expiresAt: $expiresAt, invitationCode: $invitationCode)';
}


}

/// @nodoc
abstract mixin class $InvitationCopyWith<$Res>  {
  factory $InvitationCopyWith(Invitation value, $Res Function(Invitation) _then) = _$InvitationCopyWithImpl;
@useResult
$Res call({
@Id() String id, String homeId, String? invitedEmail, String? invitedUserName, String invitedBy, InvitationStatus status, DateTime createdAt, DateTime expiresAt, String invitationCode
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? homeId = null,Object? invitedEmail = freezed,Object? invitedUserName = freezed,Object? invitedBy = null,Object? status = null,Object? createdAt = null,Object? expiresAt = null,Object? invitationCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,invitedEmail: freezed == invitedEmail ? _self.invitedEmail : invitedEmail // ignore: cast_nullable_to_non_nullable
as String?,invitedUserName: freezed == invitedUserName ? _self.invitedUserName : invitedUserName // ignore: cast_nullable_to_non_nullable
as String?,invitedBy: null == invitedBy ? _self.invitedBy : invitedBy // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvitationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,invitationCode: null == invitationCode ? _self.invitationCode : invitationCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _Invitation implements Invitation {
  const _Invitation({@Id() required this.id, required this.homeId, this.invitedEmail, this.invitedUserName, required this.invitedBy, required this.status, required this.createdAt, required this.expiresAt, required this.invitationCode});
  factory _Invitation.fromJson(Map<String, dynamic> json) => _$InvitationFromJson(json);

@override@Id() final  String id;
@override final  String homeId;
@override final  String? invitedEmail;
@override final  String? invitedUserName;
@override final  String invitedBy;
@override final  InvitationStatus status;
@override final  DateTime createdAt;
@override final  DateTime expiresAt;
@override final  String invitationCode;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Invitation&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.invitedEmail, invitedEmail) || other.invitedEmail == invitedEmail)&&(identical(other.invitedUserName, invitedUserName) || other.invitedUserName == invitedUserName)&&(identical(other.invitedBy, invitedBy) || other.invitedBy == invitedBy)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.invitationCode, invitationCode) || other.invitationCode == invitationCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,invitedEmail,invitedUserName,invitedBy,status,createdAt,expiresAt,invitationCode);

@override
String toString() {
  return 'Invitation(id: $id, homeId: $homeId, invitedEmail: $invitedEmail, invitedUserName: $invitedUserName, invitedBy: $invitedBy, status: $status, createdAt: $createdAt, expiresAt: $expiresAt, invitationCode: $invitationCode)';
}


}

/// @nodoc
abstract mixin class _$InvitationCopyWith<$Res> implements $InvitationCopyWith<$Res> {
  factory _$InvitationCopyWith(_Invitation value, $Res Function(_Invitation) _then) = __$InvitationCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String homeId, String? invitedEmail, String? invitedUserName, String invitedBy, InvitationStatus status, DateTime createdAt, DateTime expiresAt, String invitationCode
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? homeId = null,Object? invitedEmail = freezed,Object? invitedUserName = freezed,Object? invitedBy = null,Object? status = null,Object? createdAt = null,Object? expiresAt = null,Object? invitationCode = null,}) {
  return _then(_Invitation(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,invitedEmail: freezed == invitedEmail ? _self.invitedEmail : invitedEmail // ignore: cast_nullable_to_non_nullable
as String?,invitedUserName: freezed == invitedUserName ? _self.invitedUserName : invitedUserName // ignore: cast_nullable_to_non_nullable
as String?,invitedBy: null == invitedBy ? _self.invitedBy : invitedBy // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InvitationStatus,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: null == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime,invitationCode: null == invitationCode ? _self.invitationCode : invitationCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
