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

@Id() String get id; String get name; String? get description; DateTime get createdAt; String get ownerId; List<String> get memberIds; HomeSettings get settings;
/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCopyWith<Home> get copyWith => _$HomeCopyWithImpl<Home>(this as Home, _$identity);

  /// Serializes this Home to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Home&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other.memberIds, memberIds)&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,ownerId,const DeepCollectionEquality().hash(memberIds),settings);

@override
String toString() {
  return 'Home(id: $id, name: $name, description: $description, createdAt: $createdAt, ownerId: $ownerId, memberIds: $memberIds, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $HomeCopyWith<$Res>  {
  factory $HomeCopyWith(Home value, $Res Function(Home) _then) = _$HomeCopyWithImpl;
@useResult
$Res call({
@Id() String id, String name, String? description, DateTime createdAt, String ownerId, List<String> memberIds, HomeSettings settings
});


$HomeSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class _$HomeCopyWithImpl<$Res>
    implements $HomeCopyWith<$Res> {
  _$HomeCopyWithImpl(this._self, this._then);

  final Home _self;
  final $Res Function(Home) _then;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? ownerId = null,Object? memberIds = null,Object? settings = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,memberIds: null == memberIds ? _self.memberIds : memberIds // ignore: cast_nullable_to_non_nullable
as List<String>,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as HomeSettings,
  ));
}
/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeSettingsCopyWith<$Res> get settings {
  
  return $HomeSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc

@firestoreSerializable
class _Home implements Home {
  const _Home({@Id() required this.id, required this.name, this.description, required this.createdAt, required this.ownerId, required final  List<String> memberIds, required this.settings}): _memberIds = memberIds;
  factory _Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

@override@Id() final  String id;
@override final  String name;
@override final  String? description;
@override final  DateTime createdAt;
@override final  String ownerId;
 final  List<String> _memberIds;
@override List<String> get memberIds {
  if (_memberIds is EqualUnmodifiableListView) return _memberIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_memberIds);
}

@override final  HomeSettings settings;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Home&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&const DeepCollectionEquality().equals(other._memberIds, _memberIds)&&(identical(other.settings, settings) || other.settings == settings));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,ownerId,const DeepCollectionEquality().hash(_memberIds),settings);

@override
String toString() {
  return 'Home(id: $id, name: $name, description: $description, createdAt: $createdAt, ownerId: $ownerId, memberIds: $memberIds, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$HomeCopyWith<$Res> implements $HomeCopyWith<$Res> {
  factory _$HomeCopyWith(_Home value, $Res Function(_Home) _then) = __$HomeCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String name, String? description, DateTime createdAt, String ownerId, List<String> memberIds, HomeSettings settings
});


@override $HomeSettingsCopyWith<$Res> get settings;

}
/// @nodoc
class __$HomeCopyWithImpl<$Res>
    implements _$HomeCopyWith<$Res> {
  __$HomeCopyWithImpl(this._self, this._then);

  final _Home _self;
  final $Res Function(_Home) _then;

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? ownerId = null,Object? memberIds = null,Object? settings = null,}) {
  return _then(_Home(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,memberIds: null == memberIds ? _self._memberIds : memberIds // ignore: cast_nullable_to_non_nullable
as List<String>,settings: null == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as HomeSettings,
  ));
}

/// Create a copy of Home
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeSettingsCopyWith<$Res> get settings {
  
  return $HomeSettingsCopyWith<$Res>(_self.settings, (value) {
    return _then(_self.copyWith(settings: value));
  });
}
}


/// @nodoc
mixin _$Member {

@Id() String get userId; MemberPermissions get permissions; DateTime get joinedAt;
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberCopyWith<Member> get copyWith => _$MemberCopyWithImpl<Member>(this as Member, _$identity);

  /// Serializes this Member to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Member&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.permissions, permissions) || other.permissions == permissions)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,permissions,joinedAt);

@override
String toString() {
  return 'Member(userId: $userId, permissions: $permissions, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $MemberCopyWith<$Res>  {
  factory $MemberCopyWith(Member value, $Res Function(Member) _then) = _$MemberCopyWithImpl;
@useResult
$Res call({
@Id() String userId, MemberPermissions permissions, DateTime joinedAt
});


$MemberPermissionsCopyWith<$Res> get permissions;

}
/// @nodoc
class _$MemberCopyWithImpl<$Res>
    implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._self, this._then);

  final Member _self;
  final $Res Function(Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? permissions = null,Object? joinedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as MemberPermissions,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}
/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberPermissionsCopyWith<$Res> get permissions {
  
  return $MemberPermissionsCopyWith<$Res>(_self.permissions, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// @nodoc

@firestoreSerializable
class _Member implements Member {
  const _Member({@Id() required this.userId, required this.permissions, required this.joinedAt});
  factory _Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

@override@Id() final  String userId;
@override final  MemberPermissions permissions;
@override final  DateTime joinedAt;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberCopyWith<_Member> get copyWith => __$MemberCopyWithImpl<_Member>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Member&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.permissions, permissions) || other.permissions == permissions)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,permissions,joinedAt);

@override
String toString() {
  return 'Member(userId: $userId, permissions: $permissions, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) _then) = __$MemberCopyWithImpl;
@override @useResult
$Res call({
@Id() String userId, MemberPermissions permissions, DateTime joinedAt
});


@override $MemberPermissionsCopyWith<$Res> get permissions;

}
/// @nodoc
class __$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(this._self, this._then);

  final _Member _self;
  final $Res Function(_Member) _then;

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? permissions = null,Object? joinedAt = null,}) {
  return _then(_Member(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as MemberPermissions,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

/// Create a copy of Member
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberPermissionsCopyWith<$Res> get permissions {
  
  return $MemberPermissionsCopyWith<$Res>(_self.permissions, (value) {
    return _then(_self.copyWith(permissions: value));
  });
}
}


/// @nodoc
mixin _$MemberPermissions {

 bool get canCreateTasks; bool get canEditTasks; bool get canDeleteTasks; bool get canInviteMembers; bool get canViewAllCalendars; bool get isAdmin;
/// Create a copy of MemberPermissions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberPermissionsCopyWith<MemberPermissions> get copyWith => _$MemberPermissionsCopyWithImpl<MemberPermissions>(this as MemberPermissions, _$identity);

  /// Serializes this MemberPermissions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberPermissions&&(identical(other.canCreateTasks, canCreateTasks) || other.canCreateTasks == canCreateTasks)&&(identical(other.canEditTasks, canEditTasks) || other.canEditTasks == canEditTasks)&&(identical(other.canDeleteTasks, canDeleteTasks) || other.canDeleteTasks == canDeleteTasks)&&(identical(other.canInviteMembers, canInviteMembers) || other.canInviteMembers == canInviteMembers)&&(identical(other.canViewAllCalendars, canViewAllCalendars) || other.canViewAllCalendars == canViewAllCalendars)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canCreateTasks,canEditTasks,canDeleteTasks,canInviteMembers,canViewAllCalendars,isAdmin);

@override
String toString() {
  return 'MemberPermissions(canCreateTasks: $canCreateTasks, canEditTasks: $canEditTasks, canDeleteTasks: $canDeleteTasks, canInviteMembers: $canInviteMembers, canViewAllCalendars: $canViewAllCalendars, isAdmin: $isAdmin)';
}


}

/// @nodoc
abstract mixin class $MemberPermissionsCopyWith<$Res>  {
  factory $MemberPermissionsCopyWith(MemberPermissions value, $Res Function(MemberPermissions) _then) = _$MemberPermissionsCopyWithImpl;
@useResult
$Res call({
 bool canCreateTasks, bool canEditTasks, bool canDeleteTasks, bool canInviteMembers, bool canViewAllCalendars, bool isAdmin
});




}
/// @nodoc
class _$MemberPermissionsCopyWithImpl<$Res>
    implements $MemberPermissionsCopyWith<$Res> {
  _$MemberPermissionsCopyWithImpl(this._self, this._then);

  final MemberPermissions _self;
  final $Res Function(MemberPermissions) _then;

/// Create a copy of MemberPermissions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canCreateTasks = null,Object? canEditTasks = null,Object? canDeleteTasks = null,Object? canInviteMembers = null,Object? canViewAllCalendars = null,Object? isAdmin = null,}) {
  return _then(_self.copyWith(
canCreateTasks: null == canCreateTasks ? _self.canCreateTasks : canCreateTasks // ignore: cast_nullable_to_non_nullable
as bool,canEditTasks: null == canEditTasks ? _self.canEditTasks : canEditTasks // ignore: cast_nullable_to_non_nullable
as bool,canDeleteTasks: null == canDeleteTasks ? _self.canDeleteTasks : canDeleteTasks // ignore: cast_nullable_to_non_nullable
as bool,canInviteMembers: null == canInviteMembers ? _self.canInviteMembers : canInviteMembers // ignore: cast_nullable_to_non_nullable
as bool,canViewAllCalendars: null == canViewAllCalendars ? _self.canViewAllCalendars : canViewAllCalendars // ignore: cast_nullable_to_non_nullable
as bool,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _MemberPermissions implements MemberPermissions {
  const _MemberPermissions({required this.canCreateTasks, required this.canEditTasks, required this.canDeleteTasks, required this.canInviteMembers, required this.canViewAllCalendars, required this.isAdmin});
  factory _MemberPermissions.fromJson(Map<String, dynamic> json) => _$MemberPermissionsFromJson(json);

@override final  bool canCreateTasks;
@override final  bool canEditTasks;
@override final  bool canDeleteTasks;
@override final  bool canInviteMembers;
@override final  bool canViewAllCalendars;
@override final  bool isAdmin;

/// Create a copy of MemberPermissions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberPermissionsCopyWith<_MemberPermissions> get copyWith => __$MemberPermissionsCopyWithImpl<_MemberPermissions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberPermissionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberPermissions&&(identical(other.canCreateTasks, canCreateTasks) || other.canCreateTasks == canCreateTasks)&&(identical(other.canEditTasks, canEditTasks) || other.canEditTasks == canEditTasks)&&(identical(other.canDeleteTasks, canDeleteTasks) || other.canDeleteTasks == canDeleteTasks)&&(identical(other.canInviteMembers, canInviteMembers) || other.canInviteMembers == canInviteMembers)&&(identical(other.canViewAllCalendars, canViewAllCalendars) || other.canViewAllCalendars == canViewAllCalendars)&&(identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,canCreateTasks,canEditTasks,canDeleteTasks,canInviteMembers,canViewAllCalendars,isAdmin);

@override
String toString() {
  return 'MemberPermissions(canCreateTasks: $canCreateTasks, canEditTasks: $canEditTasks, canDeleteTasks: $canDeleteTasks, canInviteMembers: $canInviteMembers, canViewAllCalendars: $canViewAllCalendars, isAdmin: $isAdmin)';
}


}

/// @nodoc
abstract mixin class _$MemberPermissionsCopyWith<$Res> implements $MemberPermissionsCopyWith<$Res> {
  factory _$MemberPermissionsCopyWith(_MemberPermissions value, $Res Function(_MemberPermissions) _then) = __$MemberPermissionsCopyWithImpl;
@override @useResult
$Res call({
 bool canCreateTasks, bool canEditTasks, bool canDeleteTasks, bool canInviteMembers, bool canViewAllCalendars, bool isAdmin
});




}
/// @nodoc
class __$MemberPermissionsCopyWithImpl<$Res>
    implements _$MemberPermissionsCopyWith<$Res> {
  __$MemberPermissionsCopyWithImpl(this._self, this._then);

  final _MemberPermissions _self;
  final $Res Function(_MemberPermissions) _then;

/// Create a copy of MemberPermissions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canCreateTasks = null,Object? canEditTasks = null,Object? canDeleteTasks = null,Object? canInviteMembers = null,Object? canViewAllCalendars = null,Object? isAdmin = null,}) {
  return _then(_MemberPermissions(
canCreateTasks: null == canCreateTasks ? _self.canCreateTasks : canCreateTasks // ignore: cast_nullable_to_non_nullable
as bool,canEditTasks: null == canEditTasks ? _self.canEditTasks : canEditTasks // ignore: cast_nullable_to_non_nullable
as bool,canDeleteTasks: null == canDeleteTasks ? _self.canDeleteTasks : canDeleteTasks // ignore: cast_nullable_to_non_nullable
as bool,canInviteMembers: null == canInviteMembers ? _self.canInviteMembers : canInviteMembers // ignore: cast_nullable_to_non_nullable
as bool,canViewAllCalendars: null == canViewAllCalendars ? _self.canViewAllCalendars : canViewAllCalendars // ignore: cast_nullable_to_non_nullable
as bool,isAdmin: null == isAdmin ? _self.isAdmin : isAdmin // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Task {

@Id() String get id; String get title; String? get description; String get homeId; List<String> get assignedToIds; String get createdById; TaskStatus get status; DateTime? get dueDate; Priority get priority; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCopyWith<Task> get copyWith => _$TaskCopyWithImpl<Task>(this as Task, _$identity);

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Task&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&const DeepCollectionEquality().equals(other.assignedToIds, assignedToIds)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,homeId,const DeepCollectionEquality().hash(assignedToIds),createdById,status,dueDate,priority,createdAt,updatedAt);

@override
String toString() {
  return 'Task(id: $id, title: $title, description: $description, homeId: $homeId, assignedToIds: $assignedToIds, createdById: $createdById, status: $status, dueDate: $dueDate, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TaskCopyWith<$Res>  {
  factory $TaskCopyWith(Task value, $Res Function(Task) _then) = _$TaskCopyWithImpl;
@useResult
$Res call({
@Id() String id, String title, String? description, String homeId, List<String> assignedToIds, String createdById, TaskStatus status, DateTime? dueDate, Priority priority, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$TaskCopyWithImpl<$Res>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._self, this._then);

  final Task _self;
  final $Res Function(Task) _then;

/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? homeId = null,Object? assignedToIds = null,Object? createdById = null,Object? status = null,Object? dueDate = freezed,Object? priority = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,assignedToIds: null == assignedToIds ? _self.assignedToIds : assignedToIds // ignore: cast_nullable_to_non_nullable
as List<String>,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TaskStatus,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _Task implements Task {
  const _Task({@Id() required this.id, required this.title, this.description, required this.homeId, required final  List<String> assignedToIds, required this.createdById, required this.status, this.dueDate, required this.priority, required this.createdAt, required this.updatedAt}): _assignedToIds = assignedToIds;
  factory _Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

@override@Id() final  String id;
@override final  String title;
@override final  String? description;
@override final  String homeId;
 final  List<String> _assignedToIds;
@override List<String> get assignedToIds {
  if (_assignedToIds is EqualUnmodifiableListView) return _assignedToIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assignedToIds);
}

@override final  String createdById;
@override final  TaskStatus status;
@override final  DateTime? dueDate;
@override final  Priority priority;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskCopyWith<_Task> get copyWith => __$TaskCopyWithImpl<_Task>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Task&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&const DeepCollectionEquality().equals(other._assignedToIds, _assignedToIds)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,homeId,const DeepCollectionEquality().hash(_assignedToIds),createdById,status,dueDate,priority,createdAt,updatedAt);

@override
String toString() {
  return 'Task(id: $id, title: $title, description: $description, homeId: $homeId, assignedToIds: $assignedToIds, createdById: $createdById, status: $status, dueDate: $dueDate, priority: $priority, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) _then) = __$TaskCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String title, String? description, String homeId, List<String> assignedToIds, String createdById, TaskStatus status, DateTime? dueDate, Priority priority, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(this._self, this._then);

  final _Task _self;
  final $Res Function(_Task) _then;

/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? homeId = null,Object? assignedToIds = null,Object? createdById = null,Object? status = null,Object? dueDate = freezed,Object? priority = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Task(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,assignedToIds: null == assignedToIds ? _self._assignedToIds : assignedToIds // ignore: cast_nullable_to_non_nullable
as List<String>,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TaskStatus,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
