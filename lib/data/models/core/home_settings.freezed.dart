// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeSettings {

 bool get allowMemberInvite;
/// Create a copy of HomeSettings
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSettingsCopyWith<HomeSettings> get copyWith => _$HomeSettingsCopyWithImpl<HomeSettings>(this as HomeSettings, _$identity);

  /// Serializes this HomeSettings to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSettings&&(identical(other.allowMemberInvite, allowMemberInvite) || other.allowMemberInvite == allowMemberInvite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowMemberInvite);

@override
String toString() {
  return 'HomeSettings(allowMemberInvite: $allowMemberInvite)';
}


}

/// @nodoc
abstract mixin class $HomeSettingsCopyWith<$Res>  {
  factory $HomeSettingsCopyWith(HomeSettings value, $Res Function(HomeSettings) _then) = _$HomeSettingsCopyWithImpl;
@useResult
$Res call({
 bool allowMemberInvite
});




}
/// @nodoc
class _$HomeSettingsCopyWithImpl<$Res>
    implements $HomeSettingsCopyWith<$Res> {
  _$HomeSettingsCopyWithImpl(this._self, this._then);

  final HomeSettings _self;
  final $Res Function(HomeSettings) _then;

/// Create a copy of HomeSettings
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowMemberInvite = null,}) {
  return _then(_self.copyWith(
allowMemberInvite: null == allowMemberInvite ? _self.allowMemberInvite : allowMemberInvite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _HomeSettings implements HomeSettings {
  const _HomeSettings({required this.allowMemberInvite});
  factory _HomeSettings.fromJson(Map<String, dynamic> json) => _$HomeSettingsFromJson(json);

@override final  bool allowMemberInvite;

/// Create a copy of HomeSettings
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeSettingsCopyWith<_HomeSettings> get copyWith => __$HomeSettingsCopyWithImpl<_HomeSettings>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeSettingsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeSettings&&(identical(other.allowMemberInvite, allowMemberInvite) || other.allowMemberInvite == allowMemberInvite));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowMemberInvite);

@override
String toString() {
  return 'HomeSettings(allowMemberInvite: $allowMemberInvite)';
}


}

/// @nodoc
abstract mixin class _$HomeSettingsCopyWith<$Res> implements $HomeSettingsCopyWith<$Res> {
  factory _$HomeSettingsCopyWith(_HomeSettings value, $Res Function(_HomeSettings) _then) = __$HomeSettingsCopyWithImpl;
@override @useResult
$Res call({
 bool allowMemberInvite
});




}
/// @nodoc
class __$HomeSettingsCopyWithImpl<$Res>
    implements _$HomeSettingsCopyWith<$Res> {
  __$HomeSettingsCopyWithImpl(this._self, this._then);

  final _HomeSettings _self;
  final $Res Function(_HomeSettings) _then;

/// Create a copy of HomeSettings
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowMemberInvite = null,}) {
  return _then(_HomeSettings(
allowMemberInvite: null == allowMemberInvite ? _self.allowMemberInvite : allowMemberInvite // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
