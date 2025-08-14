// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserCollectionReference
    implements
        UserQuery,
        FirestoreCollectionReference<User, UserQuerySnapshot> {
  factory UserCollectionReference([FirebaseFirestore? firestore]) =
      _$UserCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return User.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(User value, SetOptions? options) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<User> get reference;

  @override
  UserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDocumentReference> add(User value);
}

class _$UserCollectionReference extends _$UserQuery
    implements UserCollectionReference {
  factory _$UserCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserCollectionReference._(
      firestore
          .collection('users')
          .withConverter(
            fromFirestore: UserCollectionReference.fromFirestore,
            toFirestore: UserCollectionReference.toFirestore,
          ),
    );
  }

  _$UserCollectionReference._(CollectionReference<User> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDocumentReference(reference.doc(id));
  }

  @override
  Future<UserDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot> {
  factory UserDocumentReference(DocumentReference<User> reference) =
      _$UserDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final CalendarCollectionReference calendars =
      _$CalendarCollectionReference(reference);

  @override
  Stream<UserDocumentSnapshot> snapshots();

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue avatarFieldValue,
    FieldValue birthDateFieldValue,
    FieldValue firebaseAuthIdFieldValue,
    FieldValue homeIdsFieldValue,
    FieldValue relationshipIdsFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue avatarFieldValue,
    FieldValue birthDateFieldValue,
    FieldValue firebaseAuthIdFieldValue,
    FieldValue homeIdsFieldValue,
    FieldValue relationshipIdsFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue avatarFieldValue,
    FieldValue birthDateFieldValue,
    FieldValue firebaseAuthIdFieldValue,
    FieldValue homeIdsFieldValue,
    FieldValue relationshipIdsFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String? avatar,
    FieldValue avatarFieldValue,
    DateTime? birthDate,
    FieldValue birthDateFieldValue,
    String? firebaseAuthId,
    FieldValue firebaseAuthIdFieldValue,
    List<String> homeIds,
    FieldValue homeIdsFieldValue,
    List<String>? relationshipIds,
    FieldValue relationshipIdsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String? avatar,
    FieldValue avatarFieldValue,
    DateTime? birthDate,
    FieldValue birthDateFieldValue,
    String? firebaseAuthId,
    FieldValue firebaseAuthIdFieldValue,
    List<String> homeIds,
    FieldValue homeIdsFieldValue,
    List<String>? relationshipIds,
    FieldValue relationshipIdsFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    String? avatar,
    FieldValue avatarFieldValue,
    DateTime? birthDate,
    FieldValue birthDateFieldValue,
    String? firebaseAuthId,
    FieldValue firebaseAuthIdFieldValue,
    List<String> homeIds,
    FieldValue homeIdsFieldValue,
    List<String>? relationshipIds,
    FieldValue relationshipIdsFieldValue,
  });
}

class _$UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot>
    implements UserDocumentReference {
  _$UserDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final CalendarCollectionReference calendars =
      _$CalendarCollectionReference(reference);

  @override
  Stream<UserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? avatarFieldValue,
    FieldValue? birthDateFieldValue,
    FieldValue? firebaseAuthIdFieldValue,
    FieldValue? homeIdsFieldValue,
    FieldValue? relationshipIdsFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (avatarFieldValue != null) _$UserFieldMap['avatar']!: avatarFieldValue,

      if (birthDateFieldValue != null)
        _$UserFieldMap['birthDate']!: birthDateFieldValue,

      if (firebaseAuthIdFieldValue != null)
        _$UserFieldMap['firebaseAuthId']!: firebaseAuthIdFieldValue,

      if (homeIdsFieldValue != null)
        _$UserFieldMap['homeIds']!: homeIdsFieldValue,

      if (relationshipIdsFieldValue != null)
        _$UserFieldMap['relationshipIds']!: relationshipIdsFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? avatarFieldValue,
    FieldValue? birthDateFieldValue,
    FieldValue? firebaseAuthIdFieldValue,
    FieldValue? homeIdsFieldValue,
    FieldValue? relationshipIdsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (avatarFieldValue != null) _$UserFieldMap['avatar']!: avatarFieldValue,

      if (birthDateFieldValue != null)
        _$UserFieldMap['birthDate']!: birthDateFieldValue,

      if (firebaseAuthIdFieldValue != null)
        _$UserFieldMap['firebaseAuthId']!: firebaseAuthIdFieldValue,

      if (homeIdsFieldValue != null)
        _$UserFieldMap['homeIds']!: homeIdsFieldValue,

      if (relationshipIdsFieldValue != null)
        _$UserFieldMap['relationshipIds']!: relationshipIdsFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? avatarFieldValue,
    FieldValue? birthDateFieldValue,
    FieldValue? firebaseAuthIdFieldValue,
    FieldValue? homeIdsFieldValue,
    FieldValue? relationshipIdsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (avatarFieldValue != null) _$UserFieldMap['avatar']!: avatarFieldValue,

      if (birthDateFieldValue != null)
        _$UserFieldMap['birthDate']!: birthDateFieldValue,

      if (firebaseAuthIdFieldValue != null)
        _$UserFieldMap['firebaseAuthId']!: firebaseAuthIdFieldValue,

      if (homeIdsFieldValue != null)
        _$UserFieldMap['homeIds']!: homeIdsFieldValue,

      if (relationshipIdsFieldValue != null)
        _$UserFieldMap['relationshipIds']!: relationshipIdsFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? avatar = _sentinel,
    FieldValue? avatarFieldValue,
    Object? birthDate = _sentinel,
    FieldValue? birthDateFieldValue,
    Object? firebaseAuthId = _sentinel,
    FieldValue? firebaseAuthIdFieldValue,
    Object? homeIds = _sentinel,
    FieldValue? homeIdsFieldValue,
    Object? relationshipIds = _sentinel,
    FieldValue? relationshipIdsFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      avatar == _sentinel || avatarFieldValue == null,
      "Cannot specify both avatar and avatarFieldValue",
    );
    assert(
      birthDate == _sentinel || birthDateFieldValue == null,
      "Cannot specify both birthDate and birthDateFieldValue",
    );
    assert(
      firebaseAuthId == _sentinel || firebaseAuthIdFieldValue == null,
      "Cannot specify both firebaseAuthId and firebaseAuthIdFieldValue",
    );
    assert(
      homeIds == _sentinel || homeIdsFieldValue == null,
      "Cannot specify both homeIds and homeIdsFieldValue",
    );
    assert(
      relationshipIds == _sentinel || relationshipIdsFieldValue == null,
      "Cannot specify both relationshipIds and relationshipIdsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (avatar != _sentinel)
        _$UserFieldMap['avatar']!: _$UserPerFieldToJson.avatar(
          avatar as String?,
        ),

      if (avatarFieldValue != null) _$UserFieldMap['avatar']!: avatarFieldValue,

      if (birthDate != _sentinel)
        _$UserFieldMap['birthDate']!: _$UserPerFieldToJson.birthDate(
          birthDate as DateTime?,
        ),

      if (birthDateFieldValue != null)
        _$UserFieldMap['birthDate']!: birthDateFieldValue,

      if (firebaseAuthId != _sentinel)
        _$UserFieldMap['firebaseAuthId']!: _$UserPerFieldToJson.firebaseAuthId(
          firebaseAuthId as String?,
        ),

      if (firebaseAuthIdFieldValue != null)
        _$UserFieldMap['firebaseAuthId']!: firebaseAuthIdFieldValue,

      if (homeIds != _sentinel)
        _$UserFieldMap['homeIds']!: _$UserPerFieldToJson.homeIds(
          homeIds as List<String>,
        ),

      if (homeIdsFieldValue != null)
        _$UserFieldMap['homeIds']!: homeIdsFieldValue,

      if (relationshipIds != _sentinel)
        _$UserFieldMap['relationshipIds']!: _$UserPerFieldToJson
            .relationshipIds(relationshipIds as List<String>?),

      if (relationshipIdsFieldValue != null)
        _$UserFieldMap['relationshipIds']!: relationshipIdsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? avatar = _sentinel,
    FieldValue? avatarFieldValue,
    Object? birthDate = _sentinel,
    FieldValue? birthDateFieldValue,
    Object? firebaseAuthId = _sentinel,
    FieldValue? firebaseAuthIdFieldValue,
    Object? homeIds = _sentinel,
    FieldValue? homeIdsFieldValue,
    Object? relationshipIds = _sentinel,
    FieldValue? relationshipIdsFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      avatar == _sentinel || avatarFieldValue == null,
      "Cannot specify both avatar and avatarFieldValue",
    );
    assert(
      birthDate == _sentinel || birthDateFieldValue == null,
      "Cannot specify both birthDate and birthDateFieldValue",
    );
    assert(
      firebaseAuthId == _sentinel || firebaseAuthIdFieldValue == null,
      "Cannot specify both firebaseAuthId and firebaseAuthIdFieldValue",
    );
    assert(
      homeIds == _sentinel || homeIdsFieldValue == null,
      "Cannot specify both homeIds and homeIdsFieldValue",
    );
    assert(
      relationshipIds == _sentinel || relationshipIdsFieldValue == null,
      "Cannot specify both relationshipIds and relationshipIdsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (avatar != _sentinel)
        _$UserFieldMap['avatar']!: _$UserPerFieldToJson.avatar(
          avatar as String?,
        ),

      if (avatarFieldValue != null) _$UserFieldMap['avatar']!: avatarFieldValue,

      if (birthDate != _sentinel)
        _$UserFieldMap['birthDate']!: _$UserPerFieldToJson.birthDate(
          birthDate as DateTime?,
        ),

      if (birthDateFieldValue != null)
        _$UserFieldMap['birthDate']!: birthDateFieldValue,

      if (firebaseAuthId != _sentinel)
        _$UserFieldMap['firebaseAuthId']!: _$UserPerFieldToJson.firebaseAuthId(
          firebaseAuthId as String?,
        ),

      if (firebaseAuthIdFieldValue != null)
        _$UserFieldMap['firebaseAuthId']!: firebaseAuthIdFieldValue,

      if (homeIds != _sentinel)
        _$UserFieldMap['homeIds']!: _$UserPerFieldToJson.homeIds(
          homeIds as List<String>,
        ),

      if (homeIdsFieldValue != null)
        _$UserFieldMap['homeIds']!: homeIdsFieldValue,

      if (relationshipIds != _sentinel)
        _$UserFieldMap['relationshipIds']!: _$UserPerFieldToJson
            .relationshipIds(relationshipIds as List<String>?),

      if (relationshipIdsFieldValue != null)
        _$UserFieldMap['relationshipIds']!: relationshipIdsFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? avatar = _sentinel,
    FieldValue? avatarFieldValue,
    Object? birthDate = _sentinel,
    FieldValue? birthDateFieldValue,
    Object? firebaseAuthId = _sentinel,
    FieldValue? firebaseAuthIdFieldValue,
    Object? homeIds = _sentinel,
    FieldValue? homeIdsFieldValue,
    Object? relationshipIds = _sentinel,
    FieldValue? relationshipIdsFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      avatar == _sentinel || avatarFieldValue == null,
      "Cannot specify both avatar and avatarFieldValue",
    );
    assert(
      birthDate == _sentinel || birthDateFieldValue == null,
      "Cannot specify both birthDate and birthDateFieldValue",
    );
    assert(
      firebaseAuthId == _sentinel || firebaseAuthIdFieldValue == null,
      "Cannot specify both firebaseAuthId and firebaseAuthIdFieldValue",
    );
    assert(
      homeIds == _sentinel || homeIdsFieldValue == null,
      "Cannot specify both homeIds and homeIdsFieldValue",
    );
    assert(
      relationshipIds == _sentinel || relationshipIdsFieldValue == null,
      "Cannot specify both relationshipIds and relationshipIdsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,

      if (avatar != _sentinel)
        _$UserFieldMap['avatar']!: _$UserPerFieldToJson.avatar(
          avatar as String?,
        ),

      if (avatarFieldValue != null) _$UserFieldMap['avatar']!: avatarFieldValue,

      if (birthDate != _sentinel)
        _$UserFieldMap['birthDate']!: _$UserPerFieldToJson.birthDate(
          birthDate as DateTime?,
        ),

      if (birthDateFieldValue != null)
        _$UserFieldMap['birthDate']!: birthDateFieldValue,

      if (firebaseAuthId != _sentinel)
        _$UserFieldMap['firebaseAuthId']!: _$UserPerFieldToJson.firebaseAuthId(
          firebaseAuthId as String?,
        ),

      if (firebaseAuthIdFieldValue != null)
        _$UserFieldMap['firebaseAuthId']!: firebaseAuthIdFieldValue,

      if (homeIds != _sentinel)
        _$UserFieldMap['homeIds']!: _$UserPerFieldToJson.homeIds(
          homeIds as List<String>,
        ),

      if (homeIdsFieldValue != null)
        _$UserFieldMap['homeIds']!: homeIdsFieldValue,

      if (relationshipIds != _sentinel)
        _$UserFieldMap['relationshipIds']!: _$UserPerFieldToJson
            .relationshipIds(relationshipIds as List<String>?),

      if (relationshipIdsFieldValue != null)
        _$UserFieldMap['relationshipIds']!: relationshipIdsFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserQuery implements QueryReference<User, UserQuerySnapshot> {
  @override
  UserQuery limit(int limit);

  @override
  UserQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  UserQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereAvatar({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereBirthDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereFirebaseAuthId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  UserQuery whereHomeIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  UserQuery whereRelationshipIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByAvatar({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByBirthDate({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByFirebaseAuthId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByHomeIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByRelationshipIds({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });
}

class _$UserQuery extends QueryReference<User, UserQuerySnapshot>
    implements UserQuery {
  _$UserQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserQuery limit(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery limitToLast(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.name(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereAvatar({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['avatar']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.avatar(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.avatar(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.avatar(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.avatar(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.avatar(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.avatar(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.avatar(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.avatar(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereBirthDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['birthDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.birthDate(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.birthDate(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.birthDate(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.birthDate(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.birthDate(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.birthDate(
                isGreaterThanOrEqualTo as DateTime?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.birthDate(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.birthDate(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereFirebaseAuthId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['firebaseAuthId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.firebaseAuthId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.firebaseAuthId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.firebaseAuthId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.firebaseAuthId(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.firebaseAuthId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.firebaseAuthId(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.firebaseAuthId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$UserPerFieldToJson.firebaseAuthId(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereHomeIds({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['homeIds']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.homeIds(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.homeIds(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.homeIds(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.homeIds(isLessThanOrEqualTo as List<String>)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.homeIds(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.homeIds(
                isGreaterThanOrEqualTo as List<String>,
              )
            : null,
        arrayContains: arrayContains != null
            ? (_$UserPerFieldToJson.homeIds([arrayContains as String])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$UserPerFieldToJson.homeIds(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereRelationshipIds({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['relationshipIds']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.relationshipIds(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.relationshipIds(
                isNotEqualTo as List<String>?,
              )
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.relationshipIds(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.relationshipIds(
                isLessThanOrEqualTo as List<String>?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.relationshipIds(
                isGreaterThan as List<String>?,
              )
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.relationshipIds(
                isGreaterThanOrEqualTo as List<String>?,
              )
            : null,
        arrayContains: arrayContains != null
            ? (_$UserPerFieldToJson.relationshipIds([arrayContains as String])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$UserPerFieldToJson.relationshipIds(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['name']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByAvatar({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['avatar']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByBirthDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['birthDate']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByFirebaseAuthId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['firebaseAuthId']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByHomeIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['homeIds']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByRelationshipIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$UserFieldMap['relationshipIds']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }

  @override
  final User? data;
}

class UserQuerySnapshot
    extends FirestoreQuerySnapshot<User, UserQueryDocumentSnapshot> {
  UserQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory UserQuerySnapshot._fromQuerySnapshot(QuerySnapshot<User> snapshot) {
    final docs = snapshot.docs.map(UserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, UserDocumentSnapshot._);
    }).toList();

    return UserQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<UserDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDocumentSnapshot>> docChanges;
}

class UserQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UserDocumentSnapshot {
  UserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CalendarCollectionReference
    implements
        CalendarQuery,
        FirestoreCollectionReference<Calendar, CalendarQuerySnapshot> {
  factory CalendarCollectionReference(DocumentReference<User> parent) =
      _$CalendarCollectionReference;

  static Calendar fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Calendar.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(Calendar value, SetOptions? options) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Calendar> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  CalendarDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CalendarDocumentReference> add(Calendar value);
}

class _$CalendarCollectionReference extends _$CalendarQuery
    implements CalendarCollectionReference {
  factory _$CalendarCollectionReference(DocumentReference<User> parent) {
    return _$CalendarCollectionReference._(
      UserDocumentReference(parent),
      parent
          .collection('calendars')
          .withConverter(
            fromFirestore: CalendarCollectionReference.fromFirestore,
            toFirestore: CalendarCollectionReference.toFirestore,
          ),
    );
  }

  _$CalendarCollectionReference._(
    this.parent,
    CollectionReference<Calendar> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Calendar> get reference =>
      super.reference as CollectionReference<Calendar>;

  @override
  CalendarDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return CalendarDocumentReference(reference.doc(id));
  }

  @override
  Future<CalendarDocumentReference> add(Calendar value) {
    return reference.add(value).then((ref) => CalendarDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CalendarCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CalendarDocumentReference
    extends FirestoreDocumentReference<Calendar, CalendarDocumentSnapshot> {
  factory CalendarDocumentReference(DocumentReference<Calendar> reference) =
      _$CalendarDocumentReference;

  DocumentReference<Calendar> get reference;

  /// A reference to the [CalendarCollectionReference] containing this document.
  CalendarCollectionReference get parent {
    return _$CalendarCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  late final EventCollectionReference events = _$EventCollectionReference(
    reference,
  );

  @override
  Stream<CalendarDocumentSnapshot> snapshots();

  @override
  Future<CalendarDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Calendar model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue typeFieldValue,
    FieldValue isVisibleInHomeFieldValue,
    FieldValue colorFieldValue,
    FieldValue externalIdFieldValue,
    FieldValue accessTokenFieldValue,
    FieldValue refreshTokenFieldValue,
    FieldValue lastSyncAtFieldValue,
    FieldValue syncEnabledFieldValue,
    FieldValue homeIdFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Calendar model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue typeFieldValue,
    FieldValue isVisibleInHomeFieldValue,
    FieldValue colorFieldValue,
    FieldValue externalIdFieldValue,
    FieldValue accessTokenFieldValue,
    FieldValue refreshTokenFieldValue,
    FieldValue lastSyncAtFieldValue,
    FieldValue syncEnabledFieldValue,
    FieldValue homeIdFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Calendar model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue typeFieldValue,
    FieldValue isVisibleInHomeFieldValue,
    FieldValue colorFieldValue,
    FieldValue externalIdFieldValue,
    FieldValue accessTokenFieldValue,
    FieldValue refreshTokenFieldValue,
    FieldValue lastSyncAtFieldValue,
    FieldValue syncEnabledFieldValue,
    FieldValue homeIdFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    CalendarType type,
    FieldValue typeFieldValue,
    bool isVisibleInHome,
    FieldValue isVisibleInHomeFieldValue,
    String color,
    FieldValue colorFieldValue,
    String? externalId,
    FieldValue externalIdFieldValue,
    String? accessToken,
    FieldValue accessTokenFieldValue,
    String? refreshToken,
    FieldValue refreshTokenFieldValue,
    DateTime? lastSyncAt,
    FieldValue lastSyncAtFieldValue,
    bool syncEnabled,
    FieldValue syncEnabledFieldValue,
    String? homeId,
    FieldValue homeIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    CalendarType type,
    FieldValue typeFieldValue,
    bool isVisibleInHome,
    FieldValue isVisibleInHomeFieldValue,
    String color,
    FieldValue colorFieldValue,
    String? externalId,
    FieldValue externalIdFieldValue,
    String? accessToken,
    FieldValue accessTokenFieldValue,
    String? refreshToken,
    FieldValue refreshTokenFieldValue,
    DateTime? lastSyncAt,
    FieldValue lastSyncAtFieldValue,
    bool syncEnabled,
    FieldValue syncEnabledFieldValue,
    String? homeId,
    FieldValue homeIdFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    CalendarType type,
    FieldValue typeFieldValue,
    bool isVisibleInHome,
    FieldValue isVisibleInHomeFieldValue,
    String color,
    FieldValue colorFieldValue,
    String? externalId,
    FieldValue externalIdFieldValue,
    String? accessToken,
    FieldValue accessTokenFieldValue,
    String? refreshToken,
    FieldValue refreshTokenFieldValue,
    DateTime? lastSyncAt,
    FieldValue lastSyncAtFieldValue,
    bool syncEnabled,
    FieldValue syncEnabledFieldValue,
    String? homeId,
    FieldValue homeIdFieldValue,
  });
}

class _$CalendarDocumentReference
    extends FirestoreDocumentReference<Calendar, CalendarDocumentSnapshot>
    implements CalendarDocumentReference {
  _$CalendarDocumentReference(this.reference);

  @override
  final DocumentReference<Calendar> reference;

  /// A reference to the [CalendarCollectionReference] containing this document.
  CalendarCollectionReference get parent {
    return _$CalendarCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  late final EventCollectionReference events = _$EventCollectionReference(
    reference,
  );

  @override
  Stream<CalendarDocumentSnapshot> snapshots() {
    return reference.snapshots().map(CalendarDocumentSnapshot._);
  }

  @override
  Future<CalendarDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(CalendarDocumentSnapshot._);
  }

  @override
  Future<CalendarDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(CalendarDocumentSnapshot._);
  }

  Future<void> set(
    Calendar model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? isVisibleInHomeFieldValue,
    FieldValue? colorFieldValue,
    FieldValue? externalIdFieldValue,
    FieldValue? accessTokenFieldValue,
    FieldValue? refreshTokenFieldValue,
    FieldValue? lastSyncAtFieldValue,
    FieldValue? syncEnabledFieldValue,
    FieldValue? homeIdFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$CalendarFieldMap['name']!: nameFieldValue,

      if (typeFieldValue != null) _$CalendarFieldMap['type']!: typeFieldValue,

      if (isVisibleInHomeFieldValue != null)
        _$CalendarFieldMap['isVisibleInHome']!: isVisibleInHomeFieldValue,

      if (colorFieldValue != null)
        _$CalendarFieldMap['color']!: colorFieldValue,

      if (externalIdFieldValue != null)
        _$CalendarFieldMap['externalId']!: externalIdFieldValue,

      if (accessTokenFieldValue != null)
        _$CalendarFieldMap['accessToken']!: accessTokenFieldValue,

      if (refreshTokenFieldValue != null)
        _$CalendarFieldMap['refreshToken']!: refreshTokenFieldValue,

      if (lastSyncAtFieldValue != null)
        _$CalendarFieldMap['lastSyncAt']!: lastSyncAtFieldValue,

      if (syncEnabledFieldValue != null)
        _$CalendarFieldMap['syncEnabled']!: syncEnabledFieldValue,

      if (homeIdFieldValue != null)
        _$CalendarFieldMap['homeId']!: homeIdFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Calendar model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? isVisibleInHomeFieldValue,
    FieldValue? colorFieldValue,
    FieldValue? externalIdFieldValue,
    FieldValue? accessTokenFieldValue,
    FieldValue? refreshTokenFieldValue,
    FieldValue? lastSyncAtFieldValue,
    FieldValue? syncEnabledFieldValue,
    FieldValue? homeIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$CalendarFieldMap['name']!: nameFieldValue,

      if (typeFieldValue != null) _$CalendarFieldMap['type']!: typeFieldValue,

      if (isVisibleInHomeFieldValue != null)
        _$CalendarFieldMap['isVisibleInHome']!: isVisibleInHomeFieldValue,

      if (colorFieldValue != null)
        _$CalendarFieldMap['color']!: colorFieldValue,

      if (externalIdFieldValue != null)
        _$CalendarFieldMap['externalId']!: externalIdFieldValue,

      if (accessTokenFieldValue != null)
        _$CalendarFieldMap['accessToken']!: accessTokenFieldValue,

      if (refreshTokenFieldValue != null)
        _$CalendarFieldMap['refreshToken']!: refreshTokenFieldValue,

      if (lastSyncAtFieldValue != null)
        _$CalendarFieldMap['lastSyncAt']!: lastSyncAtFieldValue,

      if (syncEnabledFieldValue != null)
        _$CalendarFieldMap['syncEnabled']!: syncEnabledFieldValue,

      if (homeIdFieldValue != null)
        _$CalendarFieldMap['homeId']!: homeIdFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Calendar model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? isVisibleInHomeFieldValue,
    FieldValue? colorFieldValue,
    FieldValue? externalIdFieldValue,
    FieldValue? accessTokenFieldValue,
    FieldValue? refreshTokenFieldValue,
    FieldValue? lastSyncAtFieldValue,
    FieldValue? syncEnabledFieldValue,
    FieldValue? homeIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$CalendarFieldMap['name']!: nameFieldValue,

      if (typeFieldValue != null) _$CalendarFieldMap['type']!: typeFieldValue,

      if (isVisibleInHomeFieldValue != null)
        _$CalendarFieldMap['isVisibleInHome']!: isVisibleInHomeFieldValue,

      if (colorFieldValue != null)
        _$CalendarFieldMap['color']!: colorFieldValue,

      if (externalIdFieldValue != null)
        _$CalendarFieldMap['externalId']!: externalIdFieldValue,

      if (accessTokenFieldValue != null)
        _$CalendarFieldMap['accessToken']!: accessTokenFieldValue,

      if (refreshTokenFieldValue != null)
        _$CalendarFieldMap['refreshToken']!: refreshTokenFieldValue,

      if (lastSyncAtFieldValue != null)
        _$CalendarFieldMap['lastSyncAt']!: lastSyncAtFieldValue,

      if (syncEnabledFieldValue != null)
        _$CalendarFieldMap['syncEnabled']!: syncEnabledFieldValue,

      if (homeIdFieldValue != null)
        _$CalendarFieldMap['homeId']!: homeIdFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? isVisibleInHome = _sentinel,
    FieldValue? isVisibleInHomeFieldValue,
    Object? color = _sentinel,
    FieldValue? colorFieldValue,
    Object? externalId = _sentinel,
    FieldValue? externalIdFieldValue,
    Object? accessToken = _sentinel,
    FieldValue? accessTokenFieldValue,
    Object? refreshToken = _sentinel,
    FieldValue? refreshTokenFieldValue,
    Object? lastSyncAt = _sentinel,
    FieldValue? lastSyncAtFieldValue,
    Object? syncEnabled = _sentinel,
    FieldValue? syncEnabledFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      isVisibleInHome == _sentinel || isVisibleInHomeFieldValue == null,
      "Cannot specify both isVisibleInHome and isVisibleInHomeFieldValue",
    );
    assert(
      color == _sentinel || colorFieldValue == null,
      "Cannot specify both color and colorFieldValue",
    );
    assert(
      externalId == _sentinel || externalIdFieldValue == null,
      "Cannot specify both externalId and externalIdFieldValue",
    );
    assert(
      accessToken == _sentinel || accessTokenFieldValue == null,
      "Cannot specify both accessToken and accessTokenFieldValue",
    );
    assert(
      refreshToken == _sentinel || refreshTokenFieldValue == null,
      "Cannot specify both refreshToken and refreshTokenFieldValue",
    );
    assert(
      lastSyncAt == _sentinel || lastSyncAtFieldValue == null,
      "Cannot specify both lastSyncAt and lastSyncAtFieldValue",
    );
    assert(
      syncEnabled == _sentinel || syncEnabledFieldValue == null,
      "Cannot specify both syncEnabled and syncEnabledFieldValue",
    );
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$CalendarFieldMap['name']!: _$CalendarPerFieldToJson.name(
          name as String,
        ),

      if (nameFieldValue != null) _$CalendarFieldMap['name']!: nameFieldValue,

      if (type != _sentinel)
        _$CalendarFieldMap['type']!: _$CalendarPerFieldToJson.type(
          type as CalendarType,
        ),

      if (typeFieldValue != null) _$CalendarFieldMap['type']!: typeFieldValue,

      if (isVisibleInHome != _sentinel)
        _$CalendarFieldMap['isVisibleInHome']!: _$CalendarPerFieldToJson
            .isVisibleInHome(isVisibleInHome as bool),

      if (isVisibleInHomeFieldValue != null)
        _$CalendarFieldMap['isVisibleInHome']!: isVisibleInHomeFieldValue,

      if (color != _sentinel)
        _$CalendarFieldMap['color']!: _$CalendarPerFieldToJson.color(
          color as String,
        ),

      if (colorFieldValue != null)
        _$CalendarFieldMap['color']!: colorFieldValue,

      if (externalId != _sentinel)
        _$CalendarFieldMap['externalId']!: _$CalendarPerFieldToJson.externalId(
          externalId as String?,
        ),

      if (externalIdFieldValue != null)
        _$CalendarFieldMap['externalId']!: externalIdFieldValue,

      if (accessToken != _sentinel)
        _$CalendarFieldMap['accessToken']!: _$CalendarPerFieldToJson
            .accessToken(accessToken as String?),

      if (accessTokenFieldValue != null)
        _$CalendarFieldMap['accessToken']!: accessTokenFieldValue,

      if (refreshToken != _sentinel)
        _$CalendarFieldMap['refreshToken']!: _$CalendarPerFieldToJson
            .refreshToken(refreshToken as String?),

      if (refreshTokenFieldValue != null)
        _$CalendarFieldMap['refreshToken']!: refreshTokenFieldValue,

      if (lastSyncAt != _sentinel)
        _$CalendarFieldMap['lastSyncAt']!: _$CalendarPerFieldToJson.lastSyncAt(
          lastSyncAt as DateTime?,
        ),

      if (lastSyncAtFieldValue != null)
        _$CalendarFieldMap['lastSyncAt']!: lastSyncAtFieldValue,

      if (syncEnabled != _sentinel)
        _$CalendarFieldMap['syncEnabled']!: _$CalendarPerFieldToJson
            .syncEnabled(syncEnabled as bool),

      if (syncEnabledFieldValue != null)
        _$CalendarFieldMap['syncEnabled']!: syncEnabledFieldValue,

      if (homeId != _sentinel)
        _$CalendarFieldMap['homeId']!: _$CalendarPerFieldToJson.homeId(
          homeId as String?,
        ),

      if (homeIdFieldValue != null)
        _$CalendarFieldMap['homeId']!: homeIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? isVisibleInHome = _sentinel,
    FieldValue? isVisibleInHomeFieldValue,
    Object? color = _sentinel,
    FieldValue? colorFieldValue,
    Object? externalId = _sentinel,
    FieldValue? externalIdFieldValue,
    Object? accessToken = _sentinel,
    FieldValue? accessTokenFieldValue,
    Object? refreshToken = _sentinel,
    FieldValue? refreshTokenFieldValue,
    Object? lastSyncAt = _sentinel,
    FieldValue? lastSyncAtFieldValue,
    Object? syncEnabled = _sentinel,
    FieldValue? syncEnabledFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      isVisibleInHome == _sentinel || isVisibleInHomeFieldValue == null,
      "Cannot specify both isVisibleInHome and isVisibleInHomeFieldValue",
    );
    assert(
      color == _sentinel || colorFieldValue == null,
      "Cannot specify both color and colorFieldValue",
    );
    assert(
      externalId == _sentinel || externalIdFieldValue == null,
      "Cannot specify both externalId and externalIdFieldValue",
    );
    assert(
      accessToken == _sentinel || accessTokenFieldValue == null,
      "Cannot specify both accessToken and accessTokenFieldValue",
    );
    assert(
      refreshToken == _sentinel || refreshTokenFieldValue == null,
      "Cannot specify both refreshToken and refreshTokenFieldValue",
    );
    assert(
      lastSyncAt == _sentinel || lastSyncAtFieldValue == null,
      "Cannot specify both lastSyncAt and lastSyncAtFieldValue",
    );
    assert(
      syncEnabled == _sentinel || syncEnabledFieldValue == null,
      "Cannot specify both syncEnabled and syncEnabledFieldValue",
    );
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$CalendarFieldMap['name']!: _$CalendarPerFieldToJson.name(
          name as String,
        ),

      if (nameFieldValue != null) _$CalendarFieldMap['name']!: nameFieldValue,

      if (type != _sentinel)
        _$CalendarFieldMap['type']!: _$CalendarPerFieldToJson.type(
          type as CalendarType,
        ),

      if (typeFieldValue != null) _$CalendarFieldMap['type']!: typeFieldValue,

      if (isVisibleInHome != _sentinel)
        _$CalendarFieldMap['isVisibleInHome']!: _$CalendarPerFieldToJson
            .isVisibleInHome(isVisibleInHome as bool),

      if (isVisibleInHomeFieldValue != null)
        _$CalendarFieldMap['isVisibleInHome']!: isVisibleInHomeFieldValue,

      if (color != _sentinel)
        _$CalendarFieldMap['color']!: _$CalendarPerFieldToJson.color(
          color as String,
        ),

      if (colorFieldValue != null)
        _$CalendarFieldMap['color']!: colorFieldValue,

      if (externalId != _sentinel)
        _$CalendarFieldMap['externalId']!: _$CalendarPerFieldToJson.externalId(
          externalId as String?,
        ),

      if (externalIdFieldValue != null)
        _$CalendarFieldMap['externalId']!: externalIdFieldValue,

      if (accessToken != _sentinel)
        _$CalendarFieldMap['accessToken']!: _$CalendarPerFieldToJson
            .accessToken(accessToken as String?),

      if (accessTokenFieldValue != null)
        _$CalendarFieldMap['accessToken']!: accessTokenFieldValue,

      if (refreshToken != _sentinel)
        _$CalendarFieldMap['refreshToken']!: _$CalendarPerFieldToJson
            .refreshToken(refreshToken as String?),

      if (refreshTokenFieldValue != null)
        _$CalendarFieldMap['refreshToken']!: refreshTokenFieldValue,

      if (lastSyncAt != _sentinel)
        _$CalendarFieldMap['lastSyncAt']!: _$CalendarPerFieldToJson.lastSyncAt(
          lastSyncAt as DateTime?,
        ),

      if (lastSyncAtFieldValue != null)
        _$CalendarFieldMap['lastSyncAt']!: lastSyncAtFieldValue,

      if (syncEnabled != _sentinel)
        _$CalendarFieldMap['syncEnabled']!: _$CalendarPerFieldToJson
            .syncEnabled(syncEnabled as bool),

      if (syncEnabledFieldValue != null)
        _$CalendarFieldMap['syncEnabled']!: syncEnabledFieldValue,

      if (homeId != _sentinel)
        _$CalendarFieldMap['homeId']!: _$CalendarPerFieldToJson.homeId(
          homeId as String?,
        ),

      if (homeIdFieldValue != null)
        _$CalendarFieldMap['homeId']!: homeIdFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? isVisibleInHome = _sentinel,
    FieldValue? isVisibleInHomeFieldValue,
    Object? color = _sentinel,
    FieldValue? colorFieldValue,
    Object? externalId = _sentinel,
    FieldValue? externalIdFieldValue,
    Object? accessToken = _sentinel,
    FieldValue? accessTokenFieldValue,
    Object? refreshToken = _sentinel,
    FieldValue? refreshTokenFieldValue,
    Object? lastSyncAt = _sentinel,
    FieldValue? lastSyncAtFieldValue,
    Object? syncEnabled = _sentinel,
    FieldValue? syncEnabledFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      isVisibleInHome == _sentinel || isVisibleInHomeFieldValue == null,
      "Cannot specify both isVisibleInHome and isVisibleInHomeFieldValue",
    );
    assert(
      color == _sentinel || colorFieldValue == null,
      "Cannot specify both color and colorFieldValue",
    );
    assert(
      externalId == _sentinel || externalIdFieldValue == null,
      "Cannot specify both externalId and externalIdFieldValue",
    );
    assert(
      accessToken == _sentinel || accessTokenFieldValue == null,
      "Cannot specify both accessToken and accessTokenFieldValue",
    );
    assert(
      refreshToken == _sentinel || refreshTokenFieldValue == null,
      "Cannot specify both refreshToken and refreshTokenFieldValue",
    );
    assert(
      lastSyncAt == _sentinel || lastSyncAtFieldValue == null,
      "Cannot specify both lastSyncAt and lastSyncAtFieldValue",
    );
    assert(
      syncEnabled == _sentinel || syncEnabledFieldValue == null,
      "Cannot specify both syncEnabled and syncEnabledFieldValue",
    );
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$CalendarFieldMap['name']!: _$CalendarPerFieldToJson.name(
          name as String,
        ),

      if (nameFieldValue != null) _$CalendarFieldMap['name']!: nameFieldValue,

      if (type != _sentinel)
        _$CalendarFieldMap['type']!: _$CalendarPerFieldToJson.type(
          type as CalendarType,
        ),

      if (typeFieldValue != null) _$CalendarFieldMap['type']!: typeFieldValue,

      if (isVisibleInHome != _sentinel)
        _$CalendarFieldMap['isVisibleInHome']!: _$CalendarPerFieldToJson
            .isVisibleInHome(isVisibleInHome as bool),

      if (isVisibleInHomeFieldValue != null)
        _$CalendarFieldMap['isVisibleInHome']!: isVisibleInHomeFieldValue,

      if (color != _sentinel)
        _$CalendarFieldMap['color']!: _$CalendarPerFieldToJson.color(
          color as String,
        ),

      if (colorFieldValue != null)
        _$CalendarFieldMap['color']!: colorFieldValue,

      if (externalId != _sentinel)
        _$CalendarFieldMap['externalId']!: _$CalendarPerFieldToJson.externalId(
          externalId as String?,
        ),

      if (externalIdFieldValue != null)
        _$CalendarFieldMap['externalId']!: externalIdFieldValue,

      if (accessToken != _sentinel)
        _$CalendarFieldMap['accessToken']!: _$CalendarPerFieldToJson
            .accessToken(accessToken as String?),

      if (accessTokenFieldValue != null)
        _$CalendarFieldMap['accessToken']!: accessTokenFieldValue,

      if (refreshToken != _sentinel)
        _$CalendarFieldMap['refreshToken']!: _$CalendarPerFieldToJson
            .refreshToken(refreshToken as String?),

      if (refreshTokenFieldValue != null)
        _$CalendarFieldMap['refreshToken']!: refreshTokenFieldValue,

      if (lastSyncAt != _sentinel)
        _$CalendarFieldMap['lastSyncAt']!: _$CalendarPerFieldToJson.lastSyncAt(
          lastSyncAt as DateTime?,
        ),

      if (lastSyncAtFieldValue != null)
        _$CalendarFieldMap['lastSyncAt']!: lastSyncAtFieldValue,

      if (syncEnabled != _sentinel)
        _$CalendarFieldMap['syncEnabled']!: _$CalendarPerFieldToJson
            .syncEnabled(syncEnabled as bool),

      if (syncEnabledFieldValue != null)
        _$CalendarFieldMap['syncEnabled']!: syncEnabledFieldValue,

      if (homeId != _sentinel)
        _$CalendarFieldMap['homeId']!: _$CalendarPerFieldToJson.homeId(
          homeId as String?,
        ),

      if (homeIdFieldValue != null)
        _$CalendarFieldMap['homeId']!: homeIdFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is CalendarDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class CalendarQuery
    implements QueryReference<Calendar, CalendarQuerySnapshot> {
  @override
  CalendarQuery limit(int limit);

  @override
  CalendarQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  CalendarQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereType({
    CalendarType? isEqualTo,
    CalendarType? isNotEqualTo,
    CalendarType? isLessThan,
    CalendarType? isLessThanOrEqualTo,
    CalendarType? isGreaterThan,
    CalendarType? isGreaterThanOrEqualTo,
    List<CalendarType>? whereIn,
    List<CalendarType>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereIsVisibleInHome({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereColor({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereExternalId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereAccessToken({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereRefreshToken({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereLastSyncAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereSyncEnabled({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  CalendarQuery whereHomeId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  CalendarQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByType({
    bool descending = false,
    CalendarType startAt,
    CalendarType startAfter,
    CalendarType endAt,
    CalendarType endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByIsVisibleInHome({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByColor({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByExternalId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByAccessToken({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByRefreshToken({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByLastSyncAt({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderBySyncEnabled({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });

  CalendarQuery orderByHomeId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  });
}

class _$CalendarQuery extends QueryReference<Calendar, CalendarQuerySnapshot>
    implements CalendarQuery {
  _$CalendarQuery(
    this._collection, {
    required Query<Calendar> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<CalendarQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(CalendarQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<CalendarQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(CalendarQuerySnapshot._fromQuerySnapshot);
  }

  @override
  CalendarQuery limit(int limit) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery limitToLast(int limit) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$CalendarPerFieldToJson.name(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereType({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<CalendarType>? whereIn,
    List<CalendarType>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.type(isEqualTo as CalendarType)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.type(isNotEqualTo as CalendarType)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.type(isLessThan as CalendarType)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.type(isLessThanOrEqualTo as CalendarType)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.type(isGreaterThan as CalendarType)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.type(
                isGreaterThanOrEqualTo as CalendarType,
              )
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.type(e)),
        whereNotIn: whereNotIn?.map((e) => _$CalendarPerFieldToJson.type(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereIsVisibleInHome({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['isVisibleInHome']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.isVisibleInHome(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.isVisibleInHome(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.isVisibleInHome(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.isVisibleInHome(
                isLessThanOrEqualTo as bool,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.isVisibleInHome(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.isVisibleInHome(
                isGreaterThanOrEqualTo as bool,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => _$CalendarPerFieldToJson.isVisibleInHome(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => _$CalendarPerFieldToJson.isVisibleInHome(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereColor({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['color']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.color(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.color(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.color(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.color(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.color(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.color(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.color(e)),
        whereNotIn: whereNotIn?.map((e) => _$CalendarPerFieldToJson.color(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereExternalId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['externalId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.externalId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.externalId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.externalId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.externalId(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.externalId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.externalId(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.externalId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$CalendarPerFieldToJson.externalId(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereAccessToken({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['accessToken']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.accessToken(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.accessToken(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.accessToken(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.accessToken(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.accessToken(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.accessToken(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.accessToken(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$CalendarPerFieldToJson.accessToken(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereRefreshToken({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['refreshToken']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.refreshToken(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.refreshToken(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.refreshToken(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.refreshToken(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.refreshToken(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.refreshToken(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.refreshToken(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$CalendarPerFieldToJson.refreshToken(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereLastSyncAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['lastSyncAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.lastSyncAt(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.lastSyncAt(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.lastSyncAt(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.lastSyncAt(
                isLessThanOrEqualTo as DateTime?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.lastSyncAt(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.lastSyncAt(
                isGreaterThanOrEqualTo as DateTime?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.lastSyncAt(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$CalendarPerFieldToJson.lastSyncAt(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereSyncEnabled({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['syncEnabled']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.syncEnabled(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.syncEnabled(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.syncEnabled(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.syncEnabled(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.syncEnabled(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.syncEnabled(
                isGreaterThanOrEqualTo as bool,
              )
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.syncEnabled(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$CalendarPerFieldToJson.syncEnabled(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery whereHomeId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$CalendarFieldMap['homeId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.homeId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$CalendarPerFieldToJson.homeId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$CalendarPerFieldToJson.homeId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.homeId(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$CalendarPerFieldToJson.homeId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$CalendarPerFieldToJson.homeId(isGreaterThanOrEqualTo as String?)
            : null,
        whereIn: whereIn?.map((e) => _$CalendarPerFieldToJson.homeId(e)),
        whereNotIn: whereNotIn?.map((e) => _$CalendarPerFieldToJson.homeId(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  CalendarQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['name']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['type']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByIsVisibleInHome({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['isVisibleInHome']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByColor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['color']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByExternalId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['externalId']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByAccessToken({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['accessToken']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByRefreshToken({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['refreshToken']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByLastSyncAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['lastSyncAt']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderBySyncEnabled({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['syncEnabled']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  CalendarQuery orderByHomeId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CalendarDocumentSnapshot? startAtDocument,
    CalendarDocumentSnapshot? endAtDocument,
    CalendarDocumentSnapshot? endBeforeDocument,
    CalendarDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$CalendarFieldMap['homeId']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$CalendarQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$CalendarQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CalendarDocumentSnapshot extends FirestoreDocumentSnapshot<Calendar> {
  CalendarDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Calendar> snapshot;

  @override
  CalendarDocumentReference get reference {
    return CalendarDocumentReference(snapshot.reference);
  }

  @override
  final Calendar? data;
}

class CalendarQuerySnapshot
    extends FirestoreQuerySnapshot<Calendar, CalendarQueryDocumentSnapshot> {
  CalendarQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory CalendarQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Calendar> snapshot,
  ) {
    final docs = snapshot.docs.map(CalendarQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, CalendarDocumentSnapshot._);
    }).toList();

    return CalendarQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<CalendarDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    CalendarDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<CalendarDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Calendar> snapshot;

  @override
  final List<CalendarQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CalendarDocumentSnapshot>> docChanges;
}

class CalendarQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Calendar>
    implements CalendarDocumentSnapshot {
  CalendarQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Calendar> snapshot;

  @override
  final Calendar data;

  @override
  CalendarDocumentReference get reference {
    return CalendarDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class EventCollectionReference
    implements
        EventQuery,
        FirestoreCollectionReference<Event, EventQuerySnapshot> {
  factory EventCollectionReference(DocumentReference<Calendar> parent) =
      _$EventCollectionReference;

  static Event fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Event.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(Event value, SetOptions? options) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Event> get reference;

  /// A reference to the containing [CalendarDocumentReference] if this is a subcollection.
  CalendarDocumentReference get parent;

  @override
  EventDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<EventDocumentReference> add(Event value);
}

class _$EventCollectionReference extends _$EventQuery
    implements EventCollectionReference {
  factory _$EventCollectionReference(DocumentReference<Calendar> parent) {
    return _$EventCollectionReference._(
      CalendarDocumentReference(parent),
      parent
          .collection('events')
          .withConverter(
            fromFirestore: EventCollectionReference.fromFirestore,
            toFirestore: EventCollectionReference.toFirestore,
          ),
    );
  }

  _$EventCollectionReference._(
    this.parent,
    CollectionReference<Event> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final CalendarDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Event> get reference =>
      super.reference as CollectionReference<Event>;

  @override
  EventDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return EventDocumentReference(reference.doc(id));
  }

  @override
  Future<EventDocumentReference> add(Event value) {
    return reference.add(value).then((ref) => EventDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$EventCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class EventDocumentReference
    extends FirestoreDocumentReference<Event, EventDocumentSnapshot> {
  factory EventDocumentReference(DocumentReference<Event> reference) =
      _$EventDocumentReference;

  DocumentReference<Event> get reference;

  /// A reference to the [EventCollectionReference] containing this document.
  EventCollectionReference get parent {
    return _$EventCollectionReference(
      reference.parent.parent!.withConverter<Calendar>(
        fromFirestore: CalendarCollectionReference.fromFirestore,
        toFirestore: CalendarCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<EventDocumentSnapshot> snapshots();

  @override
  Future<EventDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Event model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue startDateFieldValue,
    FieldValue endDateFieldValue,
    FieldValue isAllDayFieldValue,
    FieldValue sourceFieldValue,
    FieldValue externalEventIdFieldValue,
    FieldValue canEditFieldValue,
    FieldValue attendeeUserIdsFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Event model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue startDateFieldValue,
    FieldValue endDateFieldValue,
    FieldValue isAllDayFieldValue,
    FieldValue sourceFieldValue,
    FieldValue externalEventIdFieldValue,
    FieldValue canEditFieldValue,
    FieldValue attendeeUserIdsFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Event model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue startDateFieldValue,
    FieldValue endDateFieldValue,
    FieldValue isAllDayFieldValue,
    FieldValue sourceFieldValue,
    FieldValue externalEventIdFieldValue,
    FieldValue canEditFieldValue,
    FieldValue attendeeUserIdsFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime? endDate,
    FieldValue endDateFieldValue,
    bool isAllDay,
    FieldValue isAllDayFieldValue,
    EventSource source,
    FieldValue sourceFieldValue,
    String? externalEventId,
    FieldValue externalEventIdFieldValue,
    bool canEdit,
    FieldValue canEditFieldValue,
    List<String>? attendeeUserIds,
    FieldValue attendeeUserIdsFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime? endDate,
    FieldValue endDateFieldValue,
    bool isAllDay,
    FieldValue isAllDayFieldValue,
    EventSource source,
    FieldValue sourceFieldValue,
    String? externalEventId,
    FieldValue externalEventIdFieldValue,
    bool canEdit,
    FieldValue canEditFieldValue,
    List<String>? attendeeUserIds,
    FieldValue attendeeUserIdsFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String title,
    FieldValue titleFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime? endDate,
    FieldValue endDateFieldValue,
    bool isAllDay,
    FieldValue isAllDayFieldValue,
    EventSource source,
    FieldValue sourceFieldValue,
    String? externalEventId,
    FieldValue externalEventIdFieldValue,
    bool canEdit,
    FieldValue canEditFieldValue,
    List<String>? attendeeUserIds,
    FieldValue attendeeUserIdsFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
  });
}

class _$EventDocumentReference
    extends FirestoreDocumentReference<Event, EventDocumentSnapshot>
    implements EventDocumentReference {
  _$EventDocumentReference(this.reference);

  @override
  final DocumentReference<Event> reference;

  /// A reference to the [EventCollectionReference] containing this document.
  EventCollectionReference get parent {
    return _$EventCollectionReference(
      reference.parent.parent!.withConverter<Calendar>(
        fromFirestore: CalendarCollectionReference.fromFirestore,
        toFirestore: CalendarCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<EventDocumentSnapshot> snapshots() {
    return reference.snapshots().map(EventDocumentSnapshot._);
  }

  @override
  Future<EventDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(EventDocumentSnapshot._);
  }

  @override
  Future<EventDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(EventDocumentSnapshot._);
  }

  Future<void> set(
    Event model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? endDateFieldValue,
    FieldValue? isAllDayFieldValue,
    FieldValue? sourceFieldValue,
    FieldValue? externalEventIdFieldValue,
    FieldValue? canEditFieldValue,
    FieldValue? attendeeUserIdsFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (titleFieldValue != null) _$EventFieldMap['title']!: titleFieldValue,

      if (descriptionFieldValue != null)
        _$EventFieldMap['description']!: descriptionFieldValue,

      if (startDateFieldValue != null)
        _$EventFieldMap['startDate']!: startDateFieldValue,

      if (endDateFieldValue != null)
        _$EventFieldMap['endDate']!: endDateFieldValue,

      if (isAllDayFieldValue != null)
        _$EventFieldMap['isAllDay']!: isAllDayFieldValue,

      if (sourceFieldValue != null)
        _$EventFieldMap['source']!: sourceFieldValue,

      if (externalEventIdFieldValue != null)
        _$EventFieldMap['externalEventId']!: externalEventIdFieldValue,

      if (canEditFieldValue != null)
        _$EventFieldMap['canEdit']!: canEditFieldValue,

      if (attendeeUserIdsFieldValue != null)
        _$EventFieldMap['attendeeUserIds']!: attendeeUserIdsFieldValue,

      if (createdAtFieldValue != null)
        _$EventFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAtFieldValue != null)
        _$EventFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Event model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? endDateFieldValue,
    FieldValue? isAllDayFieldValue,
    FieldValue? sourceFieldValue,
    FieldValue? externalEventIdFieldValue,
    FieldValue? canEditFieldValue,
    FieldValue? attendeeUserIdsFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (titleFieldValue != null) _$EventFieldMap['title']!: titleFieldValue,

      if (descriptionFieldValue != null)
        _$EventFieldMap['description']!: descriptionFieldValue,

      if (startDateFieldValue != null)
        _$EventFieldMap['startDate']!: startDateFieldValue,

      if (endDateFieldValue != null)
        _$EventFieldMap['endDate']!: endDateFieldValue,

      if (isAllDayFieldValue != null)
        _$EventFieldMap['isAllDay']!: isAllDayFieldValue,

      if (sourceFieldValue != null)
        _$EventFieldMap['source']!: sourceFieldValue,

      if (externalEventIdFieldValue != null)
        _$EventFieldMap['externalEventId']!: externalEventIdFieldValue,

      if (canEditFieldValue != null)
        _$EventFieldMap['canEdit']!: canEditFieldValue,

      if (attendeeUserIdsFieldValue != null)
        _$EventFieldMap['attendeeUserIds']!: attendeeUserIdsFieldValue,

      if (createdAtFieldValue != null)
        _$EventFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAtFieldValue != null)
        _$EventFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Event model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? endDateFieldValue,
    FieldValue? isAllDayFieldValue,
    FieldValue? sourceFieldValue,
    FieldValue? externalEventIdFieldValue,
    FieldValue? canEditFieldValue,
    FieldValue? attendeeUserIdsFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (titleFieldValue != null) _$EventFieldMap['title']!: titleFieldValue,

      if (descriptionFieldValue != null)
        _$EventFieldMap['description']!: descriptionFieldValue,

      if (startDateFieldValue != null)
        _$EventFieldMap['startDate']!: startDateFieldValue,

      if (endDateFieldValue != null)
        _$EventFieldMap['endDate']!: endDateFieldValue,

      if (isAllDayFieldValue != null)
        _$EventFieldMap['isAllDay']!: isAllDayFieldValue,

      if (sourceFieldValue != null)
        _$EventFieldMap['source']!: sourceFieldValue,

      if (externalEventIdFieldValue != null)
        _$EventFieldMap['externalEventId']!: externalEventIdFieldValue,

      if (canEditFieldValue != null)
        _$EventFieldMap['canEdit']!: canEditFieldValue,

      if (attendeeUserIdsFieldValue != null)
        _$EventFieldMap['attendeeUserIds']!: attendeeUserIdsFieldValue,

      if (createdAtFieldValue != null)
        _$EventFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAtFieldValue != null)
        _$EventFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? endDate = _sentinel,
    FieldValue? endDateFieldValue,
    Object? isAllDay = _sentinel,
    FieldValue? isAllDayFieldValue,
    Object? source = _sentinel,
    FieldValue? sourceFieldValue,
    Object? externalEventId = _sentinel,
    FieldValue? externalEventIdFieldValue,
    Object? canEdit = _sentinel,
    FieldValue? canEditFieldValue,
    Object? attendeeUserIds = _sentinel,
    FieldValue? attendeeUserIdsFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) async {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      endDate == _sentinel || endDateFieldValue == null,
      "Cannot specify both endDate and endDateFieldValue",
    );
    assert(
      isAllDay == _sentinel || isAllDayFieldValue == null,
      "Cannot specify both isAllDay and isAllDayFieldValue",
    );
    assert(
      source == _sentinel || sourceFieldValue == null,
      "Cannot specify both source and sourceFieldValue",
    );
    assert(
      externalEventId == _sentinel || externalEventIdFieldValue == null,
      "Cannot specify both externalEventId and externalEventIdFieldValue",
    );
    assert(
      canEdit == _sentinel || canEditFieldValue == null,
      "Cannot specify both canEdit and canEditFieldValue",
    );
    assert(
      attendeeUserIds == _sentinel || attendeeUserIdsFieldValue == null,
      "Cannot specify both attendeeUserIds and attendeeUserIdsFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$EventFieldMap['title']!: _$EventPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$EventFieldMap['title']!: titleFieldValue,

      if (description != _sentinel)
        _$EventFieldMap['description']!: _$EventPerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$EventFieldMap['description']!: descriptionFieldValue,

      if (startDate != _sentinel)
        _$EventFieldMap['startDate']!: _$EventPerFieldToJson.startDate(
          startDate as DateTime,
        ),

      if (startDateFieldValue != null)
        _$EventFieldMap['startDate']!: startDateFieldValue,

      if (endDate != _sentinel)
        _$EventFieldMap['endDate']!: _$EventPerFieldToJson.endDate(
          endDate as DateTime?,
        ),

      if (endDateFieldValue != null)
        _$EventFieldMap['endDate']!: endDateFieldValue,

      if (isAllDay != _sentinel)
        _$EventFieldMap['isAllDay']!: _$EventPerFieldToJson.isAllDay(
          isAllDay as bool,
        ),

      if (isAllDayFieldValue != null)
        _$EventFieldMap['isAllDay']!: isAllDayFieldValue,

      if (source != _sentinel)
        _$EventFieldMap['source']!: _$EventPerFieldToJson.source(
          source as EventSource,
        ),

      if (sourceFieldValue != null)
        _$EventFieldMap['source']!: sourceFieldValue,

      if (externalEventId != _sentinel)
        _$EventFieldMap['externalEventId']!: _$EventPerFieldToJson
            .externalEventId(externalEventId as String?),

      if (externalEventIdFieldValue != null)
        _$EventFieldMap['externalEventId']!: externalEventIdFieldValue,

      if (canEdit != _sentinel)
        _$EventFieldMap['canEdit']!: _$EventPerFieldToJson.canEdit(
          canEdit as bool,
        ),

      if (canEditFieldValue != null)
        _$EventFieldMap['canEdit']!: canEditFieldValue,

      if (attendeeUserIds != _sentinel)
        _$EventFieldMap['attendeeUserIds']!: _$EventPerFieldToJson
            .attendeeUserIds(attendeeUserIds as List<String>?),

      if (attendeeUserIdsFieldValue != null)
        _$EventFieldMap['attendeeUserIds']!: attendeeUserIdsFieldValue,

      if (createdAt != _sentinel)
        _$EventFieldMap['createdAt']!: _$EventPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$EventFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAt != _sentinel)
        _$EventFieldMap['updatedAt']!: _$EventPerFieldToJson.updatedAt(
          updatedAt as DateTime,
        ),

      if (updatedAtFieldValue != null)
        _$EventFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? endDate = _sentinel,
    FieldValue? endDateFieldValue,
    Object? isAllDay = _sentinel,
    FieldValue? isAllDayFieldValue,
    Object? source = _sentinel,
    FieldValue? sourceFieldValue,
    Object? externalEventId = _sentinel,
    FieldValue? externalEventIdFieldValue,
    Object? canEdit = _sentinel,
    FieldValue? canEditFieldValue,
    Object? attendeeUserIds = _sentinel,
    FieldValue? attendeeUserIdsFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      endDate == _sentinel || endDateFieldValue == null,
      "Cannot specify both endDate and endDateFieldValue",
    );
    assert(
      isAllDay == _sentinel || isAllDayFieldValue == null,
      "Cannot specify both isAllDay and isAllDayFieldValue",
    );
    assert(
      source == _sentinel || sourceFieldValue == null,
      "Cannot specify both source and sourceFieldValue",
    );
    assert(
      externalEventId == _sentinel || externalEventIdFieldValue == null,
      "Cannot specify both externalEventId and externalEventIdFieldValue",
    );
    assert(
      canEdit == _sentinel || canEditFieldValue == null,
      "Cannot specify both canEdit and canEditFieldValue",
    );
    assert(
      attendeeUserIds == _sentinel || attendeeUserIdsFieldValue == null,
      "Cannot specify both attendeeUserIds and attendeeUserIdsFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$EventFieldMap['title']!: _$EventPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$EventFieldMap['title']!: titleFieldValue,

      if (description != _sentinel)
        _$EventFieldMap['description']!: _$EventPerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$EventFieldMap['description']!: descriptionFieldValue,

      if (startDate != _sentinel)
        _$EventFieldMap['startDate']!: _$EventPerFieldToJson.startDate(
          startDate as DateTime,
        ),

      if (startDateFieldValue != null)
        _$EventFieldMap['startDate']!: startDateFieldValue,

      if (endDate != _sentinel)
        _$EventFieldMap['endDate']!: _$EventPerFieldToJson.endDate(
          endDate as DateTime?,
        ),

      if (endDateFieldValue != null)
        _$EventFieldMap['endDate']!: endDateFieldValue,

      if (isAllDay != _sentinel)
        _$EventFieldMap['isAllDay']!: _$EventPerFieldToJson.isAllDay(
          isAllDay as bool,
        ),

      if (isAllDayFieldValue != null)
        _$EventFieldMap['isAllDay']!: isAllDayFieldValue,

      if (source != _sentinel)
        _$EventFieldMap['source']!: _$EventPerFieldToJson.source(
          source as EventSource,
        ),

      if (sourceFieldValue != null)
        _$EventFieldMap['source']!: sourceFieldValue,

      if (externalEventId != _sentinel)
        _$EventFieldMap['externalEventId']!: _$EventPerFieldToJson
            .externalEventId(externalEventId as String?),

      if (externalEventIdFieldValue != null)
        _$EventFieldMap['externalEventId']!: externalEventIdFieldValue,

      if (canEdit != _sentinel)
        _$EventFieldMap['canEdit']!: _$EventPerFieldToJson.canEdit(
          canEdit as bool,
        ),

      if (canEditFieldValue != null)
        _$EventFieldMap['canEdit']!: canEditFieldValue,

      if (attendeeUserIds != _sentinel)
        _$EventFieldMap['attendeeUserIds']!: _$EventPerFieldToJson
            .attendeeUserIds(attendeeUserIds as List<String>?),

      if (attendeeUserIdsFieldValue != null)
        _$EventFieldMap['attendeeUserIds']!: attendeeUserIdsFieldValue,

      if (createdAt != _sentinel)
        _$EventFieldMap['createdAt']!: _$EventPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$EventFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAt != _sentinel)
        _$EventFieldMap['updatedAt']!: _$EventPerFieldToJson.updatedAt(
          updatedAt as DateTime,
        ),

      if (updatedAtFieldValue != null)
        _$EventFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? endDate = _sentinel,
    FieldValue? endDateFieldValue,
    Object? isAllDay = _sentinel,
    FieldValue? isAllDayFieldValue,
    Object? source = _sentinel,
    FieldValue? sourceFieldValue,
    Object? externalEventId = _sentinel,
    FieldValue? externalEventIdFieldValue,
    Object? canEdit = _sentinel,
    FieldValue? canEditFieldValue,
    Object? attendeeUserIds = _sentinel,
    FieldValue? attendeeUserIdsFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
  }) {
    assert(
      title == _sentinel || titleFieldValue == null,
      "Cannot specify both title and titleFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      endDate == _sentinel || endDateFieldValue == null,
      "Cannot specify both endDate and endDateFieldValue",
    );
    assert(
      isAllDay == _sentinel || isAllDayFieldValue == null,
      "Cannot specify both isAllDay and isAllDayFieldValue",
    );
    assert(
      source == _sentinel || sourceFieldValue == null,
      "Cannot specify both source and sourceFieldValue",
    );
    assert(
      externalEventId == _sentinel || externalEventIdFieldValue == null,
      "Cannot specify both externalEventId and externalEventIdFieldValue",
    );
    assert(
      canEdit == _sentinel || canEditFieldValue == null,
      "Cannot specify both canEdit and canEditFieldValue",
    );
    assert(
      attendeeUserIds == _sentinel || attendeeUserIdsFieldValue == null,
      "Cannot specify both attendeeUserIds and attendeeUserIdsFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    final json = {
      if (title != _sentinel)
        _$EventFieldMap['title']!: _$EventPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$EventFieldMap['title']!: titleFieldValue,

      if (description != _sentinel)
        _$EventFieldMap['description']!: _$EventPerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$EventFieldMap['description']!: descriptionFieldValue,

      if (startDate != _sentinel)
        _$EventFieldMap['startDate']!: _$EventPerFieldToJson.startDate(
          startDate as DateTime,
        ),

      if (startDateFieldValue != null)
        _$EventFieldMap['startDate']!: startDateFieldValue,

      if (endDate != _sentinel)
        _$EventFieldMap['endDate']!: _$EventPerFieldToJson.endDate(
          endDate as DateTime?,
        ),

      if (endDateFieldValue != null)
        _$EventFieldMap['endDate']!: endDateFieldValue,

      if (isAllDay != _sentinel)
        _$EventFieldMap['isAllDay']!: _$EventPerFieldToJson.isAllDay(
          isAllDay as bool,
        ),

      if (isAllDayFieldValue != null)
        _$EventFieldMap['isAllDay']!: isAllDayFieldValue,

      if (source != _sentinel)
        _$EventFieldMap['source']!: _$EventPerFieldToJson.source(
          source as EventSource,
        ),

      if (sourceFieldValue != null)
        _$EventFieldMap['source']!: sourceFieldValue,

      if (externalEventId != _sentinel)
        _$EventFieldMap['externalEventId']!: _$EventPerFieldToJson
            .externalEventId(externalEventId as String?),

      if (externalEventIdFieldValue != null)
        _$EventFieldMap['externalEventId']!: externalEventIdFieldValue,

      if (canEdit != _sentinel)
        _$EventFieldMap['canEdit']!: _$EventPerFieldToJson.canEdit(
          canEdit as bool,
        ),

      if (canEditFieldValue != null)
        _$EventFieldMap['canEdit']!: canEditFieldValue,

      if (attendeeUserIds != _sentinel)
        _$EventFieldMap['attendeeUserIds']!: _$EventPerFieldToJson
            .attendeeUserIds(attendeeUserIds as List<String>?),

      if (attendeeUserIdsFieldValue != null)
        _$EventFieldMap['attendeeUserIds']!: attendeeUserIdsFieldValue,

      if (createdAt != _sentinel)
        _$EventFieldMap['createdAt']!: _$EventPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$EventFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAt != _sentinel)
        _$EventFieldMap['updatedAt']!: _$EventPerFieldToJson.updatedAt(
          updatedAt as DateTime,
        ),

      if (updatedAtFieldValue != null)
        _$EventFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is EventDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class EventQuery implements QueryReference<Event, EventQuerySnapshot> {
  @override
  EventQuery limit(int limit);

  @override
  EventQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  EventQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereTitle({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereStartDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereEndDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereIsAllDay({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereSource({
    EventSource? isEqualTo,
    EventSource? isNotEqualTo,
    EventSource? isLessThan,
    EventSource? isLessThanOrEqualTo,
    EventSource? isGreaterThan,
    EventSource? isGreaterThanOrEqualTo,
    List<EventSource>? whereIn,
    List<EventSource>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereExternalEventId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereCanEdit({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereAttendeeUserIds({
    List<String>? isEqualTo,
    List<String>? isNotEqualTo,
    List<String>? isLessThan,
    List<String>? isLessThanOrEqualTo,
    List<String>? isGreaterThan,
    List<String>? isGreaterThanOrEqualTo,
    String? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  });

  EventQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  EventQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  EventQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByStartDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByEndDate({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByIsAllDay({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderBySource({
    bool descending = false,
    EventSource startAt,
    EventSource startAfter,
    EventSource endAt,
    EventSource endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByExternalEventId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByCanEdit({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByAttendeeUserIds({
    bool descending = false,
    List<String>? startAt,
    List<String>? startAfter,
    List<String>? endAt,
    List<String>? endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });

  EventQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  });
}

class _$EventQuery extends QueryReference<Event, EventQuerySnapshot>
    implements EventQuery {
  _$EventQuery(
    this._collection, {
    required Query<Event> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<EventQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(EventQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<EventQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(EventQuerySnapshot._fromQuerySnapshot);
  }

  @override
  EventQuery limit(int limit) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery limitToLast(int limit) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereTitle({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.title(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.description(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.description(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$EventPerFieldToJson.description(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereStartDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['startDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.startDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.startDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.startDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.startDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.startDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.startDate(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.startDate(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.startDate(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereEndDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime?>? whereIn,
    List<DateTime?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['endDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.endDate(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.endDate(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.endDate(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.endDate(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.endDate(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.endDate(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.endDate(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.endDate(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereIsAllDay({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['isAllDay']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.isAllDay(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.isAllDay(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.isAllDay(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.isAllDay(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.isAllDay(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.isAllDay(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.isAllDay(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.isAllDay(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereSource({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<EventSource>? whereIn,
    List<EventSource>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['source']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.source(isEqualTo as EventSource)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.source(isNotEqualTo as EventSource)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.source(isLessThan as EventSource)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.source(isLessThanOrEqualTo as EventSource)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.source(isGreaterThan as EventSource)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.source(
                isGreaterThanOrEqualTo as EventSource,
              )
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.source(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.source(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereExternalEventId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String?>? whereIn,
    List<String?>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['externalEventId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.externalEventId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.externalEventId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.externalEventId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.externalEventId(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.externalEventId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.externalEventId(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.externalEventId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$EventPerFieldToJson.externalEventId(e),
        ),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereCanEdit({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['canEdit']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.canEdit(isEqualTo as bool)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.canEdit(isNotEqualTo as bool)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.canEdit(isLessThan as bool)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.canEdit(isLessThanOrEqualTo as bool)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.canEdit(isGreaterThan as bool)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.canEdit(isGreaterThanOrEqualTo as bool)
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.canEdit(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.canEdit(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereAttendeeUserIds({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<String>? arrayContainsAny,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['attendeeUserIds']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.attendeeUserIds(isEqualTo as List<String>?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.attendeeUserIds(
                isNotEqualTo as List<String>?,
              )
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.attendeeUserIds(isLessThan as List<String>?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.attendeeUserIds(
                isLessThanOrEqualTo as List<String>?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.attendeeUserIds(
                isGreaterThan as List<String>?,
              )
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.attendeeUserIds(
                isGreaterThanOrEqualTo as List<String>?,
              )
            : null,
        arrayContains: arrayContains != null
            ? (_$EventPerFieldToJson.attendeeUserIds([arrayContains as String])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$EventPerFieldToJson.attendeeUserIds(arrayContainsAny)
                  as Iterable<Object>?
            : null,
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.createdAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.createdAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery whereUpdatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$EventFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$EventPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$EventPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$EventPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$EventPerFieldToJson.updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$EventPerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$EventPerFieldToJson.updatedAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$EventPerFieldToJson.updatedAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$EventPerFieldToJson.updatedAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  EventQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      fieldPath,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      FieldPath.documentId,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['title']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['description']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByStartDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['startDate']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByEndDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['endDate']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByIsAllDay({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['isAllDay']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderBySource({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['source']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByExternalEventId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['externalEventId']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByCanEdit({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['canEdit']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByAttendeeUserIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['attendeeUserIds']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['createdAt']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  EventQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    EventDocumentSnapshot? startAtDocument,
    EventDocumentSnapshot? endAtDocument,
    EventDocumentSnapshot? endBeforeDocument,
    EventDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$EventFieldMap['updatedAt']!,
      descending: descending,
    );
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$EventQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$EventQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class EventDocumentSnapshot extends FirestoreDocumentSnapshot<Event> {
  EventDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Event> snapshot;

  @override
  EventDocumentReference get reference {
    return EventDocumentReference(snapshot.reference);
  }

  @override
  final Event? data;
}

class EventQuerySnapshot
    extends FirestoreQuerySnapshot<Event, EventQueryDocumentSnapshot> {
  EventQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory EventQuerySnapshot._fromQuerySnapshot(QuerySnapshot<Event> snapshot) {
    final docs = snapshot.docs.map(EventQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, EventDocumentSnapshot._);
    }).toList();

    return EventQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<EventDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    EventDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<EventDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Event> snapshot;

  @override
  final List<EventQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<EventDocumentSnapshot>> docChanges;
}

class EventQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Event>
    implements EventDocumentSnapshot {
  EventQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Event> snapshot;

  @override
  final Event data;

  @override
  EventDocumentReference get reference {
    return EventDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String,
  name: json['name'] as String,
  avatar: json['avatar'] as String?,
  birthDate: _$JsonConverterFromJson<Timestamp, DateTime>(
    json['birthDate'],
    const FirestoreDateTimeConverter().fromJson,
  ),
  firebaseAuthId: json['firebaseAuthId'] as String?,
  homeIds: (json['homeIds'] as List<dynamic>).map((e) => e as String).toList(),
  relationshipIds: (json['relationshipIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

const _$UserFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'avatar': 'avatar',
  'birthDate': 'birthDate',
  'firebaseAuthId': 'firebaseAuthId',
  'homeIds': 'homeIds',
  'relationshipIds': 'relationshipIds',
};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? avatar(String? instance) => instance;
  // ignore: unused_element
  static Object? birthDate(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
        instance,
        const FirestoreDateTimeConverter().toJson,
      );
  // ignore: unused_element
  static Object? firebaseAuthId(String? instance) => instance;
  // ignore: unused_element
  static Object? homeIds(List<String> instance) => instance;
  // ignore: unused_element
  static Object? relationshipIds(List<String>? instance) => instance;
}

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'avatar': instance.avatar,
  'birthDate': _$JsonConverterToJson<Timestamp, DateTime>(
    instance.birthDate,
    const FirestoreDateTimeConverter().toJson,
  ),
  'firebaseAuthId': instance.firebaseAuthId,
  'homeIds': instance.homeIds,
  'relationshipIds': instance.relationshipIds,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_Calendar _$CalendarFromJson(Map<String, dynamic> json) => _Calendar(
  id: json['id'] as String,
  name: json['name'] as String,
  type: $enumDecode(_$CalendarTypeEnumMap, json['type']),
  isVisibleInHome: json['isVisibleInHome'] as bool,
  color: json['color'] as String,
  externalId: json['externalId'] as String?,
  accessToken: json['accessToken'] as String?,
  refreshToken: json['refreshToken'] as String?,
  lastSyncAt: _$JsonConverterFromJson<Timestamp, DateTime>(
    json['lastSyncAt'],
    const FirestoreDateTimeConverter().fromJson,
  ),
  syncEnabled: json['syncEnabled'] as bool? ?? true,
  homeId: json['homeId'] as String?,
);

const _$CalendarFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'type': 'type',
  'isVisibleInHome': 'isVisibleInHome',
  'color': 'color',
  'externalId': 'externalId',
  'accessToken': 'accessToken',
  'refreshToken': 'refreshToken',
  'lastSyncAt': 'lastSyncAt',
  'syncEnabled': 'syncEnabled',
  'homeId': 'homeId',
};

// ignore: unused_element
abstract class _$CalendarPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? type(CalendarType instance) =>
      _$CalendarTypeEnumMap[instance]!;
  // ignore: unused_element
  static Object? isVisibleInHome(bool instance) => instance;
  // ignore: unused_element
  static Object? color(String instance) => instance;
  // ignore: unused_element
  static Object? externalId(String? instance) => instance;
  // ignore: unused_element
  static Object? accessToken(String? instance) => instance;
  // ignore: unused_element
  static Object? refreshToken(String? instance) => instance;
  // ignore: unused_element
  static Object? lastSyncAt(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
        instance,
        const FirestoreDateTimeConverter().toJson,
      );
  // ignore: unused_element
  static Object? syncEnabled(bool instance) => instance;
  // ignore: unused_element
  static Object? homeId(String? instance) => instance;
}

Map<String, dynamic> _$CalendarToJson(_Calendar instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'type': _$CalendarTypeEnumMap[instance.type]!,
  'isVisibleInHome': instance.isVisibleInHome,
  'color': instance.color,
  'externalId': instance.externalId,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'lastSyncAt': _$JsonConverterToJson<Timestamp, DateTime>(
    instance.lastSyncAt,
    const FirestoreDateTimeConverter().toJson,
  ),
  'syncEnabled': instance.syncEnabled,
  'homeId': instance.homeId,
};

const _$CalendarTypeEnumMap = {
  CalendarType.internal: 'internal',
  CalendarType.external: 'external',
};

_Event _$EventFromJson(Map<String, dynamic> json) => _Event(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String?,
  startDate: const FirestoreDateTimeConverter().fromJson(
    json['startDate'] as Timestamp,
  ),
  endDate: _$JsonConverterFromJson<Timestamp, DateTime>(
    json['endDate'],
    const FirestoreDateTimeConverter().fromJson,
  ),
  isAllDay: json['isAllDay'] as bool,
  source: $enumDecode(_$EventSourceEnumMap, json['source']),
  externalEventId: json['externalEventId'] as String?,
  canEdit: json['canEdit'] as bool,
  attendeeUserIds: (json['attendeeUserIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  createdAt: const FirestoreDateTimeConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  updatedAt: const FirestoreDateTimeConverter().fromJson(
    json['updatedAt'] as Timestamp,
  ),
);

const _$EventFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'description': 'description',
  'startDate': 'startDate',
  'endDate': 'endDate',
  'isAllDay': 'isAllDay',
  'source': 'source',
  'externalEventId': 'externalEventId',
  'canEdit': 'canEdit',
  'attendeeUserIds': 'attendeeUserIds',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
};

// ignore: unused_element
abstract class _$EventPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? startDate(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? endDate(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
        instance,
        const FirestoreDateTimeConverter().toJson,
      );
  // ignore: unused_element
  static Object? isAllDay(bool instance) => instance;
  // ignore: unused_element
  static Object? source(EventSource instance) =>
      _$EventSourceEnumMap[instance]!;
  // ignore: unused_element
  static Object? externalEventId(String? instance) => instance;
  // ignore: unused_element
  static Object? canEdit(bool instance) => instance;
  // ignore: unused_element
  static Object? attendeeUserIds(List<String>? instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$EventToJson(_Event instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'startDate': const FirestoreDateTimeConverter().toJson(instance.startDate),
  'endDate': _$JsonConverterToJson<Timestamp, DateTime>(
    instance.endDate,
    const FirestoreDateTimeConverter().toJson,
  ),
  'isAllDay': instance.isAllDay,
  'source': _$EventSourceEnumMap[instance.source]!,
  'externalEventId': instance.externalEventId,
  'canEdit': instance.canEdit,
  'attendeeUserIds': instance.attendeeUserIds,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const FirestoreDateTimeConverter().toJson(instance.updatedAt),
};

const _$EventSourceEnumMap = {
  EventSource.internal: 'internal',
  EventSource.externalSynced: 'externalSynced',
};
