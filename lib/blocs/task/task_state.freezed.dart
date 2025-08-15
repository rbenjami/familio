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

 List<Task> get tasks; List<Task> get filteredTasks; TaskUiStatus get uiStatus; String? get error; String? get currentHomeId; TaskFilters? get filters; TaskSort? get sort; Map<String, int> get taskStats;
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskStateCopyWith<TaskState> get copyWith => _$TaskStateCopyWithImpl<TaskState>(this as TaskState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState&&const DeepCollectionEquality().equals(other.tasks, tasks)&&const DeepCollectionEquality().equals(other.filteredTasks, filteredTasks)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentHomeId, currentHomeId) || other.currentHomeId == currentHomeId)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other.taskStats, taskStats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tasks),const DeepCollectionEquality().hash(filteredTasks),uiStatus,error,currentHomeId,filters,sort,const DeepCollectionEquality().hash(taskStats));

@override
String toString() {
  return 'TaskState(tasks: $tasks, filteredTasks: $filteredTasks, uiStatus: $uiStatus, error: $error, currentHomeId: $currentHomeId, filters: $filters, sort: $sort, taskStats: $taskStats)';
}


}

/// @nodoc
abstract mixin class $TaskStateCopyWith<$Res>  {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) _then) = _$TaskStateCopyWithImpl;
@useResult
$Res call({
 List<Task> tasks, List<Task> filteredTasks, TaskUiStatus uiStatus, String? error, String? currentHomeId, TaskFilters? filters, TaskSort? sort, Map<String, int> taskStats
});


$TaskFiltersCopyWith<$Res>? get filters;$TaskSortCopyWith<$Res>? get sort;

}
/// @nodoc
class _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._self, this._then);

  final TaskState _self;
  final $Res Function(TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tasks = null,Object? filteredTasks = null,Object? uiStatus = null,Object? error = freezed,Object? currentHomeId = freezed,Object? filters = freezed,Object? sort = freezed,Object? taskStats = null,}) {
  return _then(_self.copyWith(
tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,filteredTasks: null == filteredTasks ? _self.filteredTasks : filteredTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TaskUiStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentHomeId: freezed == currentHomeId ? _self.currentHomeId : currentHomeId // ignore: cast_nullable_to_non_nullable
as String?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as TaskFilters?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TaskSort?,taskStats: null == taskStats ? _self.taskStats : taskStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskFiltersCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $TaskFiltersCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSortCopyWith<$Res>? get sort {
    if (_self.sort == null) {
    return null;
  }

  return $TaskSortCopyWith<$Res>(_self.sort!, (value) {
    return _then(_self.copyWith(sort: value));
  });
}
}


/// @nodoc


class _TaskState implements TaskState {
  const _TaskState({final  List<Task> tasks = const [], final  List<Task> filteredTasks = const [], this.uiStatus = TaskUiStatus.initial, this.error, this.currentHomeId, this.filters, this.sort, final  Map<String, int> taskStats = const {}}): _tasks = tasks,_filteredTasks = filteredTasks,_taskStats = taskStats;
  

 final  List<Task> _tasks;
@override@JsonKey() List<Task> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

 final  List<Task> _filteredTasks;
@override@JsonKey() List<Task> get filteredTasks {
  if (_filteredTasks is EqualUnmodifiableListView) return _filteredTasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filteredTasks);
}

@override@JsonKey() final  TaskUiStatus uiStatus;
@override final  String? error;
@override final  String? currentHomeId;
@override final  TaskFilters? filters;
@override final  TaskSort? sort;
 final  Map<String, int> _taskStats;
@override@JsonKey() Map<String, int> get taskStats {
  if (_taskStats is EqualUnmodifiableMapView) return _taskStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_taskStats);
}


/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskStateCopyWith<_TaskState> get copyWith => __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskState&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&const DeepCollectionEquality().equals(other._filteredTasks, _filteredTasks)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.error, error) || other.error == error)&&(identical(other.currentHomeId, currentHomeId) || other.currentHomeId == currentHomeId)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.sort, sort) || other.sort == sort)&&const DeepCollectionEquality().equals(other._taskStats, _taskStats));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks),const DeepCollectionEquality().hash(_filteredTasks),uiStatus,error,currentHomeId,filters,sort,const DeepCollectionEquality().hash(_taskStats));

@override
String toString() {
  return 'TaskState(tasks: $tasks, filteredTasks: $filteredTasks, uiStatus: $uiStatus, error: $error, currentHomeId: $currentHomeId, filters: $filters, sort: $sort, taskStats: $taskStats)';
}


}

/// @nodoc
abstract mixin class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(_TaskState value, $Res Function(_TaskState) _then) = __$TaskStateCopyWithImpl;
@override @useResult
$Res call({
 List<Task> tasks, List<Task> filteredTasks, TaskUiStatus uiStatus, String? error, String? currentHomeId, TaskFilters? filters, TaskSort? sort, Map<String, int> taskStats
});


@override $TaskFiltersCopyWith<$Res>? get filters;@override $TaskSortCopyWith<$Res>? get sort;

}
/// @nodoc
class __$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(this._self, this._then);

  final _TaskState _self;
  final $Res Function(_TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tasks = null,Object? filteredTasks = null,Object? uiStatus = null,Object? error = freezed,Object? currentHomeId = freezed,Object? filters = freezed,Object? sort = freezed,Object? taskStats = null,}) {
  return _then(_TaskState(
tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,filteredTasks: null == filteredTasks ? _self._filteredTasks : filteredTasks // ignore: cast_nullable_to_non_nullable
as List<Task>,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TaskUiStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,currentHomeId: freezed == currentHomeId ? _self.currentHomeId : currentHomeId // ignore: cast_nullable_to_non_nullable
as String?,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as TaskFilters?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TaskSort?,taskStats: null == taskStats ? _self._taskStats : taskStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,
  ));
}

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskFiltersCopyWith<$Res>? get filters {
    if (_self.filters == null) {
    return null;
  }

  return $TaskFiltersCopyWith<$Res>(_self.filters!, (value) {
    return _then(_self.copyWith(filters: value));
  });
}/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskSortCopyWith<$Res>? get sort {
    if (_self.sort == null) {
    return null;
  }

  return $TaskSortCopyWith<$Res>(_self.sort!, (value) {
    return _then(_self.copyWith(sort: value));
  });
}
}

/// @nodoc
mixin _$TaskFilters {

 TaskStatus? get status; String? get assignedToId; Priority? get priority; TaskType? get type; bool get showMyTasksOnly;
/// Create a copy of TaskFilters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskFiltersCopyWith<TaskFilters> get copyWith => _$TaskFiltersCopyWithImpl<TaskFilters>(this as TaskFilters, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskFilters&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.type, type) || other.type == type)&&(identical(other.showMyTasksOnly, showMyTasksOnly) || other.showMyTasksOnly == showMyTasksOnly));
}


@override
int get hashCode => Object.hash(runtimeType,status,assignedToId,priority,type,showMyTasksOnly);

@override
String toString() {
  return 'TaskFilters(status: $status, assignedToId: $assignedToId, priority: $priority, type: $type, showMyTasksOnly: $showMyTasksOnly)';
}


}

/// @nodoc
abstract mixin class $TaskFiltersCopyWith<$Res>  {
  factory $TaskFiltersCopyWith(TaskFilters value, $Res Function(TaskFilters) _then) = _$TaskFiltersCopyWithImpl;
@useResult
$Res call({
 TaskStatus? status, String? assignedToId, Priority? priority, TaskType? type, bool showMyTasksOnly
});




}
/// @nodoc
class _$TaskFiltersCopyWithImpl<$Res>
    implements $TaskFiltersCopyWith<$Res> {
  _$TaskFiltersCopyWithImpl(this._self, this._then);

  final TaskFilters _self;
  final $Res Function(TaskFilters) _then;

/// Create a copy of TaskFilters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? assignedToId = freezed,Object? priority = freezed,Object? type = freezed,Object? showMyTasksOnly = null,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TaskStatus?,assignedToId: freezed == assignedToId ? _self.assignedToId : assignedToId // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TaskType?,showMyTasksOnly: null == showMyTasksOnly ? _self.showMyTasksOnly : showMyTasksOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc


class _TaskFilters implements TaskFilters {
  const _TaskFilters({this.status, this.assignedToId, this.priority, this.type, this.showMyTasksOnly = false});
  

@override final  TaskStatus? status;
@override final  String? assignedToId;
@override final  Priority? priority;
@override final  TaskType? type;
@override@JsonKey() final  bool showMyTasksOnly;

/// Create a copy of TaskFilters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskFiltersCopyWith<_TaskFilters> get copyWith => __$TaskFiltersCopyWithImpl<_TaskFilters>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskFilters&&(identical(other.status, status) || other.status == status)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.type, type) || other.type == type)&&(identical(other.showMyTasksOnly, showMyTasksOnly) || other.showMyTasksOnly == showMyTasksOnly));
}


@override
int get hashCode => Object.hash(runtimeType,status,assignedToId,priority,type,showMyTasksOnly);

@override
String toString() {
  return 'TaskFilters(status: $status, assignedToId: $assignedToId, priority: $priority, type: $type, showMyTasksOnly: $showMyTasksOnly)';
}


}

/// @nodoc
abstract mixin class _$TaskFiltersCopyWith<$Res> implements $TaskFiltersCopyWith<$Res> {
  factory _$TaskFiltersCopyWith(_TaskFilters value, $Res Function(_TaskFilters) _then) = __$TaskFiltersCopyWithImpl;
@override @useResult
$Res call({
 TaskStatus? status, String? assignedToId, Priority? priority, TaskType? type, bool showMyTasksOnly
});




}
/// @nodoc
class __$TaskFiltersCopyWithImpl<$Res>
    implements _$TaskFiltersCopyWith<$Res> {
  __$TaskFiltersCopyWithImpl(this._self, this._then);

  final _TaskFilters _self;
  final $Res Function(_TaskFilters) _then;

/// Create a copy of TaskFilters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? assignedToId = freezed,Object? priority = freezed,Object? type = freezed,Object? showMyTasksOnly = null,}) {
  return _then(_TaskFilters(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TaskStatus?,assignedToId: freezed == assignedToId ? _self.assignedToId : assignedToId // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as Priority?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TaskType?,showMyTasksOnly: null == showMyTasksOnly ? _self.showMyTasksOnly : showMyTasksOnly // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$TaskSort {

 TaskSortBy get sortBy; SortOrder get sortOrder;
/// Create a copy of TaskSort
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskSortCopyWith<TaskSort> get copyWith => _$TaskSortCopyWithImpl<TaskSort>(this as TaskSort, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskSort&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,sortBy,sortOrder);

@override
String toString() {
  return 'TaskSort(sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $TaskSortCopyWith<$Res>  {
  factory $TaskSortCopyWith(TaskSort value, $Res Function(TaskSort) _then) = _$TaskSortCopyWithImpl;
@useResult
$Res call({
 TaskSortBy sortBy, SortOrder sortOrder
});




}
/// @nodoc
class _$TaskSortCopyWithImpl<$Res>
    implements $TaskSortCopyWith<$Res> {
  _$TaskSortCopyWithImpl(this._self, this._then);

  final TaskSort _self;
  final $Res Function(TaskSort) _then;

/// Create a copy of TaskSort
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_self.copyWith(
sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as TaskSortBy,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}

}


/// @nodoc


class _TaskSort implements TaskSort {
  const _TaskSort({this.sortBy = TaskSortBy.createdAt, this.sortOrder = SortOrder.descending});
  

@override@JsonKey() final  TaskSortBy sortBy;
@override@JsonKey() final  SortOrder sortOrder;

/// Create a copy of TaskSort
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskSortCopyWith<_TaskSort> get copyWith => __$TaskSortCopyWithImpl<_TaskSort>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskSort&&(identical(other.sortBy, sortBy) || other.sortBy == sortBy)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,sortBy,sortOrder);

@override
String toString() {
  return 'TaskSort(sortBy: $sortBy, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class _$TaskSortCopyWith<$Res> implements $TaskSortCopyWith<$Res> {
  factory _$TaskSortCopyWith(_TaskSort value, $Res Function(_TaskSort) _then) = __$TaskSortCopyWithImpl;
@override @useResult
$Res call({
 TaskSortBy sortBy, SortOrder sortOrder
});




}
/// @nodoc
class __$TaskSortCopyWithImpl<$Res>
    implements _$TaskSortCopyWith<$Res> {
  __$TaskSortCopyWithImpl(this._self, this._then);

  final _TaskSort _self;
  final $Res Function(_TaskSort) _then;

/// Create a copy of TaskSort
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortBy = null,Object? sortOrder = null,}) {
  return _then(_TaskSort(
sortBy: null == sortBy ? _self.sortBy : sortBy // ignore: cast_nullable_to_non_nullable
as TaskSortBy,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as SortOrder,
  ));
}


}

// dart format on
