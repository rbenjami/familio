// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'relationship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Relationship {

@Id() String get id; String get user1Id; String get user2Id; RelationshipType get type; String? get homeId; DateTime get createdAt;
/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RelationshipCopyWith<Relationship> get copyWith => _$RelationshipCopyWithImpl<Relationship>(this as Relationship, _$identity);

  /// Serializes this Relationship to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Relationship&&(identical(other.id, id) || other.id == id)&&(identical(other.user1Id, user1Id) || other.user1Id == user1Id)&&(identical(other.user2Id, user2Id) || other.user2Id == user2Id)&&(identical(other.type, type) || other.type == type)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user1Id,user2Id,type,homeId,createdAt);

@override
String toString() {
  return 'Relationship(id: $id, user1Id: $user1Id, user2Id: $user2Id, type: $type, homeId: $homeId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $RelationshipCopyWith<$Res>  {
  factory $RelationshipCopyWith(Relationship value, $Res Function(Relationship) _then) = _$RelationshipCopyWithImpl;
@useResult
$Res call({
@Id() String id, String user1Id, String user2Id, RelationshipType type, String? homeId, DateTime createdAt
});




}
/// @nodoc
class _$RelationshipCopyWithImpl<$Res>
    implements $RelationshipCopyWith<$Res> {
  _$RelationshipCopyWithImpl(this._self, this._then);

  final Relationship _self;
  final $Res Function(Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user1Id = null,Object? user2Id = null,Object? type = null,Object? homeId = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user1Id: null == user1Id ? _self.user1Id : user1Id // ignore: cast_nullable_to_non_nullable
as String,user2Id: null == user2Id ? _self.user2Id : user2Id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RelationshipType,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// @nodoc

@firestoreSerializable
class _Relationship implements Relationship {
  const _Relationship({@Id() required this.id, required this.user1Id, required this.user2Id, required this.type, this.homeId, required this.createdAt});
  factory _Relationship.fromJson(Map<String, dynamic> json) => _$RelationshipFromJson(json);

@override@Id() final  String id;
@override final  String user1Id;
@override final  String user2Id;
@override final  RelationshipType type;
@override final  String? homeId;
@override final  DateTime createdAt;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RelationshipCopyWith<_Relationship> get copyWith => __$RelationshipCopyWithImpl<_Relationship>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RelationshipToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Relationship&&(identical(other.id, id) || other.id == id)&&(identical(other.user1Id, user1Id) || other.user1Id == user1Id)&&(identical(other.user2Id, user2Id) || other.user2Id == user2Id)&&(identical(other.type, type) || other.type == type)&&(identical(other.homeId, homeId) || other.homeId == homeId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user1Id,user2Id,type,homeId,createdAt);

@override
String toString() {
  return 'Relationship(id: $id, user1Id: $user1Id, user2Id: $user2Id, type: $type, homeId: $homeId, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$RelationshipCopyWith<$Res> implements $RelationshipCopyWith<$Res> {
  factory _$RelationshipCopyWith(_Relationship value, $Res Function(_Relationship) _then) = __$RelationshipCopyWithImpl;
@override @useResult
$Res call({
@Id() String id, String user1Id, String user2Id, RelationshipType type, String? homeId, DateTime createdAt
});




}
/// @nodoc
class __$RelationshipCopyWithImpl<$Res>
    implements _$RelationshipCopyWith<$Res> {
  __$RelationshipCopyWithImpl(this._self, this._then);

  final _Relationship _self;
  final $Res Function(_Relationship) _then;

/// Create a copy of Relationship
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user1Id = null,Object? user2Id = null,Object? type = null,Object? homeId = freezed,Object? createdAt = null,}) {
  return _then(_Relationship(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user1Id: null == user1Id ? _self.user1Id : user1Id // ignore: cast_nullable_to_non_nullable
as String,user2Id: null == user2Id ? _self.user2Id : user2Id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as RelationshipType,homeId: freezed == homeId ? _self.homeId : homeId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
