// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskState {

 TaskUiStatus get uiStatus; String get title; String get description; DateTime? get dueDate; Priority get priority; List<String> get assignedTo; List<SubTask> get subTasks; Home? get home; Task? get task;// null for creation, set for editing
 String? get createdBy;// required for Task creation
 List<User> get availableMembers; String? get error; bool get hasUnsavedChanges;
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskStateCopyWith<TaskState> get copyWith => _$TaskStateCopyWithImpl<TaskState>(this as TaskState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other.assignedTo, assignedTo)&&const DeepCollectionEquality().equals(other.subTasks, subTasks)&&(identical(other.home, home) || other.home == home)&&(identical(other.task, task) || other.task == task)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&const DeepCollectionEquality().equals(other.availableMembers, availableMembers)&&(identical(other.error, error) || other.error == error)&&(identical(other.hasUnsavedChanges, hasUnsavedChanges) || other.hasUnsavedChanges == hasUnsavedChanges));
}


@override
int get hashCode => Object.hash(runtimeType,uiStatus,title,description,dueDate,priority,const DeepCollectionEquality().hash(assignedTo),const DeepCollectionEquality().hash(subTasks),home,task,createdBy,const DeepCollectionEquality().hash(availableMembers),error,hasUnsavedChanges);

@override
String toString() {
  return 'TaskState(uiStatus: $uiStatus, title: $title, description: $description, dueDate: $dueDate, priority: $priority, assignedTo: $assignedTo, subTasks: $subTasks, home: $home, task: $task, createdBy: $createdBy, availableMembers: $availableMembers, error: $error, hasUnsavedChanges: $hasUnsavedChanges)';
}


}

/// @nodoc
abstract mixin class $TaskStateCopyWith<$Res>  {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) _then) = _$TaskStateCopyWithImpl;
@useResult
$Res call({
 TaskUiStatus uiStatus, String title, String description, DateTime? dueDate, Priority priority, List<String> assignedTo, List<SubTask> subTasks, Home? home, Task? task, String? createdBy, List<User> availableMembers, String? error, bool hasUnsavedChanges
});


$HomeCopyWith<$Res>? get home;$TaskCopyWith<$Res>? get task;

}
/// @nodoc
class _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._self, this._then);

  final TaskState _self;
  final $Res Function(TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? uiStatus = null,Object? title = null,Object? description = null,Object? dueDate = freezed,Object? priority = null,Object? assignedTo = null,Object? subTasks = null,Object? home = freezed,Object? task = freezed,Object? createdBy = freezed,Object? availableMembers = null,Object? error = freezed,Object? hasUnsavedChanges = null,}) {
  return _then(_self.copyWith(
uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TaskUiStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority,assignedTo: null == assignedTo ? _self.assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as List<String>,subTasks: null == subTasks ? _self.subTasks : subTasks // ignore: cast_nullable_to_non_nullable
as List<SubTask>,home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,task: freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as Task?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,availableMembers: null == availableMembers ? _self.availableMembers : availableMembers // ignore: cast_nullable_to_non_nullable
as List<User>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,hasUnsavedChanges: null == hasUnsavedChanges ? _self.hasUnsavedChanges : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $HomeCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res>? get task {
    if (_self.task == null) {
    return null;
  }

  return $TaskCopyWith<$Res>(_self.task!, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}


/// @nodoc


class _TaskState extends TaskState {
  const _TaskState({this.uiStatus = TaskUiStatus.initial, this.title = '', this.description = '', this.dueDate, this.priority = Priority.medium, final  List<String> assignedTo = const [], final  List<SubTask> subTasks = const [], this.home, this.task, this.createdBy, final  List<User> availableMembers = const [], this.error, this.hasUnsavedChanges = false}): _assignedTo = assignedTo,_subTasks = subTasks,_availableMembers = availableMembers,super._();
  

@override@JsonKey() final  TaskUiStatus uiStatus;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override final  DateTime? dueDate;
@override@JsonKey() final  Priority priority;
 final  List<String> _assignedTo;
@override@JsonKey() List<String> get assignedTo {
  if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assignedTo);
}

 final  List<SubTask> _subTasks;
@override@JsonKey() List<SubTask> get subTasks {
  if (_subTasks is EqualUnmodifiableListView) return _subTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_subTasks);
}

@override final  Home? home;
@override final  Task? task;
// null for creation, set for editing
@override final  String? createdBy;
// required for Task creation
 final  List<User> _availableMembers;
// required for Task creation
@override@JsonKey() List<User> get availableMembers {
  if (_availableMembers is EqualUnmodifiableListView) return _availableMembers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableMembers);
}

@override final  String? error;
@override@JsonKey() final  bool hasUnsavedChanges;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskStateCopyWith<_TaskState> get copyWith => __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskState&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other._assignedTo, _assignedTo)&&const DeepCollectionEquality().equals(other._subTasks, _subTasks)&&(identical(other.home, home) || other.home == home)&&(identical(other.task, task) || other.task == task)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&const DeepCollectionEquality().equals(other._availableMembers, _availableMembers)&&(identical(other.error, error) || other.error == error)&&(identical(other.hasUnsavedChanges, hasUnsavedChanges) || other.hasUnsavedChanges == hasUnsavedChanges));
}


@override
int get hashCode => Object.hash(runtimeType,uiStatus,title,description,dueDate,priority,const DeepCollectionEquality().hash(_assignedTo),const DeepCollectionEquality().hash(_subTasks),home,task,createdBy,const DeepCollectionEquality().hash(_availableMembers),error,hasUnsavedChanges);

@override
String toString() {
  return 'TaskState(uiStatus: $uiStatus, title: $title, description: $description, dueDate: $dueDate, priority: $priority, assignedTo: $assignedTo, subTasks: $subTasks, home: $home, task: $task, createdBy: $createdBy, availableMembers: $availableMembers, error: $error, hasUnsavedChanges: $hasUnsavedChanges)';
}


}

/// @nodoc
abstract mixin class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(_TaskState value, $Res Function(_TaskState) _then) = __$TaskStateCopyWithImpl;
@override @useResult
$Res call({
 TaskUiStatus uiStatus, String title, String description, DateTime? dueDate, Priority priority, List<String> assignedTo, List<SubTask> subTasks, Home? home, Task? task, String? createdBy, List<User> availableMembers, String? error, bool hasUnsavedChanges
});


@override $HomeCopyWith<$Res>? get home;@override $TaskCopyWith<$Res>? get task;

}
/// @nodoc
class __$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(this._self, this._then);

  final _TaskState _self;
  final $Res Function(_TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? uiStatus = null,Object? title = null,Object? description = null,Object? dueDate = freezed,Object? priority = null,Object? assignedTo = null,Object? subTasks = null,Object? home = freezed,Object? task = freezed,Object? createdBy = freezed,Object? availableMembers = null,Object? error = freezed,Object? hasUnsavedChanges = null,}) {
  return _then(_TaskState(
uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TaskUiStatus,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority,assignedTo: null == assignedTo ? _self._assignedTo : assignedTo // ignore: cast_nullable_to_non_nullable
as List<String>,subTasks: null == subTasks ? _self._subTasks : subTasks // ignore: cast_nullable_to_non_nullable
as List<SubTask>,home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,task: freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as Task?,createdBy: freezed == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String?,availableMembers: null == availableMembers ? _self._availableMembers : availableMembers // ignore: cast_nullable_to_non_nullable
as List<User>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,hasUnsavedChanges: null == hasUnsavedChanges ? _self.hasUnsavedChanges : hasUnsavedChanges // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeCopyWith<$Res>? get home {
    if (_self.home == null) {
    return null;
  }

  return $HomeCopyWith<$Res>(_self.home!, (value) {
    return _then(_self.copyWith(home: value));
  });
}/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskCopyWith<$Res>? get task {
    if (_self.task == null) {
    return null;
  }

  return $TaskCopyWith<$Res>(_self.task!, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

// dart format on
