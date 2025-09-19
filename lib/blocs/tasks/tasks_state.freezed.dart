// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TasksState {

 Home? get home; TasksUiStatus get uiStatus; List<Task> get tasks; Map<String, int> get taskStats; TaskFilters? get filters; TaskSort? get sort; String? get error;
/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksStateCopyWith<TasksState> get copyWith => _$TasksStateCopyWithImpl<TasksState>(this as TasksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksState&&(identical(other.home, home) || other.home == home)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&const DeepCollectionEquality().equals(other.taskStats, taskStats)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,home,uiStatus,const DeepCollectionEquality().hash(tasks),const DeepCollectionEquality().hash(taskStats),filters,sort,error);

@override
String toString() {
  return 'TasksState(home: $home, uiStatus: $uiStatus, tasks: $tasks, taskStats: $taskStats, filters: $filters, sort: $sort, error: $error)';
}


}

/// @nodoc
abstract mixin class $TasksStateCopyWith<$Res>  {
  factory $TasksStateCopyWith(TasksState value, $Res Function(TasksState) _then) = _$TasksStateCopyWithImpl;
@useResult
$Res call({
 Home? home, TasksUiStatus uiStatus, List<Task> tasks, Map<String, int> taskStats, TaskFilters? filters, TaskSort? sort, String? error
});


$HomeCopyWith<$Res>? get home;

}
/// @nodoc
class _$TasksStateCopyWithImpl<$Res>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._self, this._then);

  final TasksState _self;
  final $Res Function(TasksState) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? home = freezed,Object? uiStatus = null,Object? tasks = null,Object? taskStats = null,Object? filters = freezed,Object? sort = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TasksUiStatus,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,taskStats: null == taskStats ? _self.taskStats : taskStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as TaskFilters?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TaskSort?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of TasksState
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
}
}


/// @nodoc


class _TasksState implements TasksState {
  const _TasksState({this.home, this.uiStatus = TasksUiStatus.initial, final  List<Task> tasks = const [], final  Map<String, int> taskStats = const {}, this.filters, this.sort, this.error}): _tasks = tasks,_taskStats = taskStats;
  

@override final  Home? home;
@override@JsonKey() final  TasksUiStatus uiStatus;
 final  List<Task> _tasks;
@override@JsonKey() List<Task> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

 final  Map<String, int> _taskStats;
@override@JsonKey() Map<String, int> get taskStats {
  if (_taskStats is EqualUnmodifiableMapView) return _taskStats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_taskStats);
}

@override final  TaskFilters? filters;
@override final  TaskSort? sort;
@override final  String? error;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TasksStateCopyWith<_TasksState> get copyWith => __$TasksStateCopyWithImpl<_TasksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksState&&(identical(other.home, home) || other.home == home)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&const DeepCollectionEquality().equals(other._taskStats, _taskStats)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,home,uiStatus,const DeepCollectionEquality().hash(_tasks),const DeepCollectionEquality().hash(_taskStats),filters,sort,error);

@override
String toString() {
  return 'TasksState(home: $home, uiStatus: $uiStatus, tasks: $tasks, taskStats: $taskStats, filters: $filters, sort: $sort, error: $error)';
}


}

/// @nodoc
abstract mixin class _$TasksStateCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksStateCopyWith(_TasksState value, $Res Function(_TasksState) _then) = __$TasksStateCopyWithImpl;
@override @useResult
$Res call({
 Home? home, TasksUiStatus uiStatus, List<Task> tasks, Map<String, int> taskStats, TaskFilters? filters, TaskSort? sort, String? error
});


@override $HomeCopyWith<$Res>? get home;

}
/// @nodoc
class __$TasksStateCopyWithImpl<$Res>
    implements _$TasksStateCopyWith<$Res> {
  __$TasksStateCopyWithImpl(this._self, this._then);

  final _TasksState _self;
  final $Res Function(_TasksState) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? home = freezed,Object? uiStatus = null,Object? tasks = null,Object? taskStats = null,Object? filters = freezed,Object? sort = freezed,Object? error = freezed,}) {
  return _then(_TasksState(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as Home?,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TasksUiStatus,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<Task>,taskStats: null == taskStats ? _self._taskStats : taskStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as TaskFilters?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TaskSort?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of TasksState
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
}
}

// dart format on
