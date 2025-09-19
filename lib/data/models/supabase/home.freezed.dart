// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Home {

 String get id; String get name; String? get description; String get ownerId; bool get allowMemberInvite; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCopyWith<Home> get copyWith => _$HomeCopyWithImpl<Home>(this as Home, _$identity);

  /// Serializes this Home to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Home&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.allowMemberInvite, allowMemberInvite) || other.allowMemberInvite == allowMemberInvite)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,ownerId,allowMemberInvite,createdAt,updatedAt);

@override
String toString() {
  return 'Home(id: $id, name: $name, description: $description, ownerId: $ownerId, allowMemberInvite: $allowMemberInvite, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HomeCopyWith<$Res>  {
  factory $HomeCopyWith(Home value, $Res Function(Home) _then) = _$HomeCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String ownerId, bool allowMemberInvite, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$HomeCopyWithImpl<$Res>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._self, this._then);

  final Home _self;
  final $Res Function(Home) _then;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? ownerId = null,Object? allowMemberInvite = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,allowMemberInvite: null == allowMemberInvite ? _self.allowMemberInvite : allowMemberInvite // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Home implements Home {
  const _Home({required this.id, required this.name, this.description, required this.ownerId, required this.allowMemberInvite, required this.createdAt, required this.updatedAt});
  factory _Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String ownerId;
@override final  bool allowMemberInvite;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeCopyWith<_Home> get copyWith => __$HomeCopyWithImpl<_Home>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Home&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.allowMemberInvite, allowMemberInvite) || other.allowMemberInvite == allowMemberInvite)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,ownerId,allowMemberInvite,createdAt,updatedAt);

@override
String toString() {
  return 'Home(id: $id, name: $name, description: $description, ownerId: $ownerId, allowMemberInvite: $allowMemberInvite, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) _then) = __$HomeCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String ownerId, bool allowMemberInvite, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(this._self, this._then);

  final _Home _self;
  final $Res Function(_Home) _then;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? ownerId = null,Object? allowMemberInvite = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Home(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,allowMemberInvite: null == allowMemberInvite ? _self.allowMemberInvite : allowMemberInvite // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$HomeMember {

 String get id; String get homeId; String get userId; bool get canCreateTasks; bool get canEditTasks; bool get canDeleteTasks; bool get canInviteMembers; bool get canViewAllCalendars; bool get isAdmin; DateTime get joinedAt;
/// Create a copy of HomeMember
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeMemberCopyWith<HomeMember> get copyWith => _$HomeMemberCopyWithImpl<HomeMember>(this as HomeMember, _$identity);

  /// Serializes this HomeMember to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeMember&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.canCreateTasks, canCreateTasks) || other.canCreateTasks == canCreateTasks)&&(identical(other.canEditTasks, canEditTasks) || other.canEditTasks == canEditTasks)&&(identical(other.canDeleteTasks, canDeleteTasks) || other.canDeleteTasks == canDeleteTasks)&&(identical(other.canInviteMembers, canInviteMembers) || other.canInviteMembers == canInviteMembers)&&(identical(other.canViewAllCalendars, canViewAllCalendars) || other.canViewAllCalendars == canViewAllCalendars)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,userId,canCreateTasks,canEditTasks,canDeleteTasks,canInviteMembers,canViewAllCalendars,isAdmin,joinedAt);

@override
String toString() {
  return 'HomeMember(id: $id, homeId: $homeId, userId: $userId, canCreateTasks: $canCreateTasks, canEditTasks: $canEditTasks, canDeleteTasks: $canDeleteTasks, canInviteMembers: $canInviteMembers, canViewAllCalendars: $canViewAllCalendars, isAdmin: $isAdmin, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $HomeMemberCopyWith<$Res>  {
  factory $HomeMemberCopyWith(HomeMember value, $Res Function(HomeMember) _then) = _$HomeMemberCopyWithImpl;
@useResult
$Res call({
 String id, String homeId, String userId, bool canCreateTasks, bool canEditTasks, bool canDeleteTasks, bool canInviteMembers, bool canViewAllCalendars, bool isAdmin, DateTime joinedAt
});




}
/// @nodoc
class _$HomeMemberCopyWithImpl<$Res>
    implements $HomeMemberCopyWith<$Res> {
  _$HomeMemberCopyWithImpl(this._self, this._then);

  final HomeMember _self;
  final $Res Function(HomeMember) _then;

/// Create a copy of HomeMember
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? homeId = null,Object? userId = null,Object? canCreateTasks = null,Object? canEditTasks = null,Object? canDeleteTasks = null,Object? canInviteMembers = null,Object? canViewAllCalendars = null,Object? isAdmin = null,Object? joinedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,canCreateTasks: null == canCreateTasks ? _self.canCreateTasks : canCreateTasks // ignore: cast_nullable_to_non_nullable
as bool,canEditTasks: null == canEditTasks ? _self.canEditTasks : canEditTasks // ignore: cast_nullable_to_non_nullable
as bool,canDeleteTasks: null == canDeleteTasks ? _self.canDeleteTasks : canDeleteTasks // ignore: cast_nullable_to_non_nullable
as bool,canInviteMembers: null == canInviteMembers ? _self.canInviteMembers : canInviteMembers // ignore: cast_nullable_to_non_nullable
as bool,canViewAllCalendars: null == canViewAllCalendars ? _self.canViewAllCalendars : canViewAllCalendars // ignore: cast_nullable_to_non_nullable
as bool,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _HomeMember implements HomeMember {
  const _HomeMember({required this.id, required this.homeId, required this.userId, required this.canCreateTasks, required this.canEditTasks, required this.canDeleteTasks, required this.canInviteMembers, required this.canViewAllCalendars, required this.isAdmin, required this.joinedAt});
  factory _HomeMember.fromJson(Map<String, dynamic> json) => _$HomeMemberFromJson(json);

@override final  String id;
@override final  String homeId;
@override final  String userId;
@override final  bool canCreateTasks;
@override final  bool canEditTasks;
@override final  bool canDeleteTasks;
@override final  bool canInviteMembers;
@override final  bool canViewAllCalendars;
@override final  bool isAdmin;
@override final  DateTime joinedAt;

/// Create a copy of HomeMember
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeMemberCopyWith<_HomeMember> get copyWith => __$HomeMemberCopyWithImpl<_HomeMember>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeMemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeMember&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.canCreateTasks, canCreateTasks) || other.canCreateTasks == canCreateTasks)&&(identical(other.canEditTasks, canEditTasks) || other.canEditTasks == canEditTasks)&&(identical(other.canDeleteTasks, canDeleteTasks) || other.canDeleteTasks == canDeleteTasks)&&(identical(other.canInviteMembers, canInviteMembers) || other.canInviteMembers == canInviteMembers)&&(identical(other.canViewAllCalendars, canViewAllCalendars) || other.canViewAllCalendars == canViewAllCalendars)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,userId,canCreateTasks,canEditTasks,canDeleteTasks,canInviteMembers,canViewAllCalendars,isAdmin,joinedAt);

@override
String toString() {
  return 'HomeMember(id: $id, homeId: $homeId, userId: $userId, canCreateTasks: $canCreateTasks, canEditTasks: $canEditTasks, canDeleteTasks: $canDeleteTasks, canInviteMembers: $canInviteMembers, canViewAllCalendars: $canViewAllCalendars, isAdmin: $isAdmin, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$HomeMemberCopyWith<$Res> implements $HomeMemberCopyWith<$Res> {
  factory _$HomeMemberCopyWith(_HomeMember value, $Res Function(_HomeMember) _then) = __$HomeMemberCopyWithImpl;
@override @useResult
$Res call({
 String id, String homeId, String userId, bool canCreateTasks, bool canEditTasks, bool canDeleteTasks, bool canInviteMembers, bool canViewAllCalendars, bool isAdmin, DateTime joinedAt
});




}
/// @nodoc
class __$HomeMemberCopyWithImpl<$Res>
    implements _$HomeMemberCopyWith<$Res> {
  __$HomeMemberCopyWithImpl(this._self, this._then);

  final _HomeMember _self;
  final $Res Function(_HomeMember) _then;

/// Create a copy of HomeMember
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? homeId = null,Object? userId = null,Object? canCreateTasks = null,Object? canEditTasks = null,Object? canDeleteTasks = null,Object? canInviteMembers = null,Object? canViewAllCalendars = null,Object? isAdmin = null,Object? joinedAt = null,}) {
  return _then(_HomeMember(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,canCreateTasks: null == canCreateTasks ? _self.canCreateTasks : canCreateTasks // ignore: cast_nullable_to_non_nullable
as bool,canEditTasks: null == canEditTasks ? _self.canEditTasks : canEditTasks // ignore: cast_nullable_to_non_nullable
as bool,canDeleteTasks: null == canDeleteTasks ? _self.canDeleteTasks : canDeleteTasks // ignore: cast_nullable_to_non_nullable
as bool,canInviteMembers: null == canInviteMembers ? _self.canInviteMembers : canInviteMembers // ignore: cast_nullable_to_non_nullable
as bool,canViewAllCalendars: null == canViewAllCalendars ? _self.canViewAllCalendars : canViewAllCalendars // ignore: cast_nullable_to_non_nullable
as bool,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
