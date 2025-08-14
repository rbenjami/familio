// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'relationship.dart';

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
abstract class RelationshipCollectionReference
    implements
        RelationshipQuery,
        FirestoreCollectionReference<Relationship, RelationshipQuerySnapshot> {
  factory RelationshipCollectionReference([FirebaseFirestore? firestore]) =
      _$RelationshipCollectionReference;

  static Relationship fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Relationship.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Relationship value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Relationship> get reference;

  @override
  RelationshipDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<RelationshipDocumentReference> add(Relationship value);
}

class _$RelationshipCollectionReference extends _$RelationshipQuery
    implements RelationshipCollectionReference {
  factory _$RelationshipCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$RelationshipCollectionReference._(
      firestore
          .collection('relationships')
          .withConverter(
            fromFirestore: RelationshipCollectionReference.fromFirestore,
            toFirestore: RelationshipCollectionReference.toFirestore,
          ),
    );
  }

  _$RelationshipCollectionReference._(
    CollectionReference<Relationship> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Relationship> get reference =>
      super.reference as CollectionReference<Relationship>;

  @override
  RelationshipDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return RelationshipDocumentReference(reference.doc(id));
  }

  @override
  Future<RelationshipDocumentReference> add(Relationship value) {
    return reference
        .add(value)
        .then((ref) => RelationshipDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$RelationshipCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class RelationshipDocumentReference
    extends
        FirestoreDocumentReference<Relationship, RelationshipDocumentSnapshot> {
  factory RelationshipDocumentReference(
    DocumentReference<Relationship> reference,
  ) = _$RelationshipDocumentReference;

  DocumentReference<Relationship> get reference;

  /// A reference to the [RelationshipCollectionReference] containing this document.
  RelationshipCollectionReference get parent {
    return _$RelationshipCollectionReference(reference.firestore);
  }

  @override
  Stream<RelationshipDocumentSnapshot> snapshots();

  @override
  Future<RelationshipDocumentSnapshot> get([GetOptions? options]);

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
    Relationship model, {
    SetOptions? options,
    FieldValue user1IdFieldValue,
    FieldValue user2IdFieldValue,
    FieldValue typeFieldValue,
    FieldValue homeIdFieldValue,
    FieldValue createdAtFieldValue,
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
    Relationship model, {
    SetOptions? options,
    FieldValue user1IdFieldValue,
    FieldValue user2IdFieldValue,
    FieldValue typeFieldValue,
    FieldValue homeIdFieldValue,
    FieldValue createdAtFieldValue,
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
    Relationship model, {
    SetOptions? options,
    FieldValue user1IdFieldValue,
    FieldValue user2IdFieldValue,
    FieldValue typeFieldValue,
    FieldValue homeIdFieldValue,
    FieldValue createdAtFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String user1Id,
    FieldValue user1IdFieldValue,
    String user2Id,
    FieldValue user2IdFieldValue,
    RelationshipType type,
    FieldValue typeFieldValue,
    String? homeId,
    FieldValue homeIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String user1Id,
    FieldValue user1IdFieldValue,
    String user2Id,
    FieldValue user2IdFieldValue,
    RelationshipType type,
    FieldValue typeFieldValue,
    String? homeId,
    FieldValue homeIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String user1Id,
    FieldValue user1IdFieldValue,
    String user2Id,
    FieldValue user2IdFieldValue,
    RelationshipType type,
    FieldValue typeFieldValue,
    String? homeId,
    FieldValue homeIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
  });
}

class _$RelationshipDocumentReference
    extends
        FirestoreDocumentReference<Relationship, RelationshipDocumentSnapshot>
    implements RelationshipDocumentReference {
  _$RelationshipDocumentReference(this.reference);

  @override
  final DocumentReference<Relationship> reference;

  /// A reference to the [RelationshipCollectionReference] containing this document.
  RelationshipCollectionReference get parent {
    return _$RelationshipCollectionReference(reference.firestore);
  }

  @override
  Stream<RelationshipDocumentSnapshot> snapshots() {
    return reference.snapshots().map(RelationshipDocumentSnapshot._);
  }

  @override
  Future<RelationshipDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(RelationshipDocumentSnapshot._);
  }

  @override
  Future<RelationshipDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(RelationshipDocumentSnapshot._);
  }

  Future<void> set(
    Relationship model, {
    SetOptions? options,
    FieldValue? user1IdFieldValue,
    FieldValue? user2IdFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? homeIdFieldValue,
    FieldValue? createdAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (user1IdFieldValue != null)
        _$RelationshipFieldMap['user1Id']!: user1IdFieldValue,

      if (user2IdFieldValue != null)
        _$RelationshipFieldMap['user2Id']!: user2IdFieldValue,

      if (typeFieldValue != null)
        _$RelationshipFieldMap['type']!: typeFieldValue,

      if (homeIdFieldValue != null)
        _$RelationshipFieldMap['homeId']!: homeIdFieldValue,

      if (createdAtFieldValue != null)
        _$RelationshipFieldMap['createdAt']!: createdAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Relationship model, {
    SetOptions? options,
    FieldValue? user1IdFieldValue,
    FieldValue? user2IdFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? homeIdFieldValue,
    FieldValue? createdAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (user1IdFieldValue != null)
        _$RelationshipFieldMap['user1Id']!: user1IdFieldValue,

      if (user2IdFieldValue != null)
        _$RelationshipFieldMap['user2Id']!: user2IdFieldValue,

      if (typeFieldValue != null)
        _$RelationshipFieldMap['type']!: typeFieldValue,

      if (homeIdFieldValue != null)
        _$RelationshipFieldMap['homeId']!: homeIdFieldValue,

      if (createdAtFieldValue != null)
        _$RelationshipFieldMap['createdAt']!: createdAtFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Relationship model, {
    SetOptions? options,
    FieldValue? user1IdFieldValue,
    FieldValue? user2IdFieldValue,
    FieldValue? typeFieldValue,
    FieldValue? homeIdFieldValue,
    FieldValue? createdAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (user1IdFieldValue != null)
        _$RelationshipFieldMap['user1Id']!: user1IdFieldValue,

      if (user2IdFieldValue != null)
        _$RelationshipFieldMap['user2Id']!: user2IdFieldValue,

      if (typeFieldValue != null)
        _$RelationshipFieldMap['type']!: typeFieldValue,

      if (homeIdFieldValue != null)
        _$RelationshipFieldMap['homeId']!: homeIdFieldValue,

      if (createdAtFieldValue != null)
        _$RelationshipFieldMap['createdAt']!: createdAtFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? user1Id = _sentinel,
    FieldValue? user1IdFieldValue,
    Object? user2Id = _sentinel,
    FieldValue? user2IdFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) async {
    assert(
      user1Id == _sentinel || user1IdFieldValue == null,
      "Cannot specify both user1Id and user1IdFieldValue",
    );
    assert(
      user2Id == _sentinel || user2IdFieldValue == null,
      "Cannot specify both user2Id and user2IdFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (user1Id != _sentinel)
        _$RelationshipFieldMap['user1Id']!: _$RelationshipPerFieldToJson
            .user1Id(user1Id as String),

      if (user1IdFieldValue != null)
        _$RelationshipFieldMap['user1Id']!: user1IdFieldValue,

      if (user2Id != _sentinel)
        _$RelationshipFieldMap['user2Id']!: _$RelationshipPerFieldToJson
            .user2Id(user2Id as String),

      if (user2IdFieldValue != null)
        _$RelationshipFieldMap['user2Id']!: user2IdFieldValue,

      if (type != _sentinel)
        _$RelationshipFieldMap['type']!: _$RelationshipPerFieldToJson.type(
          type as RelationshipType,
        ),

      if (typeFieldValue != null)
        _$RelationshipFieldMap['type']!: typeFieldValue,

      if (homeId != _sentinel)
        _$RelationshipFieldMap['homeId']!: _$RelationshipPerFieldToJson.homeId(
          homeId as String?,
        ),

      if (homeIdFieldValue != null)
        _$RelationshipFieldMap['homeId']!: homeIdFieldValue,

      if (createdAt != _sentinel)
        _$RelationshipFieldMap['createdAt']!: _$RelationshipPerFieldToJson
            .createdAt(createdAt as DateTime),

      if (createdAtFieldValue != null)
        _$RelationshipFieldMap['createdAt']!: createdAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? user1Id = _sentinel,
    FieldValue? user1IdFieldValue,
    Object? user2Id = _sentinel,
    FieldValue? user2IdFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) {
    assert(
      user1Id == _sentinel || user1IdFieldValue == null,
      "Cannot specify both user1Id and user1IdFieldValue",
    );
    assert(
      user2Id == _sentinel || user2IdFieldValue == null,
      "Cannot specify both user2Id and user2IdFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (user1Id != _sentinel)
        _$RelationshipFieldMap['user1Id']!: _$RelationshipPerFieldToJson
            .user1Id(user1Id as String),

      if (user1IdFieldValue != null)
        _$RelationshipFieldMap['user1Id']!: user1IdFieldValue,

      if (user2Id != _sentinel)
        _$RelationshipFieldMap['user2Id']!: _$RelationshipPerFieldToJson
            .user2Id(user2Id as String),

      if (user2IdFieldValue != null)
        _$RelationshipFieldMap['user2Id']!: user2IdFieldValue,

      if (type != _sentinel)
        _$RelationshipFieldMap['type']!: _$RelationshipPerFieldToJson.type(
          type as RelationshipType,
        ),

      if (typeFieldValue != null)
        _$RelationshipFieldMap['type']!: typeFieldValue,

      if (homeId != _sentinel)
        _$RelationshipFieldMap['homeId']!: _$RelationshipPerFieldToJson.homeId(
          homeId as String?,
        ),

      if (homeIdFieldValue != null)
        _$RelationshipFieldMap['homeId']!: homeIdFieldValue,

      if (createdAt != _sentinel)
        _$RelationshipFieldMap['createdAt']!: _$RelationshipPerFieldToJson
            .createdAt(createdAt as DateTime),

      if (createdAtFieldValue != null)
        _$RelationshipFieldMap['createdAt']!: createdAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? user1Id = _sentinel,
    FieldValue? user1IdFieldValue,
    Object? user2Id = _sentinel,
    FieldValue? user2IdFieldValue,
    Object? type = _sentinel,
    FieldValue? typeFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
  }) {
    assert(
      user1Id == _sentinel || user1IdFieldValue == null,
      "Cannot specify both user1Id and user1IdFieldValue",
    );
    assert(
      user2Id == _sentinel || user2IdFieldValue == null,
      "Cannot specify both user2Id and user2IdFieldValue",
    );
    assert(
      type == _sentinel || typeFieldValue == null,
      "Cannot specify both type and typeFieldValue",
    );
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    final json = {
      if (user1Id != _sentinel)
        _$RelationshipFieldMap['user1Id']!: _$RelationshipPerFieldToJson
            .user1Id(user1Id as String),

      if (user1IdFieldValue != null)
        _$RelationshipFieldMap['user1Id']!: user1IdFieldValue,

      if (user2Id != _sentinel)
        _$RelationshipFieldMap['user2Id']!: _$RelationshipPerFieldToJson
            .user2Id(user2Id as String),

      if (user2IdFieldValue != null)
        _$RelationshipFieldMap['user2Id']!: user2IdFieldValue,

      if (type != _sentinel)
        _$RelationshipFieldMap['type']!: _$RelationshipPerFieldToJson.type(
          type as RelationshipType,
        ),

      if (typeFieldValue != null)
        _$RelationshipFieldMap['type']!: typeFieldValue,

      if (homeId != _sentinel)
        _$RelationshipFieldMap['homeId']!: _$RelationshipPerFieldToJson.homeId(
          homeId as String?,
        ),

      if (homeIdFieldValue != null)
        _$RelationshipFieldMap['homeId']!: homeIdFieldValue,

      if (createdAt != _sentinel)
        _$RelationshipFieldMap['createdAt']!: _$RelationshipPerFieldToJson
            .createdAt(createdAt as DateTime),

      if (createdAtFieldValue != null)
        _$RelationshipFieldMap['createdAt']!: createdAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is RelationshipDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class RelationshipQuery
    implements QueryReference<Relationship, RelationshipQuerySnapshot> {
  @override
  RelationshipQuery limit(int limit);

  @override
  RelationshipQuery limitToLast(int limit);

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
  RelationshipQuery whereFieldPath(
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

  RelationshipQuery whereDocumentId({
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

  RelationshipQuery whereUser1Id({
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

  RelationshipQuery whereUser2Id({
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

  RelationshipQuery whereType({
    RelationshipType? isEqualTo,
    RelationshipType? isNotEqualTo,
    RelationshipType? isLessThan,
    RelationshipType? isLessThanOrEqualTo,
    RelationshipType? isGreaterThan,
    RelationshipType? isGreaterThanOrEqualTo,
    List<RelationshipType>? whereIn,
    List<RelationshipType>? whereNotIn,
    bool? isNull,
  });

  RelationshipQuery whereHomeId({
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

  RelationshipQuery whereCreatedAt({
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
  RelationshipQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });

  RelationshipQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });

  RelationshipQuery orderByUser1Id({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });

  RelationshipQuery orderByUser2Id({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });

  RelationshipQuery orderByType({
    bool descending = false,
    RelationshipType startAt,
    RelationshipType startAfter,
    RelationshipType endAt,
    RelationshipType endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });

  RelationshipQuery orderByHomeId({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });

  RelationshipQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  });
}

class _$RelationshipQuery
    extends QueryReference<Relationship, RelationshipQuerySnapshot>
    implements RelationshipQuery {
  _$RelationshipQuery(
    this._collection, {
    required Query<Relationship> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<RelationshipQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(
      RelationshipQuerySnapshot._fromQuerySnapshot,
    );
  }

  @override
  Future<RelationshipQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(RelationshipQuerySnapshot._fromQuerySnapshot);
  }

  @override
  RelationshipQuery limit(int limit) {
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RelationshipQuery limitToLast(int limit) {
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  RelationshipQuery whereFieldPath(
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
    return _$RelationshipQuery(
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
  RelationshipQuery whereDocumentId({
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
    return _$RelationshipQuery(
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
  RelationshipQuery whereUser1Id({
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
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RelationshipFieldMap['user1Id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.user1Id(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.user1Id(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$RelationshipPerFieldToJson.user1Id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.user1Id(
                isLessThanOrEqualTo as String,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RelationshipPerFieldToJson.user1Id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.user1Id(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$RelationshipPerFieldToJson.user1Id(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$RelationshipPerFieldToJson.user1Id(e),
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
  RelationshipQuery whereUser2Id({
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
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RelationshipFieldMap['user2Id']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.user2Id(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.user2Id(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$RelationshipPerFieldToJson.user2Id(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.user2Id(
                isLessThanOrEqualTo as String,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RelationshipPerFieldToJson.user2Id(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.user2Id(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$RelationshipPerFieldToJson.user2Id(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$RelationshipPerFieldToJson.user2Id(e),
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
  RelationshipQuery whereType({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<RelationshipType>? whereIn,
    List<RelationshipType>? whereNotIn,
    bool? isNull,
  }) {
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RelationshipFieldMap['type']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.type(isEqualTo as RelationshipType)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.type(
                isNotEqualTo as RelationshipType,
              )
            : null,
        isLessThan: isLessThan != null
            ? _$RelationshipPerFieldToJson.type(isLessThan as RelationshipType)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.type(
                isLessThanOrEqualTo as RelationshipType,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RelationshipPerFieldToJson.type(
                isGreaterThan as RelationshipType,
              )
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.type(
                isGreaterThanOrEqualTo as RelationshipType,
              )
            : null,
        whereIn: whereIn?.map((e) => _$RelationshipPerFieldToJson.type(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$RelationshipPerFieldToJson.type(e),
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
  RelationshipQuery whereHomeId({
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
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RelationshipFieldMap['homeId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.homeId(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.homeId(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$RelationshipPerFieldToJson.homeId(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.homeId(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RelationshipPerFieldToJson.homeId(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.homeId(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$RelationshipPerFieldToJson.homeId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$RelationshipPerFieldToJson.homeId(e),
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
  RelationshipQuery whereCreatedAt({
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
    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$RelationshipFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$RelationshipPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$RelationshipPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.createdAt(
                isLessThanOrEqualTo as DateTime,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$RelationshipPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$RelationshipPerFieldToJson.createdAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$RelationshipPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$RelationshipPerFieldToJson.createdAt(e),
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
  RelationshipQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RelationshipQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RelationshipQuery orderByUser1Id({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$RelationshipFieldMap['user1Id']!,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RelationshipQuery orderByUser2Id({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$RelationshipFieldMap['user2Id']!,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RelationshipQuery orderByType({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$RelationshipFieldMap['type']!,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RelationshipQuery orderByHomeId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$RelationshipFieldMap['homeId']!,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  RelationshipQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    RelationshipDocumentSnapshot? startAtDocument,
    RelationshipDocumentSnapshot? endAtDocument,
    RelationshipDocumentSnapshot? endBeforeDocument,
    RelationshipDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$RelationshipFieldMap['createdAt']!,
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

    return _$RelationshipQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$RelationshipQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class RelationshipDocumentSnapshot
    extends FirestoreDocumentSnapshot<Relationship> {
  RelationshipDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Relationship> snapshot;

  @override
  RelationshipDocumentReference get reference {
    return RelationshipDocumentReference(snapshot.reference);
  }

  @override
  final Relationship? data;
}

class RelationshipQuerySnapshot
    extends
        FirestoreQuerySnapshot<
          Relationship,
          RelationshipQueryDocumentSnapshot
        > {
  RelationshipQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory RelationshipQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Relationship> snapshot,
  ) {
    final docs = snapshot.docs
        .map(RelationshipQueryDocumentSnapshot._)
        .toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, RelationshipDocumentSnapshot._);
    }).toList();

    return RelationshipQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<RelationshipDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    RelationshipDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<RelationshipDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Relationship> snapshot;

  @override
  final List<RelationshipQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<RelationshipDocumentSnapshot>> docChanges;
}

class RelationshipQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Relationship>
    implements RelationshipDocumentSnapshot {
  RelationshipQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Relationship> snapshot;

  @override
  final Relationship data;

  @override
  RelationshipDocumentReference get reference {
    return RelationshipDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Relationship _$RelationshipFromJson(Map<String, dynamic> json) =>
    _Relationship(
      id: json['id'] as String,
      user1Id: json['user1Id'] as String,
      user2Id: json['user2Id'] as String,
      type: $enumDecode(_$RelationshipTypeEnumMap, json['type']),
      homeId: json['homeId'] as String?,
      createdAt: const FirestoreDateTimeConverter().fromJson(
        json['createdAt'] as Timestamp,
      ),
    );

const _$RelationshipFieldMap = <String, String>{
  'id': 'id',
  'user1Id': 'user1Id',
  'user2Id': 'user2Id',
  'type': 'type',
  'homeId': 'homeId',
  'createdAt': 'createdAt',
};

// ignore: unused_element
abstract class _$RelationshipPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? user1Id(String instance) => instance;
  // ignore: unused_element
  static Object? user2Id(String instance) => instance;
  // ignore: unused_element
  static Object? type(RelationshipType instance) =>
      _$RelationshipTypeEnumMap[instance]!;
  // ignore: unused_element
  static Object? homeId(String? instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$RelationshipToJson(
  _Relationship instance,
) => <String, dynamic>{
  'id': instance.id,
  'user1Id': instance.user1Id,
  'user2Id': instance.user2Id,
  'type': _$RelationshipTypeEnumMap[instance.type]!,
  'homeId': instance.homeId,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
};

const _$RelationshipTypeEnumMap = {
  RelationshipType.parent: 'parent',
  RelationshipType.child: 'child',
  RelationshipType.sibling: 'sibling',
  RelationshipType.stepparent: 'stepparent',
  RelationshipType.stepchild: 'stepchild',
  RelationshipType.stepsibling: 'stepsibling',
  RelationshipType.grandparent: 'grandparent',
  RelationshipType.grandchild: 'grandchild',
  RelationshipType.other: 'other',
};
