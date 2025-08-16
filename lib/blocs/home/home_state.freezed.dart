// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {

 List<HomeDocumentSnapshot> get userHomes; HomeDocumentSnapshot? get selectedHome; MemberPermissions? get currentUserPermissions; HomeUiStatus get uiStatus; String? get error;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.userHomes, userHomes)&&const DeepCollectionEquality().equals(other.selectedHome, selectedHome)&&(identical(other.currentUserPermissions, currentUserPermissions) || other.currentUserPermissions == currentUserPermissions)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(userHomes),const DeepCollectionEquality().hash(selectedHome),currentUserPermissions,uiStatus,error);

@override
String toString() {
  return 'HomeState(userHomes: $userHomes, selectedHome: $selectedHome, currentUserPermissions: $currentUserPermissions, uiStatus: $uiStatus, error: $error)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<HomeDocumentSnapshot> userHomes, HomeDocumentSnapshot? selectedHome, MemberPermissions? currentUserPermissions, HomeUiStatus uiStatus, String? error
});


$MemberPermissionsCopyWith<$Res>? get currentUserPermissions;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userHomes = null,Object? selectedHome = freezed,Object? currentUserPermissions = freezed,Object? uiStatus = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
userHomes: null == userHomes ? _self.userHomes : userHomes // ignore: cast_nullable_to_non_nullable
as List<HomeDocumentSnapshot>,selectedHome: freezed == selectedHome ? _self.selectedHome : selectedHome // ignore: cast_nullable_to_non_nullable
as HomeDocumentSnapshot?,currentUserPermissions: freezed == currentUserPermissions ? _self.currentUserPermissions : currentUserPermissions // ignore: cast_nullable_to_non_nullable
as MemberPermissions?,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as HomeUiStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberPermissionsCopyWith<$Res>? get currentUserPermissions {
    if (_self.currentUserPermissions == null) {
    return null;
  }

  return $MemberPermissionsCopyWith<$Res>(_self.currentUserPermissions!, (value) {
    return _then(_self.copyWith(currentUserPermissions: value));
  });
}
}


/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({final  List<HomeDocumentSnapshot> userHomes = const [], this.selectedHome, this.currentUserPermissions, this.uiStatus = HomeUiStatus.initial, this.error}): _userHomes = userHomes;
  

 final  List<HomeDocumentSnapshot> _userHomes;
@override@JsonKey() List<HomeDocumentSnapshot> get userHomes {
  if (_userHomes is EqualUnmodifiableListView) return _userHomes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userHomes);
}

@override final  HomeDocumentSnapshot? selectedHome;
@override final  MemberPermissions? currentUserPermissions;
@override@JsonKey() final  HomeUiStatus uiStatus;
@override final  String? error;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._userHomes, _userHomes)&&const DeepCollectionEquality().equals(other.selectedHome, selectedHome)&&(identical(other.currentUserPermissions, currentUserPermissions) || other.currentUserPermissions == currentUserPermissions)&&(identical(other.uiStatus, uiStatus) || other.uiStatus == uiStatus)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userHomes),const DeepCollectionEquality().hash(selectedHome),currentUserPermissions,uiStatus,error);

@override
String toString() {
  return 'HomeState(userHomes: $userHomes, selectedHome: $selectedHome, currentUserPermissions: $currentUserPermissions, uiStatus: $uiStatus, error: $error)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<HomeDocumentSnapshot> userHomes, HomeDocumentSnapshot? selectedHome, MemberPermissions? currentUserPermissions, HomeUiStatus uiStatus, String? error
});


@override $MemberPermissionsCopyWith<$Res>? get currentUserPermissions;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userHomes = null,Object? selectedHome = freezed,Object? currentUserPermissions = freezed,Object? uiStatus = null,Object? error = freezed,}) {
  return _then(_HomeState(
userHomes: null == userHomes ? _self._userHomes : userHomes // ignore: cast_nullable_to_non_nullable
as List<HomeDocumentSnapshot>,selectedHome: freezed == selectedHome ? _self.selectedHome : selectedHome // ignore: cast_nullable_to_non_nullable
as HomeDocumentSnapshot?,currentUserPermissions: freezed == currentUserPermissions ? _self.currentUserPermissions : currentUserPermissions // ignore: cast_nullable_to_non_nullable
as MemberPermissions?,uiStatus: null == uiStatus ? _self.uiStatus : uiStatus // ignore: cast_nullable_to_non_nullable
as HomeUiStatus,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberPermissionsCopyWith<$Res>? get currentUserPermissions {
    if (_self.currentUserPermissions == null) {
    return null;
  }

  return $MemberPermissionsCopyWith<$Res>(_self.currentUserPermissions!, (value) {
    return _then(_self.copyWith(currentUserPermissions: value));
  });
}
}

// dart format on
