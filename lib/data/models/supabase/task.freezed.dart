// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Task {

 String get id; String get homeId; String get title; String? get description; String get createdById; String get status; DateTime? get dueDate; String get priority; String get taskType; DateTime? get startDate; int? get estimatedDurationMinutes; String? get location; List<String> get tags; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of Task
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskCopyWith<Task> get copyWith => _$TaskCopyWithImpl<Task>(this as Task, _$identity);

  /// Serializes this Task to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Task&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.taskType, taskType) || other.taskType == taskType)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.estimatedDurationMinutes, estimatedDurationMinutes) || other.estimatedDurationMinutes == estimatedDurationMinutes)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,title,description,createdById,status,dueDate,priority,taskType,startDate,estimatedDurationMinutes,location,const DeepCollectionEquality().hash(tags),createdAt,updatedAt);

@override
String toString() {
  return 'Task(id: $id, homeId: $homeId, title: $title, description: $description, createdById: $createdById, status: $status, dueDate: $dueDate, priority: $priority, taskType: $taskType, startDate: $startDate, estimatedDurationMinutes: $estimatedDurationMinutes, location: $location, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $TaskCopyWith<$Res>  {
  factory $TaskCopyWith(Task value, $Res Function(Task) _then) = _$TaskCopyWithImpl;
@useResult
$Res call({
 String id, String homeId, String title, String? description, String createdById, String status, DateTime? dueDate, String priority, String taskType, DateTime? startDate, int? estimatedDurationMinutes, String? location, List<String> tags, DateTime createdAt, DateTime updatedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? homeId = null,Object? title = null,Object? description = freezed,Object? createdById = null,Object? status = null,Object? dueDate = freezed,Object? priority = null,Object? taskType = null,Object? startDate = freezed,Object? estimatedDurationMinutes = freezed,Object? location = freezed,Object? tags = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,taskType: null == taskType ? _self.taskType : taskType // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,estimatedDurationMinutes: freezed == estimatedDurationMinutes ? _self.estimatedDurationMinutes : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Task implements Task {
  const _Task({required this.id, required this.homeId, required this.title, this.description, required this.createdById, required this.status, this.dueDate, required this.priority, required this.taskType, this.startDate, this.estimatedDurationMinutes, this.location, final  List<String> tags = const [], required this.createdAt, required this.updatedAt}): _tags = tags;
  factory _Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

@override final  String id;
@override final  String homeId;
@override final  String title;
@override final  String? description;
@override final  String createdById;
@override final  String status;
@override final  DateTime? dueDate;
@override final  String priority;
@override final  String taskType;
@override final  DateTime? startDate;
@override final  int? estimatedDurationMinutes;
@override final  String? location;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Task&&(identical(other.id, id) || other.id == id)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdById, createdById) || other.createdById == createdById)&&(identical(other.status, status) || other.status == status)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.taskType, taskType) || other.taskType == taskType)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.estimatedDurationMinutes, estimatedDurationMinutes) || other.estimatedDurationMinutes == estimatedDurationMinutes)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,homeId,title,description,createdById,status,dueDate,priority,taskType,startDate,estimatedDurationMinutes,location,const DeepCollectionEquality().hash(_tags),createdAt,updatedAt);

@override
String toString() {
  return 'Task(id: $id, homeId: $homeId, title: $title, description: $description, createdById: $createdById, status: $status, dueDate: $dueDate, priority: $priority, taskType: $taskType, startDate: $startDate, estimatedDurationMinutes: $estimatedDurationMinutes, location: $location, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) _then) = __$TaskCopyWithImpl;
@override @useResult
$Res call({
 String id, String homeId, String title, String? description, String createdById, String status, DateTime? dueDate, String priority, String taskType, DateTime? startDate, int? estimatedDurationMinutes, String? location, List<String> tags, DateTime createdAt, DateTime updatedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? homeId = null,Object? title = null,Object? description = freezed,Object? createdById = null,Object? status = null,Object? dueDate = freezed,Object? priority = null,Object? taskType = null,Object? startDate = freezed,Object? estimatedDurationMinutes = freezed,Object? location = freezed,Object? tags = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Task(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,homeId: null == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdById: null == createdById ? _self.createdById : createdById // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String,taskType: null == taskType ? _self.taskType : taskType // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,estimatedDurationMinutes: freezed == estimatedDurationMinutes ? _self.estimatedDurationMinutes : estimatedDurationMinutes // ignore: cast_nullable_to_non_nullable
as int?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$TaskAssignee {

 String get id; String get taskId; String get userId; DateTime get assignedAt;
/// Create a copy of TaskAssignee
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskAssigneeCopyWith<TaskAssignee> get copyWith => _$TaskAssigneeCopyWithImpl<TaskAssignee>(this as TaskAssignee, _$identity);

  /// Serializes this TaskAssignee to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskAssignee&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,taskId,userId,assignedAt);

@override
String toString() {
  return 'TaskAssignee(id: $id, taskId: $taskId, userId: $userId, assignedAt: $assignedAt)';
}


}

/// @nodoc
abstract mixin class $TaskAssigneeCopyWith<$Res>  {
  factory $TaskAssigneeCopyWith(TaskAssignee value, $Res Function(TaskAssignee) _then) = _$TaskAssigneeCopyWithImpl;
@useResult
$Res call({
 String id, String taskId, String userId, DateTime assignedAt
});




}
/// @nodoc
class _$TaskAssigneeCopyWithImpl<$Res>
    implements $TaskAssigneeCopyWith<$Res> {
  _$TaskAssigneeCopyWithImpl(this._self, this._then);

  final TaskAssignee _self;
  final $Res Function(TaskAssignee) _then;

/// Create a copy of TaskAssignee
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? taskId = null,Object? userId = null,Object? assignedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,assignedAt: null == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TaskAssignee implements TaskAssignee {
  const _TaskAssignee({required this.id, required this.taskId, required this.userId, required this.assignedAt});
  factory _TaskAssignee.fromJson(Map<String, dynamic> json) => _$TaskAssigneeFromJson(json);

@override final  String id;
@override final  String taskId;
@override final  String userId;
@override final  DateTime assignedAt;

/// Create a copy of TaskAssignee
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskAssigneeCopyWith<_TaskAssignee> get copyWith => __$TaskAssigneeCopyWithImpl<_TaskAssignee>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaskAssigneeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskAssignee&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.assignedAt, assignedAt) || other.assignedAt == assignedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,taskId,userId,assignedAt);

@override
String toString() {
  return 'TaskAssignee(id: $id, taskId: $taskId, userId: $userId, assignedAt: $assignedAt)';
}


}

/// @nodoc
abstract mixin class _$TaskAssigneeCopyWith<$Res> implements $TaskAssigneeCopyWith<$Res> {
  factory _$TaskAssigneeCopyWith(_TaskAssignee value, $Res Function(_TaskAssignee) _then) = __$TaskAssigneeCopyWithImpl;
@override @useResult
$Res call({
 String id, String taskId, String userId, DateTime assignedAt
});




}
/// @nodoc
class __$TaskAssigneeCopyWithImpl<$Res>
    implements _$TaskAssigneeCopyWith<$Res> {
  __$TaskAssigneeCopyWithImpl(this._self, this._then);

  final _TaskAssignee _self;
  final $Res Function(_TaskAssignee) _then;

/// Create a copy of TaskAssignee
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? taskId = null,Object? userId = null,Object? assignedAt = null,}) {
  return _then(_TaskAssignee(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,assignedAt: null == assignedAt ? _self.assignedAt : assignedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}


/// @nodoc
mixin _$SubTask {

 String get id; String get taskId; String get title; bool get isCompleted; int get orderIndex; DateTime get createdAt; DateTime get updatedAt;
/// Create a copy of SubTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubTaskCopyWith<SubTask> get copyWith => _$SubTaskCopyWithImpl<SubTask>(this as SubTask, _$identity);

  /// Serializes this SubTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubTask&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.title, title) || other.title == title)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.orderIndex, orderIndex) || other.orderIndex == orderIndex)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,taskId,title,isCompleted,orderIndex,createdAt,updatedAt);

@override
String toString() {
  return 'SubTask(id: $id, taskId: $taskId, title: $title, isCompleted: $isCompleted, orderIndex: $orderIndex, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SubTaskCopyWith<$Res>  {
  factory $SubTaskCopyWith(SubTask value, $Res Function(SubTask) _then) = _$SubTaskCopyWithImpl;
@useResult
$Res call({
 String id, String taskId, String title, bool isCompleted, int orderIndex, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class _$SubTaskCopyWithImpl<$Res>
    implements $SubTaskCopyWith<$Res> {
  _$SubTaskCopyWithImpl(this._self, this._then);

  final SubTask _self;
  final $Res Function(SubTask) _then;

/// Create a copy of SubTask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? taskId = null,Object? title = null,Object? isCompleted = null,Object? orderIndex = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,orderIndex: null == orderIndex ? _self.orderIndex : orderIndex // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubTask implements SubTask {
  const _SubTask({required this.id, required this.taskId, required this.title, required this.isCompleted, required this.orderIndex, required this.createdAt, required this.updatedAt});
  factory _SubTask.fromJson(Map<String, dynamic> json) => _$SubTaskFromJson(json);

@override final  String id;
@override final  String taskId;
@override final  String title;
@override final  bool isCompleted;
@override final  int orderIndex;
@override final  DateTime createdAt;
@override final  DateTime updatedAt;

/// Create a copy of SubTask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubTaskCopyWith<_SubTask> get copyWith => __$SubTaskCopyWithImpl<_SubTask>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubTaskToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubTask&&(identical(other.id, id) || other.id == id)&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.title, title) || other.title == title)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.orderIndex, orderIndex) || other.orderIndex == orderIndex)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,taskId,title,isCompleted,orderIndex,createdAt,updatedAt);

@override
String toString() {
  return 'SubTask(id: $id, taskId: $taskId, title: $title, isCompleted: $isCompleted, orderIndex: $orderIndex, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SubTaskCopyWith<$Res> implements $SubTaskCopyWith<$Res> {
  factory _$SubTaskCopyWith(_SubTask value, $Res Function(_SubTask) _then) = __$SubTaskCopyWithImpl;
@override @useResult
$Res call({
 String id, String taskId, String title, bool isCompleted, int orderIndex, DateTime createdAt, DateTime updatedAt
});




}
/// @nodoc
class __$SubTaskCopyWithImpl<$Res>
    implements _$SubTaskCopyWith<$Res> {
  __$SubTaskCopyWithImpl(this._self, this._then);

  final _SubTask _self;
  final $Res Function(_SubTask) _then;

/// Create a copy of SubTask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? taskId = null,Object? title = null,Object? isCompleted = null,Object? orderIndex = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_SubTask(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,orderIndex: null == orderIndex ? _self.orderIndex : orderIndex // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
