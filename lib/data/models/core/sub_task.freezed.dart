// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubTask {

 String get title; bool get isCompleted; String? get note;
/// Create a copy of SubTask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubTaskCopyWith<SubTask> get copyWith => _$SubTaskCopyWithImpl<SubTask>(this as SubTask, _$identity);

  /// Serializes this SubTask to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubTask&&(identical(other.title, title) || other.title == title)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,isCompleted,note);

@override
String toString() {
  return 'SubTask(title: $title, isCompleted: $isCompleted, note: $note)';
}


}

/// @nodoc
abstract mixin class $SubTaskCopyWith<$Res>  {
  factory $SubTaskCopyWith(SubTask value, $Res Function(SubTask) _then) = _$SubTaskCopyWithImpl;
@useResult
$Res call({
 String title, bool isCompleted, String? note
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
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? isCompleted = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubTask implements SubTask {
  const _SubTask({required this.title, this.isCompleted = false, this.note});
  factory _SubTask.fromJson(Map<String, dynamic> json) => _$SubTaskFromJson(json);

@override final  String title;
@override@JsonKey() final  bool isCompleted;
@override final  String? note;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubTask&&(identical(other.title, title) || other.title == title)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.note, note) || other.note == note));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,isCompleted,note);

@override
String toString() {
  return 'SubTask(title: $title, isCompleted: $isCompleted, note: $note)';
}


}

/// @nodoc
abstract mixin class _$SubTaskCopyWith<$Res> implements $SubTaskCopyWith<$Res> {
  factory _$SubTaskCopyWith(_SubTask value, $Res Function(_SubTask) _then) = __$SubTaskCopyWithImpl;
@override @useResult
$Res call({
 String title, bool isCompleted, String? note
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
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? isCompleted = null,Object? note = freezed,}) {
  return _then(_SubTask(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
