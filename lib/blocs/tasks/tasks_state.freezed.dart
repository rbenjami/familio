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

 HomeDocumentReference? get home; TasksUiStatus get uiStatus; TaskQuery? get tasksQuery; Map<String, int> get taskStats; TaskFilters? get filters; TaskSort? get sort; String? get error;
/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TasksStateCopyWith<TasksState> get copyWith => _$TasksStateCopyWithImpl<TasksState>(this as TasksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TasksState&&const DeepCollectionEquality().equals(other.home, home)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&const DeepCollectionEquality().equals(other.tasksQuery, tasksQuery)&&const DeepCollectionEquality().equals(other.taskStats, taskStats)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(home),uiStatus,const DeepCollectionEquality().hash(tasksQuery),const DeepCollectionEquality().hash(taskStats),filters,sort,error);

@override
String toString() {
  return 'TasksState(home: $home, uiStatus: $uiStatus, tasksQuery: $tasksQuery, taskStats: $taskStats, filters: $filters, sort: $sort, error: $error)';
}


}

/// @nodoc
abstract mixin class $TasksStateCopyWith<$Res>  {
  factory $TasksStateCopyWith(TasksState value, $Res Function(TasksState) _then) = _$TasksStateCopyWithImpl;
@useResult
$Res call({
 HomeDocumentReference? home, TasksUiStatus uiStatus, TaskQuery? tasksQuery, Map<String, int> taskStats, TaskFilters? filters, TaskSort? sort, String? error
});




}
/// @nodoc
class _$TasksStateCopyWithImpl<$Res>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._self, this._then);

  final TasksState _self;
  final $Res Function(TasksState) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? home = freezed,Object? uiStatus = null,Object? tasksQuery = freezed,Object? taskStats = null,Object? filters = freezed,Object? sort = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as HomeDocumentReference?,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TasksUiStatus,tasksQuery: freezed == tasksQuery ? _self.tasksQuery : tasksQuery // ignore: cast_nullable_to_non_nullable
as TaskQuery?,taskStats: null == taskStats ? _self.taskStats : taskStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as TaskFilters?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TaskSort?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _TasksState implements TasksState {
  const _TasksState({this.home, this.uiStatus = TasksUiStatus.initial, this.tasksQuery, final  Map<String, int> taskStats = const {}, this.filters, this.sort, this.error}): _taskStats = taskStats;
  

@override final  HomeDocumentReference? home;
@override@JsonKey() final  TasksUiStatus uiStatus;
@override final  TaskQuery? tasksQuery;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TasksState&&const DeepCollectionEquality().equals(other.home, home)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&const DeepCollectionEquality().equals(other.tasksQuery, tasksQuery)&&const DeepCollectionEquality().equals(other._taskStats, _taskStats)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(home),uiStatus,const DeepCollectionEquality().hash(tasksQuery),const DeepCollectionEquality().hash(_taskStats),filters,sort,error);

@override
String toString() {
  return 'TasksState(home: $home, uiStatus: $uiStatus, tasksQuery: $tasksQuery, taskStats: $taskStats, filters: $filters, sort: $sort, error: $error)';
}


}

/// @nodoc
abstract mixin class _$TasksStateCopyWith<$Res> implements $TasksStateCopyWith<$Res> {
  factory _$TasksStateCopyWith(_TasksState value, $Res Function(_TasksState) _then) = __$TasksStateCopyWithImpl;
@override @useResult
$Res call({
 HomeDocumentReference? home, TasksUiStatus uiStatus, TaskQuery? tasksQuery, Map<String, int> taskStats, TaskFilters? filters, TaskSort? sort, String? error
});




}
/// @nodoc
class __$TasksStateCopyWithImpl<$Res>
    implements _$TasksStateCopyWith<$Res> {
  __$TasksStateCopyWithImpl(this._self, this._then);

  final _TasksState _self;
  final $Res Function(_TasksState) _then;

/// Create a copy of TasksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? home = freezed,Object? uiStatus = null,Object? tasksQuery = freezed,Object? taskStats = null,Object? filters = freezed,Object? sort = freezed,Object? error = freezed,}) {
  return _then(_TasksState(
home: freezed == home ? _self.home : home // ignore: cast_nullable_to_non_nullable
as HomeDocumentReference?,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as TasksUiStatus,tasksQuery: freezed == tasksQuery ? _self.tasksQuery : tasksQuery // ignore: cast_nullable_to_non_nullable
as TaskQuery?,taskStats: null == taskStats ? _self._taskStats : taskStats // ignore: cast_nullable_to_non_nullable
as Map<String, int>,filters: freezed == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as TaskFilters?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as TaskSort?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
