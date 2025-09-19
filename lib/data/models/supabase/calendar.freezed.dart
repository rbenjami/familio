// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Calendar {

 String get id; String get userId; String get name; bool get isVisibleInHome; String get color; String get calendarType; String? get externalId; String? get accessToken; String? get refreshToken; DateTime? get lastSyncAt; bool get syncEnabled; String? get homeId; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Calendar
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarCopyWith<Calendar> get copyWith => _$CalendarCopyWithImpl<Calendar>(this as Calendar, _$identity);

  /// Serializes this Calendar to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Calendar&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.isVisibleInHome, isVisibleInHome) || other.isVisibleInHome == isVisibleInHome)&&(identical(other.color, color) || other.color == color)&&(identical(other.calendarType, calendarType) || other.calendarType == calendarType)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.lastSyncAt, lastSyncAt) || other.lastSyncAt == lastSyncAt)&&(identical(other.syncEnabled, syncEnabled) || other.syncEnabled == syncEnabled)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,isVisibleInHome,color,calendarType,externalId,accessToken,refreshToken,lastSyncAt,syncEnabled,homeId,createdAt,updatedAt);

@override
String toString() {
  return 'Calendar(id: $id, userId: $userId, name: $name, isVisibleInHome: $isVisibleInHome, color: $color, calendarType: $calendarType, externalId: $externalId, accessToken: $accessToken, refreshToken: $refreshToken, lastSyncAt: $lastSyncAt, syncEnabled: $syncEnabled, homeId: $homeId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $CalendarCopyWith<$Res>  {
  factory $CalendarCopyWith(Calendar value, $Res Function(Calendar) _then) = _$CalendarCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String name, bool isVisibleInHome, String color, String calendarType, String? externalId, String? accessToken, String? refreshToken, DateTime? lastSyncAt, bool syncEnabled, String? homeId, DateTime createdAt, DateTime updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? isVisibleInHome = null,Object? color = null,Object? calendarType = null,Object? externalId = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? lastSyncAt = freezed,Object? syncEnabled = null,Object? homeId = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isVisibleInHome: null == isVisibleInHome ? _self.isVisibleInHome : isVisibleInHome // ignore: cast_nullable_to_non_nullable
as bool,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,calendarType: null == calendarType ? _self.calendarType : calendarType // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,lastSyncAt: freezed == lastSyncAt ? _self.lastSyncAt : lastSyncAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncEnabled: null == syncEnabled ? _self.syncEnabled : syncEnabled // ignore: cast_nullable_to_non_nullable
as bool,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Calendar implements Calendar {
  const _Calendar({required this.id, required this.userId, required this.name, required this.isVisibleInHome, required this.color, required this.calendarType, this.externalId, this.accessToken, this.refreshToken, this.lastSyncAt, required this.syncEnabled, this.homeId, required this.createdAt, required this.updatedAt});
  factory _Calendar.fromJson(Map<String, dynamic> json) => _$CalendarFromJson(json);

@override final  String id;
@override final  String userId;
@override final  String name;
@override final  bool isVisibleInHome;
@override final  String color;
@override final  String calendarType;
@override final  String? externalId;
@override final  String? accessToken;
@override final  String? refreshToken;
@override final  DateTime? lastSyncAt;
@override final  bool syncEnabled;
@override final  String? homeId;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Calendar&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.name, name) || other.name == name)&&(identical(other.isVisibleInHome, isVisibleInHome) || other.isVisibleInHome == isVisibleInHome)&&(identical(other.color, color) || other.color == color)&&(identical(other.calendarType, calendarType) || other.calendarType == calendarType)&&(identical(other.externalId, externalId) || other.externalId == externalId)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.lastSyncAt, lastSyncAt) || other.lastSyncAt == lastSyncAt)&&(identical(other.syncEnabled, syncEnabled) || other.syncEnabled == syncEnabled)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,name,isVisibleInHome,color,calendarType,externalId,accessToken,refreshToken,lastSyncAt,syncEnabled,homeId,createdAt,updatedAt);

@override
String toString() {
  return 'Calendar(id: $id, userId: $userId, name: $name, isVisibleInHome: $isVisibleInHome, color: $color, calendarType: $calendarType, externalId: $externalId, accessToken: $accessToken, refreshToken: $refreshToken, lastSyncAt: $lastSyncAt, syncEnabled: $syncEnabled, homeId: $homeId, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$CalendarCopyWith<$Res> implements $CalendarCopyWith<$Res> {
  factory _$CalendarCopyWith(_Calendar value, $Res Function(_Calendar) _then) = __$CalendarCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String name, bool isVisibleInHome, String color, String calendarType, String? externalId, String? accessToken, String? refreshToken, DateTime? lastSyncAt, bool syncEnabled, String? homeId, DateTime createdAt, DateTime updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? name = null,Object? isVisibleInHome = null,Object? color = null,Object? calendarType = null,Object? externalId = freezed,Object? accessToken = freezed,Object? refreshToken = freezed,Object? lastSyncAt = freezed,Object? syncEnabled = null,Object? homeId = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Calendar(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,isVisibleInHome: null == isVisibleInHome ? _self.isVisibleInHome : isVisibleInHome // ignore: cast_nullable_to_non_nullable
as bool,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,calendarType: null == calendarType ? _self.calendarType : calendarType // ignore: cast_nullable_to_non_nullable
as String,externalId: freezed == externalId ? _self.externalId : externalId // ignore: cast_nullable_to_non_nullable
as String?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,lastSyncAt: freezed == lastSyncAt ? _self.lastSyncAt : lastSyncAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncEnabled: null == syncEnabled ? _self.syncEnabled : syncEnabled // ignore: cast_nullable_to_non_nullable
as bool,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$Event {

 String get id; String get calendarId; String get title; String? get description; DateTime get startDate; DateTime? get endDate; bool get isAllDay; String get source; String? get externalEventId; bool get canEdit; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Event
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventCopyWith<Event> get copyWith => _$EventCopyWithImpl<Event>(this as Event, _$identity);

  /// Serializes this Event to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Event&&(identical(other.id, id) || other.id == id)&&(identical(other.calendarId, calendarId) || other.calendarId == calendarId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isAllDay, isAllDay) || other.isAllDay == isAllDay)&&(identical(other.source, source) || other.source == source)&&(identical(other.externalEventId, externalEventId) || other.externalEventId == externalEventId)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,calendarId,title,description,startDate,endDate,isAllDay,source,externalEventId,canEdit,createdAt,updatedAt);

@override
String toString() {
  return 'Event(id: $id, calendarId: $calendarId, title: $title, description: $description, startDate: $startDate, endDate: $endDate, isAllDay: $isAllDay, source: $source, externalEventId: $externalEventId, canEdit: $canEdit, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EventCopyWith<$Res>  {
  factory $EventCopyWith(Event value, $Res Function(Event) _then) = _$EventCopyWithImpl;
@useResult
$Res call({
 String id, String calendarId, String title, String? description, DateTime startDate, DateTime? endDate, bool isAllDay, String source, String? externalEventId, bool canEdit, DateTime createdAt, DateTime updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? calendarId = null,Object? title = null,Object? description = freezed,Object? startDate = null,Object? endDate = freezed,Object? isAllDay = null,Object? source = null,Object? externalEventId = freezed,Object? canEdit = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,calendarId: null == calendarId ? _self.calendarId : calendarId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isAllDay: null == isAllDay ? _self.isAllDay : isAllDay // ignore: cast_nullable_to_non_nullable
as bool,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,externalEventId: freezed == externalEventId ? _self.externalEventId : externalEventId // ignore: cast_nullable_to_non_nullable
as String?,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Event implements Event {
  const _Event({required this.id, required this.calendarId, required this.title, this.description, required this.startDate, this.endDate, required this.isAllDay, required this.source, this.externalEventId, required this.canEdit, required this.createdAt, required this.updatedAt});
  factory _Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);

@override final  String id;
@override final  String calendarId;
@override final  String title;
@override final  String? description;
@override final  DateTime startDate;
@override final  DateTime? endDate;
@override final  bool isAllDay;
@override final  String source;
@override final  String? externalEventId;
@override final  bool canEdit;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Event&&(identical(other.id, id) || other.id == id)&&(identical(other.calendarId, calendarId) || other.calendarId == calendarId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isAllDay, isAllDay) || other.isAllDay == isAllDay)&&(identical(other.source, source) || other.source == source)&&(identical(other.externalEventId, externalEventId) || other.externalEventId == externalEventId)&&(identical(other.canEdit, canEdit) || other.canEdit == canEdit)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,calendarId,title,description,startDate,endDate,isAllDay,source,externalEventId,canEdit,createdAt,updatedAt);

@override
String toString() {
  return 'Event(id: $id, calendarId: $calendarId, title: $title, description: $description, startDate: $startDate, endDate: $endDate, isAllDay: $isAllDay, source: $source, externalEventId: $externalEventId, canEdit: $canEdit, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) _then) = __$EventCopyWithImpl;
@override @useResult
$Res call({
 String id, String calendarId, String title, String? description, DateTime startDate, DateTime? endDate, bool isAllDay, String source, String? externalEventId, bool canEdit, DateTime createdAt, DateTime updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? calendarId = null,Object? title = null,Object? description = freezed,Object? startDate = null,Object? endDate = freezed,Object? isAllDay = null,Object? source = null,Object? externalEventId = freezed,Object? canEdit = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Event(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,calendarId: null == calendarId ? _self.calendarId : calendarId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,isAllDay: null == isAllDay ? _self.isAllDay : isAllDay // ignore: cast_nullable_to_non_nullable
as bool,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,externalEventId: freezed == externalEventId ? _self.externalEventId : externalEventId // ignore: cast_nullable_to_non_nullable
as String?,canEdit: null == canEdit ? _self.canEdit : canEdit // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$EventAttendee {

 String get id; String get eventId; String get userId; DateTime get createdAt;
/// Create a copy of EventAttendee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventAttendeeCopyWith<EventAttendee> get copyWith => _$EventAttendeeCopyWithImpl<EventAttendee>(this as EventAttendee, _$identity);

  /// Serializes this EventAttendee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventAttendee&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventId,userId,createdAt);

@override
String toString() {
  return 'EventAttendee(id: $id, eventId: $eventId, userId: $userId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $EventAttendeeCopyWith<$Res>  {
  factory $EventAttendeeCopyWith(EventAttendee value, $Res Function(EventAttendee) _then) = _$EventAttendeeCopyWithImpl;
@useResult
$Res call({
 String id, String eventId, String userId, DateTime createdAt
});




}
/// @nodoc
class _$EventAttendeeCopyWithImpl<$Res>
    implements $EventAttendeeCopyWith<$Res> {
  _$EventAttendeeCopyWithImpl(this._self, this._then);

  final EventAttendee _self;
  final $Res Function(EventAttendee) _then;

/// Create a copy of EventAttendee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? eventId = null,Object? userId = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EventAttendee implements EventAttendee {
  const _EventAttendee({required this.id, required this.eventId, required this.userId, required this.createdAt});
  factory _EventAttendee.fromJson(Map<String, dynamic> json) => _$EventAttendeeFromJson(json);

@override final  String id;
@override final  String eventId;
@override final  String userId;
@override final  DateTime createdAt;

/// Create a copy of EventAttendee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventAttendeeCopyWith<_EventAttendee> get copyWith => __$EventAttendeeCopyWithImpl<_EventAttendee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventAttendeeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventAttendee&&(identical(other.id, id) || other.id == id)&&(identical(other.eventId, eventId) || other.eventId == eventId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,eventId,userId,createdAt);

@override
String toString() {
  return 'EventAttendee(id: $id, eventId: $eventId, userId: $userId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$EventAttendeeCopyWith<$Res> implements $EventAttendeeCopyWith<$Res> {
  factory _$EventAttendeeCopyWith(_EventAttendee value, $Res Function(_EventAttendee) _then) = __$EventAttendeeCopyWithImpl;
@override @useResult
$Res call({
 String id, String eventId, String userId, DateTime createdAt
});




}
/// @nodoc
class __$EventAttendeeCopyWithImpl<$Res>
    implements _$EventAttendeeCopyWith<$Res> {
  __$EventAttendeeCopyWithImpl(this._self, this._then);

  final _EventAttendee _self;
  final $Res Function(_EventAttendee) _then;

/// Create a copy of EventAttendee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? eventId = null,Object? userId = null,Object? createdAt = null,}) {
  return _then(_EventAttendee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,eventId: null == eventId ? _self.eventId : eventId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
