// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {

@Id() String get id; String get name; String? get avatar; DateTime? get birthDate; String? get firebaseAuthId; List<String> get homeIds; List<String>? get relationshipIds;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.firebaseAuthId, firebaseAuthId) || other.firebaseAuthId == firebaseAuthId)&&const DeepCollectionEquality().equals(other.homeIds, homeIds)&&const DeepCollectionEquality().equals(other.relationshipIds, relationshipIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar,birthDate,firebaseAuthId,const DeepCollectionEquality().hash(homeIds),const DeepCollectionEquality().hash(relationshipIds));

@override
String toString() {
  return 'User(id: $id, name: $name, avatar: $avatar, birthDate: $birthDate, firebaseAuthId: $firebaseAuthId, homeIds: $homeIds, relationshipIds: $relationshipIds)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
@Id() String id, String name, String? avatar, DateTime? birthDate, String? firebaseAuthId, List<String> homeIds, List<String>? relationshipIds
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? birthDate = freezed,Object? firebaseAuthId = freezed,Object? homeIds = null,Object? relationshipIds = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,firebaseAuthId: freezed == firebaseAuthId ? _self.firebaseAuthId : firebaseAuthId // ignore: cast_nullable_to_non_nullable
as String?,homeIds: null == homeIds ? _self.homeIds : homeIds // ignore: cast_nullable_to_non_nullable
as List<String>,relationshipIds: freezed == relationshipIds ? _self.relationshipIds : relationshipIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _User implements User {
  const _User({@Id() required this.id, required this.name, this.avatar, this.birthDate, this.firebaseAuthId, required final  List<String> homeIds, final  List<String>? relationshipIds}): _homeIds = homeIds,_relationshipIds = relationshipIds;
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override@Id() final  String id;
@override final  String name;
@override final  String? avatar;
@override final  DateTime? birthDate;
@override final  String? firebaseAuthId;
 final  List<String> _homeIds;
@override List<String> get homeIds {
  if (_homeIds is EqualUnmodifiableListView) return _homeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_homeIds);
}

 final  List<String>? _relationshipIds;
@override List<String>? get relationshipIds {
  final value = _relationshipIds;
  if (value == null) return null;
  if (_relationshipIds is EqualUnmodifiableListView) return _relationshipIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.firebaseAuthId, firebaseAuthId) || other.firebaseAuthId == firebaseAuthId)&&const DeepCollectionEquality().equals(other._homeIds, _homeIds)&&const DeepCollectionEquality().equals(other._relationshipIds, _relationshipIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatar,birthDate,firebaseAuthId,const DeepCollectionEquality().hash(_homeIds),const DeepCollectionEquality().hash(_relationshipIds));

@override
String toString() {
  return 'User(id: $id, name: $name, avatar: $avatar, birthDate: $birthDate, firebaseAuthId: $firebaseAuthId, homeIds: $homeIds, relationshipIds: $relationshipIds)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String name, String? avatar, DateTime? birthDate, String? firebaseAuthId, List<String> homeIds, List<String>? relationshipIds
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatar = freezed,Object? birthDate = freezed,Object? firebaseAuthId = freezed,Object? homeIds = null,Object? relationshipIds = freezed,}) {
  return _then(_User(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,birthDate: freezed == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as DateTime?,firebaseAuthId: freezed == firebaseAuthId ? _self.firebaseAuthId : firebaseAuthId // ignore: cast_nullable_to_non_nullable
as String?,homeIds: null == homeIds ? _self._homeIds : homeIds // ignore: cast_nullable_to_non_nullable
as List<String>,relationshipIds: freezed == relationshipIds ? _self._relationshipIds : relationshipIds // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}


/// @nodoc
mixin _$Calendar {

@Id() String get id; String get name; bool get isVisibleInHome; String get color; CalendarType get type;// For external calendars
 String? get externalId; String? get accessToken; String? get refreshToken; DateTime? get lastSyncAt; bool get syncEnabled;// For internal calendars
 String? get homeId;
/// Create a copy of Calendar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarCopyWith<Calendar> get copyWith => _$CalendarCopyWithImpl<Calendar>(this as Calendar, _$identity);

  /// Serializes this Calendar to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Calendar&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isVisibleInHome, isVisibleInHome) || other.isVisibleInHome == isVisibleInHome)&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.lastSyncAt, lastSyncAt) || other.lastSyncAt == lastSyncAt)&&(identical(other.syncEnabled, syncEnabled) || other.syncEnabled == syncEnabled)&&(identical(other.homeId, homeId) || other.homeId == homeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isVisibleInHome,color,type,externalId,accessToken,refreshToken,lastSyncAt,syncEnabled,homeId);

@override
String toString() {
  return 'Calendar(id: $id, name: $name, isVisibleInHome: $isVisibleInHome, color: $color, type: $type, externalId: $externalId, accessToken: $accessToken, refreshToken: $refreshToken, lastSyncAt: $lastSyncAt, syncEnabled: $syncEnabled, homeId: $homeId)';
}


}

/// @nodoc
abstract mixin class $CalendarCopyWith<$Res>  {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) _then) = _$CalendarCopyWithImpl;
@useResult
$Res call({
@Id() String id, String name, bool isVisibleInHome, String color, CalendarType type, String? externalId, String? accessToken, String? refreshToken, DateTime? lastSyncAt, bool syncEnabled, String? homeId
});




}
/// @nodoc
class _$CalendarCopyWithImpl<$Res>
    implements $CalendarCopyWith<$Res> {
  _$CalendarCopyWithImpl(this._self, this._then);

  final Calendar _self;
  final $Res Function(Calendar) _then;

/// Create a copy of Calendar
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? isVisibleInHome = null,Object? color = null,Object? type = null,Object? externalId = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? lastSyncAt = freezed,Object? syncEnabled = null,Object? homeId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isVisibleInHome: null == isVisibleInHome ? _self.isVisibleInHome : isVisibleInHome // ignore: cast_nullable_to_non_nullable
as bool,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CalendarType,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,lastSyncAt: freezed == lastSyncAt ? _self.lastSyncAt : lastSyncAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncEnabled: null == syncEnabled ? _self.syncEnabled : syncEnabled // ignore: cast_nullable_to_non_nullable
as bool,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _Calendar implements Calendar {
  const _Calendar({@Id() required this.id, required this.name, required this.isVisibleInHome, required this.color, required this.type, this.externalId, this.accessToken, this.refreshToken, this.lastSyncAt, this.syncEnabled = true, this.homeId});
  factory _Calendar.fromJson(Map<String, dynamic> json) => _$CalendarFromJson(json);

@override@Id() final  String id;
@override final  String name;
@override final  bool isVisibleInHome;
@override final  String color;
@override final  CalendarType type;
// For external calendars
@override final  String? externalId;
@override final  String? accessToken;
@override final  String? refreshToken;
@override final  DateTime? lastSyncAt;
@override@JsonKey() final  bool syncEnabled;
// For internal calendars
@override final  String? homeId;

/// Create a copy of Calendar
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarCopyWith<_Calendar> get copyWith => __$CalendarCopyWithImpl<_Calendar>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CalendarToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Calendar&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.isVisibleInHome, isVisibleInHome) || other.isVisibleInHome == isVisibleInHome)&&(identical(other.color, color) || other.color == color)&&(identical(other.type, type) || other.type == type)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.lastSyncAt, lastSyncAt) || other.lastSyncAt == lastSyncAt)&&(identical(other.syncEnabled, syncEnabled) || other.syncEnabled == syncEnabled)&&(identical(other.homeId, homeId) || other.homeId == homeId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,isVisibleInHome,color,type,externalId,accessToken,refreshToken,lastSyncAt,syncEnabled,homeId);

@override
String toString() {
  return 'Calendar(id: $id, name: $name, isVisibleInHome: $isVisibleInHome, color: $color, type: $type, externalId: $externalId, accessToken: $accessToken, refreshToken: $refreshToken, lastSyncAt: $lastSyncAt, syncEnabled: $syncEnabled, homeId: $homeId)';
}


}

/// @nodoc
abstract mixin class _$CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$CalendarCopyWith(_Calendar value, $Res Function(_Calendar) _then) = __$CalendarCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String name, bool isVisibleInHome, String color, CalendarType type, String? externalId, String? accessToken, String? refreshToken, DateTime? lastSyncAt, bool syncEnabled, String? homeId
});




}
/// @nodoc
class __$CalendarCopyWithImpl<$Res>
    implements _$CalendarCopyWith<$Res> {
  __$CalendarCopyWithImpl(this._self, this._then);

  final _Calendar _self;
  final $Res Function(_Calendar) _then;

/// Create a copy of Calendar
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? isVisibleInHome = null,Object? color = null,Object? type = null,Object? externalId = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? lastSyncAt = freezed,Object? syncEnabled = null,Object? homeId = freezed,}) {
  return _then(_Calendar(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isVisibleInHome: null == isVisibleInHome ? _self.isVisibleInHome : isVisibleInHome // ignore: cast_nullable_to_non_nullable
as bool,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as CalendarType,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,lastSyncAt: freezed == lastSyncAt ? _self.lastSyncAt : lastSyncAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncEnabled: null == syncEnabled ? _self.syncEnabled : syncEnabled // ignore: cast_nullable_to_non_nullable
as bool,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Event {

@Id() String get id; String get title; String? get description; DateTime get startDate; DateTime? get endDate; bool get isAllDay; EventSource get source; String? get externalEventId; bool get canEdit; List<String>? get attendeeUserIds; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCopyWith<Event> get copyWith => _$EventCopyWithImpl<Event>(this as Event, _$identity);

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Event&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isAllDay, isAllDay) || other.isAllDay == isAllDay)&&(identical(other.source, source) || other.source == source)&&(identical(other.externalEventId, externalEventId) || other.externalEventId == externalEventId)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit)&&const DeepCollectionEquality().equals(other.attendeeUserIds, attendeeUserIds)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,startDate,endDate,isAllDay,source,externalEventId,canEdit,const DeepCollectionEquality().hash(attendeeUserIds),createdAt,updatedAt);

@override
String toString() {
  return 'Event(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, isAllDay: $isAllDay, source: $source, externalEventId: $externalEventId, canEdit: $canEdit, attendeeUserIds: $attendeeUserIds, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EventCopyWith<$Res>  {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) = _$EventCopyWithImpl;
@useResult
$Res call({
@Id() String id, String title, String? description, DateTime startDate, DateTime? endDate, bool isAllDay, EventSource source, String? externalEventId, bool canEdit, List<String>? attendeeUserIds, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$EventCopyWithImpl<$Res>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._self, this._then);

  final Event _self;
  final $Res Function(Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? startDate = null,Object? endDate = freezed,Object? isAllDay = null,Object? source = null,Object? externalEventId = freezed,Object? canEdit = null,Object? attendeeUserIds = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isAllDay: null == isAllDay ? _self.isAllDay : isAllDay // ignore: cast_nullable_to_non_nullable
as bool,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as EventSource,externalEventId: freezed == externalEventId ? _self.externalEventId : externalEventId // ignore: cast_nullable_to_non_nullable
as String?,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,attendeeUserIds: freezed == attendeeUserIds ? _self.attendeeUserIds : attendeeUserIds // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _Event implements Event {
  const _Event({@Id() required this.id, required this.title, this.description, required this.startDate, this.endDate, required this.isAllDay, required this.source, this.externalEventId, required this.canEdit, final  List<String>? attendeeUserIds, required this.createdAt, required this.updatedAt}): _attendeeUserIds = attendeeUserIds;
  factory _Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

@override@Id() final  String id;
@override final  String title;
@override final  String? description;
@override final  DateTime startDate;
@override final  DateTime? endDate;
@override final  bool isAllDay;
@override final  EventSource source;
@override final  String? externalEventId;
@override final  bool canEdit;
 final  List<String>? _attendeeUserIds;
@override List<String>? get attendeeUserIds {
  final value = _attendeeUserIds;
  if (value == null) return null;
  if (_attendeeUserIds is EqualUnmodifiableListView) return _attendeeUserIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventCopyWith<_Event> get copyWith => __$EventCopyWithImpl<_Event>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isAllDay, isAllDay) || other.isAllDay == isAllDay)&&(identical(other.source, source) || other.source == source)&&(identical(other.externalEventId, externalEventId) || other.externalEventId == externalEventId)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit)&&const DeepCollectionEquality().equals(other._attendeeUserIds, _attendeeUserIds)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,startDate,endDate,isAllDay,source,externalEventId,canEdit,const DeepCollectionEquality().hash(_attendeeUserIds),createdAt,updatedAt);

@override
String toString() {
  return 'Event(id: $id, title: $title, description: $description, startDate: $startDate, endDate: $endDate, isAllDay: $isAllDay, source: $source, externalEventId: $externalEventId, canEdit: $canEdit, attendeeUserIds: $attendeeUserIds, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String title, String? description, DateTime startDate, DateTime? endDate, bool isAllDay, EventSource source, String? externalEventId, bool canEdit, List<String>? attendeeUserIds, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(this._self, this._then);

  final _Event _self;
  final $Res Function(_Event) _then;

/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? startDate = null,Object? endDate = freezed,Object? isAllDay = null,Object? source = null,Object? externalEventId = freezed,Object? canEdit = null,Object? attendeeUserIds = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Event(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isAllDay: null == isAllDay ? _self.isAllDay : isAllDay // ignore: cast_nullable_to_non_nullable
as bool,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as EventSource,externalEventId: freezed == externalEventId ? _self.externalEventId : externalEventId // ignore: cast_nullable_to_non_nullable
as String?,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,attendeeUserIds: freezed == attendeeUserIds ? _self._attendeeUserIds : attendeeUserIds // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
