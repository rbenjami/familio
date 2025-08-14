// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

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
abstract class HomeCollectionReference
    implements
        HomeQuery,
        FirestoreCollectionReference<Home, HomeQuerySnapshot> {
  factory HomeCollectionReference([FirebaseFirestore? firestore]) =
      _$HomeCollectionReference;

  static Home fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Home.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(Home value, SetOptions? options) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Home> get reference;

  @override
  HomeDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<HomeDocumentReference> add(Home value);
}

class _$HomeCollectionReference extends _$HomeQuery
    implements HomeCollectionReference {
  factory _$HomeCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$HomeCollectionReference._(
      firestore
          .collection('homes')
          .withConverter(
            fromFirestore: HomeCollectionReference.fromFirestore,
            toFirestore: HomeCollectionReference.toFirestore,
          ),
    );
  }

  _$HomeCollectionReference._(CollectionReference<Home> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Home> get reference =>
      super.reference as CollectionReference<Home>;

  @override
  HomeDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return HomeDocumentReference(reference.doc(id));
  }

  @override
  Future<HomeDocumentReference> add(Home value) {
    return reference.add(value).then((ref) => HomeDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$HomeCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class HomeDocumentReference
    extends FirestoreDocumentReference<Home, HomeDocumentSnapshot> {
  factory HomeDocumentReference(DocumentReference<Home> reference) =
      _$HomeDocumentReference;

  DocumentReference<Home> get reference;

  /// A reference to the [HomeCollectionReference] containing this document.
  HomeCollectionReference get parent {
    return _$HomeCollectionReference(reference.firestore);
  }

  late final MemberCollectionReference members = _$MemberCollectionReference(
    reference,
  );

  late final TaskCollectionReference tasks = _$TaskCollectionReference(
    reference,
  );

  @override
  Stream<HomeDocumentSnapshot> snapshots();

  @override
  Future<HomeDocumentSnapshot> get([GetOptions? options]);

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
    Home model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue ownerIdFieldValue,
    FieldValue settingsFieldValue,
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
    Home model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue ownerIdFieldValue,
    FieldValue settingsFieldValue,
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
    Home model, {
    SetOptions? options,
    FieldValue nameFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue ownerIdFieldValue,
    FieldValue settingsFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String name,
    FieldValue nameFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String ownerId,
    FieldValue ownerIdFieldValue,
    HomeSettings settings,
    FieldValue settingsFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String name,
    FieldValue nameFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String ownerId,
    FieldValue ownerIdFieldValue,
    HomeSettings settings,
    FieldValue settingsFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String name,
    FieldValue nameFieldValue,
    String? description,
    FieldValue descriptionFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String ownerId,
    FieldValue ownerIdFieldValue,
    HomeSettings settings,
    FieldValue settingsFieldValue,
  });
}

class _$HomeDocumentReference
    extends FirestoreDocumentReference<Home, HomeDocumentSnapshot>
    implements HomeDocumentReference {
  _$HomeDocumentReference(this.reference);

  @override
  final DocumentReference<Home> reference;

  /// A reference to the [HomeCollectionReference] containing this document.
  HomeCollectionReference get parent {
    return _$HomeCollectionReference(reference.firestore);
  }

  late final MemberCollectionReference members = _$MemberCollectionReference(
    reference,
  );

  late final TaskCollectionReference tasks = _$TaskCollectionReference(
    reference,
  );

  @override
  Stream<HomeDocumentSnapshot> snapshots() {
    return reference.snapshots().map(HomeDocumentSnapshot._);
  }

  @override
  Future<HomeDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(HomeDocumentSnapshot._);
  }

  @override
  Future<HomeDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(HomeDocumentSnapshot._);
  }

  Future<void> set(
    Home model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? ownerIdFieldValue,
    FieldValue? settingsFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$HomeFieldMap['name']!: nameFieldValue,

      if (descriptionFieldValue != null)
        _$HomeFieldMap['description']!: descriptionFieldValue,

      if (createdAtFieldValue != null)
        _$HomeFieldMap['createdAt']!: createdAtFieldValue,

      if (ownerIdFieldValue != null)
        _$HomeFieldMap['ownerId']!: ownerIdFieldValue,

      if (settingsFieldValue != null)
        _$HomeFieldMap['settings']!: settingsFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Home model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? ownerIdFieldValue,
    FieldValue? settingsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$HomeFieldMap['name']!: nameFieldValue,

      if (descriptionFieldValue != null)
        _$HomeFieldMap['description']!: descriptionFieldValue,

      if (createdAtFieldValue != null)
        _$HomeFieldMap['createdAt']!: createdAtFieldValue,

      if (ownerIdFieldValue != null)
        _$HomeFieldMap['ownerId']!: ownerIdFieldValue,

      if (settingsFieldValue != null)
        _$HomeFieldMap['settings']!: settingsFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Home model, {
    SetOptions? options,
    FieldValue? nameFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? ownerIdFieldValue,
    FieldValue? settingsFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (nameFieldValue != null) _$HomeFieldMap['name']!: nameFieldValue,

      if (descriptionFieldValue != null)
        _$HomeFieldMap['description']!: descriptionFieldValue,

      if (createdAtFieldValue != null)
        _$HomeFieldMap['createdAt']!: createdAtFieldValue,

      if (ownerIdFieldValue != null)
        _$HomeFieldMap['ownerId']!: ownerIdFieldValue,

      if (settingsFieldValue != null)
        _$HomeFieldMap['settings']!: settingsFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? ownerId = _sentinel,
    FieldValue? ownerIdFieldValue,
    Object? settings = _sentinel,
    FieldValue? settingsFieldValue,
  }) async {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      ownerId == _sentinel || ownerIdFieldValue == null,
      "Cannot specify both ownerId and ownerIdFieldValue",
    );
    assert(
      settings == _sentinel || settingsFieldValue == null,
      "Cannot specify both settings and settingsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$HomeFieldMap['name']!: _$HomePerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$HomeFieldMap['name']!: nameFieldValue,

      if (description != _sentinel)
        _$HomeFieldMap['description']!: _$HomePerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$HomeFieldMap['description']!: descriptionFieldValue,

      if (createdAt != _sentinel)
        _$HomeFieldMap['createdAt']!: _$HomePerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$HomeFieldMap['createdAt']!: createdAtFieldValue,

      if (ownerId != _sentinel)
        _$HomeFieldMap['ownerId']!: _$HomePerFieldToJson.ownerId(
          ownerId as String,
        ),

      if (ownerIdFieldValue != null)
        _$HomeFieldMap['ownerId']!: ownerIdFieldValue,

      if (settings != _sentinel)
        _$HomeFieldMap['settings']!: _$HomePerFieldToJson.settings(
          settings as HomeSettings,
        ),

      if (settingsFieldValue != null)
        _$HomeFieldMap['settings']!: settingsFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? ownerId = _sentinel,
    FieldValue? ownerIdFieldValue,
    Object? settings = _sentinel,
    FieldValue? settingsFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      ownerId == _sentinel || ownerIdFieldValue == null,
      "Cannot specify both ownerId and ownerIdFieldValue",
    );
    assert(
      settings == _sentinel || settingsFieldValue == null,
      "Cannot specify both settings and settingsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$HomeFieldMap['name']!: _$HomePerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$HomeFieldMap['name']!: nameFieldValue,

      if (description != _sentinel)
        _$HomeFieldMap['description']!: _$HomePerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$HomeFieldMap['description']!: descriptionFieldValue,

      if (createdAt != _sentinel)
        _$HomeFieldMap['createdAt']!: _$HomePerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$HomeFieldMap['createdAt']!: createdAtFieldValue,

      if (ownerId != _sentinel)
        _$HomeFieldMap['ownerId']!: _$HomePerFieldToJson.ownerId(
          ownerId as String,
        ),

      if (ownerIdFieldValue != null)
        _$HomeFieldMap['ownerId']!: ownerIdFieldValue,

      if (settings != _sentinel)
        _$HomeFieldMap['settings']!: _$HomePerFieldToJson.settings(
          settings as HomeSettings,
        ),

      if (settingsFieldValue != null)
        _$HomeFieldMap['settings']!: settingsFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? ownerId = _sentinel,
    FieldValue? ownerIdFieldValue,
    Object? settings = _sentinel,
    FieldValue? settingsFieldValue,
  }) {
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      ownerId == _sentinel || ownerIdFieldValue == null,
      "Cannot specify both ownerId and ownerIdFieldValue",
    );
    assert(
      settings == _sentinel || settingsFieldValue == null,
      "Cannot specify both settings and settingsFieldValue",
    );
    final json = {
      if (name != _sentinel)
        _$HomeFieldMap['name']!: _$HomePerFieldToJson.name(name as String),

      if (nameFieldValue != null) _$HomeFieldMap['name']!: nameFieldValue,

      if (description != _sentinel)
        _$HomeFieldMap['description']!: _$HomePerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$HomeFieldMap['description']!: descriptionFieldValue,

      if (createdAt != _sentinel)
        _$HomeFieldMap['createdAt']!: _$HomePerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$HomeFieldMap['createdAt']!: createdAtFieldValue,

      if (ownerId != _sentinel)
        _$HomeFieldMap['ownerId']!: _$HomePerFieldToJson.ownerId(
          ownerId as String,
        ),

      if (ownerIdFieldValue != null)
        _$HomeFieldMap['ownerId']!: ownerIdFieldValue,

      if (settings != _sentinel)
        _$HomeFieldMap['settings']!: _$HomePerFieldToJson.settings(
          settings as HomeSettings,
        ),

      if (settingsFieldValue != null)
        _$HomeFieldMap['settings']!: settingsFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class HomeQuery implements QueryReference<Home, HomeQuerySnapshot> {
  @override
  HomeQuery limit(int limit);

  @override
  HomeQuery limitToLast(int limit);

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
  HomeQuery whereFieldPath(
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

  HomeQuery whereDocumentId({
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

  HomeQuery whereName({
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

  HomeQuery whereDescription({
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

  HomeQuery whereCreatedAt({
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

  HomeQuery whereOwnerId({
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

  HomeQuery whereSettings({
    HomeSettings? isEqualTo,
    HomeSettings? isNotEqualTo,
    HomeSettings? isLessThan,
    HomeSettings? isLessThanOrEqualTo,
    HomeSettings? isGreaterThan,
    HomeSettings? isGreaterThanOrEqualTo,
    List<HomeSettings>? whereIn,
    List<HomeSettings>? whereNotIn,
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
  HomeQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });

  HomeQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });

  HomeQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });

  HomeQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });

  HomeQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });

  HomeQuery orderByOwnerId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });

  HomeQuery orderBySettings({
    bool descending = false,
    HomeSettings startAt,
    HomeSettings startAfter,
    HomeSettings endAt,
    HomeSettings endBefore,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  });
}

class _$HomeQuery extends QueryReference<Home, HomeQuerySnapshot>
    implements HomeQuery {
  _$HomeQuery(
    this._collection, {
    required Query<Home> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<HomeQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(HomeQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<HomeQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(HomeQuerySnapshot._fromQuerySnapshot);
  }

  @override
  HomeQuery limit(int limit) {
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery limitToLast(int limit) {
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery whereFieldPath(
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
    return _$HomeQuery(
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
  HomeQuery whereDocumentId({
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
    return _$HomeQuery(
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
  HomeQuery whereName({
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
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$HomeFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$HomePerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$HomePerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$HomePerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$HomePerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$HomePerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$HomePerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$HomePerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$HomePerFieldToJson.name(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery whereDescription({
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
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$HomeFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$HomePerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$HomePerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$HomePerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$HomePerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$HomePerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$HomePerFieldToJson.description(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$HomePerFieldToJson.description(e)),
        whereNotIn: whereNotIn?.map((e) => _$HomePerFieldToJson.description(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery whereCreatedAt({
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
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$HomeFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$HomePerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$HomePerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$HomePerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$HomePerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$HomePerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$HomePerFieldToJson.createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$HomePerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$HomePerFieldToJson.createdAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery whereOwnerId({
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
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$HomeFieldMap['ownerId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$HomePerFieldToJson.ownerId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$HomePerFieldToJson.ownerId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$HomePerFieldToJson.ownerId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$HomePerFieldToJson.ownerId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$HomePerFieldToJson.ownerId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$HomePerFieldToJson.ownerId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$HomePerFieldToJson.ownerId(e)),
        whereNotIn: whereNotIn?.map((e) => _$HomePerFieldToJson.ownerId(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery whereSettings({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<HomeSettings>? whereIn,
    List<HomeSettings>? whereNotIn,
    bool? isNull,
  }) {
    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$HomeFieldMap['settings']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$HomePerFieldToJson.settings(isEqualTo as HomeSettings)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$HomePerFieldToJson.settings(isNotEqualTo as HomeSettings)
            : null,
        isLessThan: isLessThan != null
            ? _$HomePerFieldToJson.settings(isLessThan as HomeSettings)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$HomePerFieldToJson.settings(isLessThanOrEqualTo as HomeSettings)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$HomePerFieldToJson.settings(isGreaterThan as HomeSettings)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$HomePerFieldToJson.settings(
                isGreaterThanOrEqualTo as HomeSettings,
              )
            : null,
        whereIn: whereIn?.map((e) => _$HomePerFieldToJson.settings(e)),
        whereNotIn: whereNotIn?.map((e) => _$HomePerFieldToJson.settings(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  HomeQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  HomeQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  HomeQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$HomeFieldMap['name']!,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  HomeQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$HomeFieldMap['description']!,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  HomeQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$HomeFieldMap['createdAt']!,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  HomeQuery orderByOwnerId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$HomeFieldMap['ownerId']!,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  HomeQuery orderBySettings({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    HomeDocumentSnapshot? startAtDocument,
    HomeDocumentSnapshot? endAtDocument,
    HomeDocumentSnapshot? endBeforeDocument,
    HomeDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$HomeFieldMap['settings']!,
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

    return _$HomeQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$HomeQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class HomeDocumentSnapshot extends FirestoreDocumentSnapshot<Home> {
  HomeDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Home> snapshot;

  @override
  HomeDocumentReference get reference {
    return HomeDocumentReference(snapshot.reference);
  }

  @override
  final Home? data;
}

class HomeQuerySnapshot
    extends FirestoreQuerySnapshot<Home, HomeQueryDocumentSnapshot> {
  HomeQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory HomeQuerySnapshot._fromQuerySnapshot(QuerySnapshot<Home> snapshot) {
    final docs = snapshot.docs.map(HomeQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, HomeDocumentSnapshot._);
    }).toList();

    return HomeQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<HomeDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    HomeDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<HomeDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Home> snapshot;

  @override
  final List<HomeQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<HomeDocumentSnapshot>> docChanges;
}

class HomeQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Home>
    implements HomeDocumentSnapshot {
  HomeQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Home> snapshot;

  @override
  final Home data;

  @override
  HomeDocumentReference get reference {
    return HomeDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class MemberCollectionReference
    implements
        MemberQuery,
        FirestoreCollectionReference<Member, MemberQuerySnapshot> {
  factory MemberCollectionReference(DocumentReference<Home> parent) =
      _$MemberCollectionReference;

  static Member fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Member.fromJson({'userId': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(Member value, SetOptions? options) {
    return {...value.toJson()}..remove('userId');
  }

  @override
  CollectionReference<Member> get reference;

  /// A reference to the containing [HomeDocumentReference] if this is a subcollection.
  HomeDocumentReference get parent;

  @override
  MemberDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<MemberDocumentReference> add(Member value);
}

class _$MemberCollectionReference extends _$MemberQuery
    implements MemberCollectionReference {
  factory _$MemberCollectionReference(DocumentReference<Home> parent) {
    return _$MemberCollectionReference._(
      HomeDocumentReference(parent),
      parent
          .collection('members')
          .withConverter(
            fromFirestore: MemberCollectionReference.fromFirestore,
            toFirestore: MemberCollectionReference.toFirestore,
          ),
    );
  }

  _$MemberCollectionReference._(
    this.parent,
    CollectionReference<Member> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final HomeDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Member> get reference =>
      super.reference as CollectionReference<Member>;

  @override
  MemberDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return MemberDocumentReference(reference.doc(id));
  }

  @override
  Future<MemberDocumentReference> add(Member value) {
    return reference.add(value).then((ref) => MemberDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$MemberCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class MemberDocumentReference
    extends FirestoreDocumentReference<Member, MemberDocumentSnapshot> {
  factory MemberDocumentReference(DocumentReference<Member> reference) =
      _$MemberDocumentReference;

  DocumentReference<Member> get reference;

  /// A reference to the [MemberCollectionReference] containing this document.
  MemberCollectionReference get parent {
    return _$MemberCollectionReference(
      reference.parent.parent!.withConverter<Home>(
        fromFirestore: HomeCollectionReference.fromFirestore,
        toFirestore: HomeCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<MemberDocumentSnapshot> snapshots();

  @override
  Future<MemberDocumentSnapshot> get([GetOptions? options]);

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
    Member model, {
    SetOptions? options,
    FieldValue permissionsFieldValue,
    FieldValue joinedAtFieldValue,
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
    Member model, {
    SetOptions? options,
    FieldValue permissionsFieldValue,
    FieldValue joinedAtFieldValue,
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
    Member model, {
    SetOptions? options,
    FieldValue permissionsFieldValue,
    FieldValue joinedAtFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    MemberPermissions permissions,
    FieldValue permissionsFieldValue,
    DateTime joinedAt,
    FieldValue joinedAtFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    MemberPermissions permissions,
    FieldValue permissionsFieldValue,
    DateTime joinedAt,
    FieldValue joinedAtFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    MemberPermissions permissions,
    FieldValue permissionsFieldValue,
    DateTime joinedAt,
    FieldValue joinedAtFieldValue,
  });
}

class _$MemberDocumentReference
    extends FirestoreDocumentReference<Member, MemberDocumentSnapshot>
    implements MemberDocumentReference {
  _$MemberDocumentReference(this.reference);

  @override
  final DocumentReference<Member> reference;

  /// A reference to the [MemberCollectionReference] containing this document.
  MemberCollectionReference get parent {
    return _$MemberCollectionReference(
      reference.parent.parent!.withConverter<Home>(
        fromFirestore: HomeCollectionReference.fromFirestore,
        toFirestore: HomeCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<MemberDocumentSnapshot> snapshots() {
    return reference.snapshots().map(MemberDocumentSnapshot._);
  }

  @override
  Future<MemberDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MemberDocumentSnapshot._);
  }

  @override
  Future<MemberDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(MemberDocumentSnapshot._);
  }

  Future<void> set(
    Member model, {
    SetOptions? options,
    FieldValue? permissionsFieldValue,
    FieldValue? joinedAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (permissionsFieldValue != null)
        _$MemberFieldMap['permissions']!: permissionsFieldValue,

      if (joinedAtFieldValue != null)
        _$MemberFieldMap['joinedAt']!: joinedAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Member model, {
    SetOptions? options,
    FieldValue? permissionsFieldValue,
    FieldValue? joinedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (permissionsFieldValue != null)
        _$MemberFieldMap['permissions']!: permissionsFieldValue,

      if (joinedAtFieldValue != null)
        _$MemberFieldMap['joinedAt']!: joinedAtFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Member model, {
    SetOptions? options,
    FieldValue? permissionsFieldValue,
    FieldValue? joinedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (permissionsFieldValue != null)
        _$MemberFieldMap['permissions']!: permissionsFieldValue,

      if (joinedAtFieldValue != null)
        _$MemberFieldMap['joinedAt']!: joinedAtFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? permissions = _sentinel,
    FieldValue? permissionsFieldValue,
    Object? joinedAt = _sentinel,
    FieldValue? joinedAtFieldValue,
  }) async {
    assert(
      permissions == _sentinel || permissionsFieldValue == null,
      "Cannot specify both permissions and permissionsFieldValue",
    );
    assert(
      joinedAt == _sentinel || joinedAtFieldValue == null,
      "Cannot specify both joinedAt and joinedAtFieldValue",
    );
    final json = {
      if (permissions != _sentinel)
        _$MemberFieldMap['permissions']!: _$MemberPerFieldToJson.permissions(
          permissions as MemberPermissions,
        ),

      if (permissionsFieldValue != null)
        _$MemberFieldMap['permissions']!: permissionsFieldValue,

      if (joinedAt != _sentinel)
        _$MemberFieldMap['joinedAt']!: _$MemberPerFieldToJson.joinedAt(
          joinedAt as DateTime,
        ),

      if (joinedAtFieldValue != null)
        _$MemberFieldMap['joinedAt']!: joinedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? permissions = _sentinel,
    FieldValue? permissionsFieldValue,
    Object? joinedAt = _sentinel,
    FieldValue? joinedAtFieldValue,
  }) {
    assert(
      permissions == _sentinel || permissionsFieldValue == null,
      "Cannot specify both permissions and permissionsFieldValue",
    );
    assert(
      joinedAt == _sentinel || joinedAtFieldValue == null,
      "Cannot specify both joinedAt and joinedAtFieldValue",
    );
    final json = {
      if (permissions != _sentinel)
        _$MemberFieldMap['permissions']!: _$MemberPerFieldToJson.permissions(
          permissions as MemberPermissions,
        ),

      if (permissionsFieldValue != null)
        _$MemberFieldMap['permissions']!: permissionsFieldValue,

      if (joinedAt != _sentinel)
        _$MemberFieldMap['joinedAt']!: _$MemberPerFieldToJson.joinedAt(
          joinedAt as DateTime,
        ),

      if (joinedAtFieldValue != null)
        _$MemberFieldMap['joinedAt']!: joinedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? permissions = _sentinel,
    FieldValue? permissionsFieldValue,
    Object? joinedAt = _sentinel,
    FieldValue? joinedAtFieldValue,
  }) {
    assert(
      permissions == _sentinel || permissionsFieldValue == null,
      "Cannot specify both permissions and permissionsFieldValue",
    );
    assert(
      joinedAt == _sentinel || joinedAtFieldValue == null,
      "Cannot specify both joinedAt and joinedAtFieldValue",
    );
    final json = {
      if (permissions != _sentinel)
        _$MemberFieldMap['permissions']!: _$MemberPerFieldToJson.permissions(
          permissions as MemberPermissions,
        ),

      if (permissionsFieldValue != null)
        _$MemberFieldMap['permissions']!: permissionsFieldValue,

      if (joinedAt != _sentinel)
        _$MemberFieldMap['joinedAt']!: _$MemberPerFieldToJson.joinedAt(
          joinedAt as DateTime,
        ),

      if (joinedAtFieldValue != null)
        _$MemberFieldMap['joinedAt']!: joinedAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is MemberDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class MemberQuery
    implements QueryReference<Member, MemberQuerySnapshot> {
  @override
  MemberQuery limit(int limit);

  @override
  MemberQuery limitToLast(int limit);

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
  MemberQuery whereFieldPath(
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

  MemberQuery whereDocumentId({
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

  MemberQuery wherePermissions({
    MemberPermissions? isEqualTo,
    MemberPermissions? isNotEqualTo,
    MemberPermissions? isLessThan,
    MemberPermissions? isLessThanOrEqualTo,
    MemberPermissions? isGreaterThan,
    MemberPermissions? isGreaterThanOrEqualTo,
    List<MemberPermissions>? whereIn,
    List<MemberPermissions>? whereNotIn,
    bool? isNull,
  });

  MemberQuery whereJoinedAt({
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
  MemberQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
  });

  MemberQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
  });

  MemberQuery orderByPermissions({
    bool descending = false,
    MemberPermissions startAt,
    MemberPermissions startAfter,
    MemberPermissions endAt,
    MemberPermissions endBefore,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
  });

  MemberQuery orderByJoinedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
  });
}

class _$MemberQuery extends QueryReference<Member, MemberQuerySnapshot>
    implements MemberQuery {
  _$MemberQuery(
    this._collection, {
    required Query<Member> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<MemberQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(MemberQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<MemberQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(MemberQuerySnapshot._fromQuerySnapshot);
  }

  @override
  MemberQuery limit(int limit) {
    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MemberQuery limitToLast(int limit) {
    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MemberQuery whereFieldPath(
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
    return _$MemberQuery(
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
  MemberQuery whereDocumentId({
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
    return _$MemberQuery(
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
  MemberQuery wherePermissions({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<MemberPermissions>? whereIn,
    List<MemberPermissions>? whereNotIn,
    bool? isNull,
  }) {
    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MemberFieldMap['permissions']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MemberPerFieldToJson.permissions(isEqualTo as MemberPermissions)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MemberPerFieldToJson.permissions(
                isNotEqualTo as MemberPermissions,
              )
            : null,
        isLessThan: isLessThan != null
            ? _$MemberPerFieldToJson.permissions(
                isLessThan as MemberPermissions,
              )
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MemberPerFieldToJson.permissions(
                isLessThanOrEqualTo as MemberPermissions,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MemberPerFieldToJson.permissions(
                isGreaterThan as MemberPermissions,
              )
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MemberPerFieldToJson.permissions(
                isGreaterThanOrEqualTo as MemberPermissions,
              )
            : null,
        whereIn: whereIn?.map((e) => _$MemberPerFieldToJson.permissions(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$MemberPerFieldToJson.permissions(e),
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
  MemberQuery whereJoinedAt({
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
    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$MemberFieldMap['joinedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$MemberPerFieldToJson.joinedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$MemberPerFieldToJson.joinedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$MemberPerFieldToJson.joinedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$MemberPerFieldToJson.joinedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$MemberPerFieldToJson.joinedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$MemberPerFieldToJson.joinedAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$MemberPerFieldToJson.joinedAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$MemberPerFieldToJson.joinedAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  MemberQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
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

    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MemberQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
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

    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MemberQuery orderByPermissions({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$MemberFieldMap['permissions']!,
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

    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  MemberQuery orderByJoinedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    MemberDocumentSnapshot? startAtDocument,
    MemberDocumentSnapshot? endAtDocument,
    MemberDocumentSnapshot? endBeforeDocument,
    MemberDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$MemberFieldMap['joinedAt']!,
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

    return _$MemberQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$MemberQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class MemberDocumentSnapshot extends FirestoreDocumentSnapshot<Member> {
  MemberDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Member> snapshot;

  @override
  MemberDocumentReference get reference {
    return MemberDocumentReference(snapshot.reference);
  }

  @override
  final Member? data;
}

class MemberQuerySnapshot
    extends FirestoreQuerySnapshot<Member, MemberQueryDocumentSnapshot> {
  MemberQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory MemberQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Member> snapshot,
  ) {
    final docs = snapshot.docs.map(MemberQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, MemberDocumentSnapshot._);
    }).toList();

    return MemberQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<MemberDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    MemberDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<MemberDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Member> snapshot;

  @override
  final List<MemberQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<MemberDocumentSnapshot>> docChanges;
}

class MemberQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Member>
    implements MemberDocumentSnapshot {
  MemberQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Member> snapshot;

  @override
  final Member data;

  @override
  MemberDocumentReference get reference {
    return MemberDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class TaskCollectionReference
    implements
        TaskQuery,
        FirestoreCollectionReference<Task, TaskQuerySnapshot> {
  factory TaskCollectionReference(DocumentReference<Home> parent) =
      _$TaskCollectionReference;

  static Task fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Task.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(Task value, SetOptions? options) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Task> get reference;

  /// A reference to the containing [HomeDocumentReference] if this is a subcollection.
  HomeDocumentReference get parent;

  @override
  TaskDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<TaskDocumentReference> add(Task value);
}

class _$TaskCollectionReference extends _$TaskQuery
    implements TaskCollectionReference {
  factory _$TaskCollectionReference(DocumentReference<Home> parent) {
    return _$TaskCollectionReference._(
      HomeDocumentReference(parent),
      parent
          .collection('tasks')
          .withConverter(
            fromFirestore: TaskCollectionReference.fromFirestore,
            toFirestore: TaskCollectionReference.toFirestore,
          ),
    );
  }

  _$TaskCollectionReference._(this.parent, CollectionReference<Task> reference)
    : super(reference, $referenceWithoutCursor: reference);

  @override
  final HomeDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Task> get reference =>
      super.reference as CollectionReference<Task>;

  @override
  TaskDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return TaskDocumentReference(reference.doc(id));
  }

  @override
  Future<TaskDocumentReference> add(Task value) {
    return reference.add(value).then((ref) => TaskDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$TaskCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class TaskDocumentReference
    extends FirestoreDocumentReference<Task, TaskDocumentSnapshot> {
  factory TaskDocumentReference(DocumentReference<Task> reference) =
      _$TaskDocumentReference;

  DocumentReference<Task> get reference;

  /// A reference to the [TaskCollectionReference] containing this document.
  TaskCollectionReference get parent {
    return _$TaskCollectionReference(
      reference.parent.parent!.withConverter<Home>(
        fromFirestore: HomeCollectionReference.fromFirestore,
        toFirestore: HomeCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<TaskDocumentSnapshot> snapshots();

  @override
  Future<TaskDocumentSnapshot> get([GetOptions? options]);

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
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue homeIdFieldValue,
    FieldValue assignedToIdsFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue statusFieldValue,
    FieldValue dueDateFieldValue,
    FieldValue priorityFieldValue,
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
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue homeIdFieldValue,
    FieldValue assignedToIdsFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue statusFieldValue,
    FieldValue dueDateFieldValue,
    FieldValue priorityFieldValue,
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
    Task model, {
    SetOptions? options,
    FieldValue titleFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue homeIdFieldValue,
    FieldValue assignedToIdsFieldValue,
    FieldValue createdByIdFieldValue,
    FieldValue statusFieldValue,
    FieldValue dueDateFieldValue,
    FieldValue priorityFieldValue,
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
    String homeId,
    FieldValue homeIdFieldValue,
    List<String> assignedToIds,
    FieldValue assignedToIdsFieldValue,
    String createdById,
    FieldValue createdByIdFieldValue,
    TaskStatus status,
    FieldValue statusFieldValue,
    DateTime? dueDate,
    FieldValue dueDateFieldValue,
    Priority priority,
    FieldValue priorityFieldValue,
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
    String homeId,
    FieldValue homeIdFieldValue,
    List<String> assignedToIds,
    FieldValue assignedToIdsFieldValue,
    String createdById,
    FieldValue createdByIdFieldValue,
    TaskStatus status,
    FieldValue statusFieldValue,
    DateTime? dueDate,
    FieldValue dueDateFieldValue,
    Priority priority,
    FieldValue priorityFieldValue,
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
    String homeId,
    FieldValue homeIdFieldValue,
    List<String> assignedToIds,
    FieldValue assignedToIdsFieldValue,
    String createdById,
    FieldValue createdByIdFieldValue,
    TaskStatus status,
    FieldValue statusFieldValue,
    DateTime? dueDate,
    FieldValue dueDateFieldValue,
    Priority priority,
    FieldValue priorityFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
  });
}

class _$TaskDocumentReference
    extends FirestoreDocumentReference<Task, TaskDocumentSnapshot>
    implements TaskDocumentReference {
  _$TaskDocumentReference(this.reference);

  @override
  final DocumentReference<Task> reference;

  /// A reference to the [TaskCollectionReference] containing this document.
  TaskCollectionReference get parent {
    return _$TaskCollectionReference(
      reference.parent.parent!.withConverter<Home>(
        fromFirestore: HomeCollectionReference.fromFirestore,
        toFirestore: HomeCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<TaskDocumentSnapshot> snapshots() {
    return reference.snapshots().map(TaskDocumentSnapshot._);
  }

  @override
  Future<TaskDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TaskDocumentSnapshot._);
  }

  @override
  Future<TaskDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(TaskDocumentSnapshot._);
  }

  Future<void> set(
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? homeIdFieldValue,
    FieldValue? assignedToIdsFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? statusFieldValue,
    FieldValue? dueDateFieldValue,
    FieldValue? priorityFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,

      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,

      if (homeIdFieldValue != null) _$TaskFieldMap['homeId']!: homeIdFieldValue,

      if (assignedToIdsFieldValue != null)
        _$TaskFieldMap['assignedToIds']!: assignedToIdsFieldValue,

      if (createdByIdFieldValue != null)
        _$TaskFieldMap['createdById']!: createdByIdFieldValue,

      if (statusFieldValue != null) _$TaskFieldMap['status']!: statusFieldValue,

      if (dueDateFieldValue != null)
        _$TaskFieldMap['dueDate']!: dueDateFieldValue,

      if (priorityFieldValue != null)
        _$TaskFieldMap['priority']!: priorityFieldValue,

      if (createdAtFieldValue != null)
        _$TaskFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAtFieldValue != null)
        _$TaskFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? homeIdFieldValue,
    FieldValue? assignedToIdsFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? statusFieldValue,
    FieldValue? dueDateFieldValue,
    FieldValue? priorityFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,

      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,

      if (homeIdFieldValue != null) _$TaskFieldMap['homeId']!: homeIdFieldValue,

      if (assignedToIdsFieldValue != null)
        _$TaskFieldMap['assignedToIds']!: assignedToIdsFieldValue,

      if (createdByIdFieldValue != null)
        _$TaskFieldMap['createdById']!: createdByIdFieldValue,

      if (statusFieldValue != null) _$TaskFieldMap['status']!: statusFieldValue,

      if (dueDateFieldValue != null)
        _$TaskFieldMap['dueDate']!: dueDateFieldValue,

      if (priorityFieldValue != null)
        _$TaskFieldMap['priority']!: priorityFieldValue,

      if (createdAtFieldValue != null)
        _$TaskFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAtFieldValue != null)
        _$TaskFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Task model, {
    SetOptions? options,
    FieldValue? titleFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? homeIdFieldValue,
    FieldValue? assignedToIdsFieldValue,
    FieldValue? createdByIdFieldValue,
    FieldValue? statusFieldValue,
    FieldValue? dueDateFieldValue,
    FieldValue? priorityFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,

      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,

      if (homeIdFieldValue != null) _$TaskFieldMap['homeId']!: homeIdFieldValue,

      if (assignedToIdsFieldValue != null)
        _$TaskFieldMap['assignedToIds']!: assignedToIdsFieldValue,

      if (createdByIdFieldValue != null)
        _$TaskFieldMap['createdById']!: createdByIdFieldValue,

      if (statusFieldValue != null) _$TaskFieldMap['status']!: statusFieldValue,

      if (dueDateFieldValue != null)
        _$TaskFieldMap['dueDate']!: dueDateFieldValue,

      if (priorityFieldValue != null)
        _$TaskFieldMap['priority']!: priorityFieldValue,

      if (createdAtFieldValue != null)
        _$TaskFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAtFieldValue != null)
        _$TaskFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? assignedToIds = _sentinel,
    FieldValue? assignedToIdsFieldValue,
    Object? createdById = _sentinel,
    FieldValue? createdByIdFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? dueDate = _sentinel,
    FieldValue? dueDateFieldValue,
    Object? priority = _sentinel,
    FieldValue? priorityFieldValue,
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
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      assignedToIds == _sentinel || assignedToIdsFieldValue == null,
      "Cannot specify both assignedToIds and assignedToIdsFieldValue",
    );
    assert(
      createdById == _sentinel || createdByIdFieldValue == null,
      "Cannot specify both createdById and createdByIdFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      dueDate == _sentinel || dueDateFieldValue == null,
      "Cannot specify both dueDate and dueDateFieldValue",
    );
    assert(
      priority == _sentinel || priorityFieldValue == null,
      "Cannot specify both priority and priorityFieldValue",
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
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,

      if (description != _sentinel)
        _$TaskFieldMap['description']!: _$TaskPerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,

      if (homeId != _sentinel)
        _$TaskFieldMap['homeId']!: _$TaskPerFieldToJson.homeId(
          homeId as String,
        ),

      if (homeIdFieldValue != null) _$TaskFieldMap['homeId']!: homeIdFieldValue,

      if (assignedToIds != _sentinel)
        _$TaskFieldMap['assignedToIds']!: _$TaskPerFieldToJson.assignedToIds(
          assignedToIds as List<String>,
        ),

      if (assignedToIdsFieldValue != null)
        _$TaskFieldMap['assignedToIds']!: assignedToIdsFieldValue,

      if (createdById != _sentinel)
        _$TaskFieldMap['createdById']!: _$TaskPerFieldToJson.createdById(
          createdById as String,
        ),

      if (createdByIdFieldValue != null)
        _$TaskFieldMap['createdById']!: createdByIdFieldValue,

      if (status != _sentinel)
        _$TaskFieldMap['status']!: _$TaskPerFieldToJson.status(
          status as TaskStatus,
        ),

      if (statusFieldValue != null) _$TaskFieldMap['status']!: statusFieldValue,

      if (dueDate != _sentinel)
        _$TaskFieldMap['dueDate']!: _$TaskPerFieldToJson.dueDate(
          dueDate as DateTime?,
        ),

      if (dueDateFieldValue != null)
        _$TaskFieldMap['dueDate']!: dueDateFieldValue,

      if (priority != _sentinel)
        _$TaskFieldMap['priority']!: _$TaskPerFieldToJson.priority(
          priority as Priority,
        ),

      if (priorityFieldValue != null)
        _$TaskFieldMap['priority']!: priorityFieldValue,

      if (createdAt != _sentinel)
        _$TaskFieldMap['createdAt']!: _$TaskPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$TaskFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAt != _sentinel)
        _$TaskFieldMap['updatedAt']!: _$TaskPerFieldToJson.updatedAt(
          updatedAt as DateTime,
        ),

      if (updatedAtFieldValue != null)
        _$TaskFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? assignedToIds = _sentinel,
    FieldValue? assignedToIdsFieldValue,
    Object? createdById = _sentinel,
    FieldValue? createdByIdFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? dueDate = _sentinel,
    FieldValue? dueDateFieldValue,
    Object? priority = _sentinel,
    FieldValue? priorityFieldValue,
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
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      assignedToIds == _sentinel || assignedToIdsFieldValue == null,
      "Cannot specify both assignedToIds and assignedToIdsFieldValue",
    );
    assert(
      createdById == _sentinel || createdByIdFieldValue == null,
      "Cannot specify both createdById and createdByIdFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      dueDate == _sentinel || dueDateFieldValue == null,
      "Cannot specify both dueDate and dueDateFieldValue",
    );
    assert(
      priority == _sentinel || priorityFieldValue == null,
      "Cannot specify both priority and priorityFieldValue",
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
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,

      if (description != _sentinel)
        _$TaskFieldMap['description']!: _$TaskPerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,

      if (homeId != _sentinel)
        _$TaskFieldMap['homeId']!: _$TaskPerFieldToJson.homeId(
          homeId as String,
        ),

      if (homeIdFieldValue != null) _$TaskFieldMap['homeId']!: homeIdFieldValue,

      if (assignedToIds != _sentinel)
        _$TaskFieldMap['assignedToIds']!: _$TaskPerFieldToJson.assignedToIds(
          assignedToIds as List<String>,
        ),

      if (assignedToIdsFieldValue != null)
        _$TaskFieldMap['assignedToIds']!: assignedToIdsFieldValue,

      if (createdById != _sentinel)
        _$TaskFieldMap['createdById']!: _$TaskPerFieldToJson.createdById(
          createdById as String,
        ),

      if (createdByIdFieldValue != null)
        _$TaskFieldMap['createdById']!: createdByIdFieldValue,

      if (status != _sentinel)
        _$TaskFieldMap['status']!: _$TaskPerFieldToJson.status(
          status as TaskStatus,
        ),

      if (statusFieldValue != null) _$TaskFieldMap['status']!: statusFieldValue,

      if (dueDate != _sentinel)
        _$TaskFieldMap['dueDate']!: _$TaskPerFieldToJson.dueDate(
          dueDate as DateTime?,
        ),

      if (dueDateFieldValue != null)
        _$TaskFieldMap['dueDate']!: dueDateFieldValue,

      if (priority != _sentinel)
        _$TaskFieldMap['priority']!: _$TaskPerFieldToJson.priority(
          priority as Priority,
        ),

      if (priorityFieldValue != null)
        _$TaskFieldMap['priority']!: priorityFieldValue,

      if (createdAt != _sentinel)
        _$TaskFieldMap['createdAt']!: _$TaskPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$TaskFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAt != _sentinel)
        _$TaskFieldMap['updatedAt']!: _$TaskPerFieldToJson.updatedAt(
          updatedAt as DateTime,
        ),

      if (updatedAtFieldValue != null)
        _$TaskFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? title = _sentinel,
    FieldValue? titleFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? assignedToIds = _sentinel,
    FieldValue? assignedToIdsFieldValue,
    Object? createdById = _sentinel,
    FieldValue? createdByIdFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? dueDate = _sentinel,
    FieldValue? dueDateFieldValue,
    Object? priority = _sentinel,
    FieldValue? priorityFieldValue,
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
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      assignedToIds == _sentinel || assignedToIdsFieldValue == null,
      "Cannot specify both assignedToIds and assignedToIdsFieldValue",
    );
    assert(
      createdById == _sentinel || createdByIdFieldValue == null,
      "Cannot specify both createdById and createdByIdFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      dueDate == _sentinel || dueDateFieldValue == null,
      "Cannot specify both dueDate and dueDateFieldValue",
    );
    assert(
      priority == _sentinel || priorityFieldValue == null,
      "Cannot specify both priority and priorityFieldValue",
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
        _$TaskFieldMap['title']!: _$TaskPerFieldToJson.title(title as String),

      if (titleFieldValue != null) _$TaskFieldMap['title']!: titleFieldValue,

      if (description != _sentinel)
        _$TaskFieldMap['description']!: _$TaskPerFieldToJson.description(
          description as String?,
        ),

      if (descriptionFieldValue != null)
        _$TaskFieldMap['description']!: descriptionFieldValue,

      if (homeId != _sentinel)
        _$TaskFieldMap['homeId']!: _$TaskPerFieldToJson.homeId(
          homeId as String,
        ),

      if (homeIdFieldValue != null) _$TaskFieldMap['homeId']!: homeIdFieldValue,

      if (assignedToIds != _sentinel)
        _$TaskFieldMap['assignedToIds']!: _$TaskPerFieldToJson.assignedToIds(
          assignedToIds as List<String>,
        ),

      if (assignedToIdsFieldValue != null)
        _$TaskFieldMap['assignedToIds']!: assignedToIdsFieldValue,

      if (createdById != _sentinel)
        _$TaskFieldMap['createdById']!: _$TaskPerFieldToJson.createdById(
          createdById as String,
        ),

      if (createdByIdFieldValue != null)
        _$TaskFieldMap['createdById']!: createdByIdFieldValue,

      if (status != _sentinel)
        _$TaskFieldMap['status']!: _$TaskPerFieldToJson.status(
          status as TaskStatus,
        ),

      if (statusFieldValue != null) _$TaskFieldMap['status']!: statusFieldValue,

      if (dueDate != _sentinel)
        _$TaskFieldMap['dueDate']!: _$TaskPerFieldToJson.dueDate(
          dueDate as DateTime?,
        ),

      if (dueDateFieldValue != null)
        _$TaskFieldMap['dueDate']!: dueDateFieldValue,

      if (priority != _sentinel)
        _$TaskFieldMap['priority']!: _$TaskPerFieldToJson.priority(
          priority as Priority,
        ),

      if (priorityFieldValue != null)
        _$TaskFieldMap['priority']!: priorityFieldValue,

      if (createdAt != _sentinel)
        _$TaskFieldMap['createdAt']!: _$TaskPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$TaskFieldMap['createdAt']!: createdAtFieldValue,

      if (updatedAt != _sentinel)
        _$TaskFieldMap['updatedAt']!: _$TaskPerFieldToJson.updatedAt(
          updatedAt as DateTime,
        ),

      if (updatedAtFieldValue != null)
        _$TaskFieldMap['updatedAt']!: updatedAtFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is TaskDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class TaskQuery implements QueryReference<Task, TaskQuerySnapshot> {
  @override
  TaskQuery limit(int limit);

  @override
  TaskQuery limitToLast(int limit);

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
  TaskQuery whereFieldPath(
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

  TaskQuery whereDocumentId({
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

  TaskQuery whereTitle({
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

  TaskQuery whereDescription({
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

  TaskQuery whereHomeId({
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

  TaskQuery whereAssignedToIds({
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

  TaskQuery whereCreatedById({
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

  TaskQuery whereStatus({
    TaskStatus? isEqualTo,
    TaskStatus? isNotEqualTo,
    TaskStatus? isLessThan,
    TaskStatus? isLessThanOrEqualTo,
    TaskStatus? isGreaterThan,
    TaskStatus? isGreaterThanOrEqualTo,
    List<TaskStatus>? whereIn,
    List<TaskStatus>? whereNotIn,
    bool? isNull,
  });

  TaskQuery whereDueDate({
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

  TaskQuery wherePriority({
    Priority? isEqualTo,
    Priority? isNotEqualTo,
    Priority? isLessThan,
    Priority? isLessThanOrEqualTo,
    Priority? isGreaterThan,
    Priority? isGreaterThanOrEqualTo,
    List<Priority>? whereIn,
    List<Priority>? whereNotIn,
    bool? isNull,
  });

  TaskQuery whereCreatedAt({
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

  TaskQuery whereUpdatedAt({
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
  TaskQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByTitle({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByDescription({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByHomeId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByAssignedToIds({
    bool descending = false,
    List<String> startAt,
    List<String> startAfter,
    List<String> endAt,
    List<String> endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByCreatedById({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByStatus({
    bool descending = false,
    TaskStatus startAt,
    TaskStatus startAfter,
    TaskStatus endAt,
    TaskStatus endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByDueDate({
    bool descending = false,
    DateTime? startAt,
    DateTime? startAfter,
    DateTime? endAt,
    DateTime? endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByPriority({
    bool descending = false,
    Priority startAt,
    Priority startAfter,
    Priority endAt,
    Priority endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });

  TaskQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  });
}

class _$TaskQuery extends QueryReference<Task, TaskQuerySnapshot>
    implements TaskQuery {
  _$TaskQuery(
    this._collection, {
    required Query<Task> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<TaskQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(TaskQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<TaskQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(TaskQuerySnapshot._fromQuerySnapshot);
  }

  @override
  TaskQuery limit(int limit) {
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery limitToLast(int limit) {
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereFieldPath(
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
    return _$TaskQuery(
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
  TaskQuery whereDocumentId({
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
    return _$TaskQuery(
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
  TaskQuery whereTitle({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['title']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.title(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.title(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.title(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.title(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.title(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.title(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.title(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.title(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereDescription({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.description(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.description(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.description(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.description(isLessThanOrEqualTo as String?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.description(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.description(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.description(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.description(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereHomeId({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['homeId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.homeId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.homeId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.homeId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.homeId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.homeId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.homeId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.homeId(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.homeId(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereAssignedToIds({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['assignedToIds']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.assignedToIds(isEqualTo as List<String>)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.assignedToIds(isNotEqualTo as List<String>)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.assignedToIds(isLessThan as List<String>)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.assignedToIds(
                isLessThanOrEqualTo as List<String>,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.assignedToIds(isGreaterThan as List<String>)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.assignedToIds(
                isGreaterThanOrEqualTo as List<String>,
              )
            : null,
        arrayContains: arrayContains != null
            ? (_$TaskPerFieldToJson.assignedToIds([arrayContains as String])
                      as List?)!
                  .single
            : null,
        arrayContainsAny: arrayContainsAny != null
            ? _$TaskPerFieldToJson.assignedToIds(arrayContainsAny)
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
  TaskQuery whereCreatedById({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['createdById']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.createdById(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.createdById(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.createdById(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.createdById(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.createdById(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.createdById(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.createdById(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.createdById(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereStatus({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<TaskStatus>? whereIn,
    List<TaskStatus>? whereNotIn,
    bool? isNull,
  }) {
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['status']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.status(isEqualTo as TaskStatus)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.status(isNotEqualTo as TaskStatus)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.status(isLessThan as TaskStatus)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.status(isLessThanOrEqualTo as TaskStatus)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.status(isGreaterThan as TaskStatus)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.status(isGreaterThanOrEqualTo as TaskStatus)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.status(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.status(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereDueDate({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['dueDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.dueDate(isEqualTo as DateTime?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.dueDate(isNotEqualTo as DateTime?)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.dueDate(isLessThan as DateTime?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.dueDate(isLessThanOrEqualTo as DateTime?)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.dueDate(isGreaterThan as DateTime?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.dueDate(isGreaterThanOrEqualTo as DateTime?)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.dueDate(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.dueDate(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery wherePriority({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<Priority>? whereIn,
    List<Priority>? whereNotIn,
    bool? isNull,
  }) {
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['priority']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.priority(isEqualTo as Priority)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.priority(isNotEqualTo as Priority)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.priority(isLessThan as Priority)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.priority(isLessThanOrEqualTo as Priority)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.priority(isGreaterThan as Priority)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.priority(isGreaterThanOrEqualTo as Priority)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.priority(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.priority(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereCreatedAt({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.createdAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery whereUpdatedAt({
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
    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$TaskFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$TaskPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$TaskPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$TaskPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$TaskPerFieldToJson.updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$TaskPerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$TaskPerFieldToJson.updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$TaskPerFieldToJson.updatedAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$TaskPerFieldToJson.updatedAt(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  TaskQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByTitle({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['title']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['description']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByHomeId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['homeId']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByAssignedToIds({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['assignedToIds']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByCreatedById({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['createdById']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByStatus({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['status']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByDueDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['dueDate']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByPriority({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['priority']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['createdAt']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  TaskQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    TaskDocumentSnapshot? startAtDocument,
    TaskDocumentSnapshot? endAtDocument,
    TaskDocumentSnapshot? endBeforeDocument,
    TaskDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$TaskFieldMap['updatedAt']!,
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

    return _$TaskQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$TaskQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class TaskDocumentSnapshot extends FirestoreDocumentSnapshot<Task> {
  TaskDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Task> snapshot;

  @override
  TaskDocumentReference get reference {
    return TaskDocumentReference(snapshot.reference);
  }

  @override
  final Task? data;
}

class TaskQuerySnapshot
    extends FirestoreQuerySnapshot<Task, TaskQueryDocumentSnapshot> {
  TaskQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory TaskQuerySnapshot._fromQuerySnapshot(QuerySnapshot<Task> snapshot) {
    final docs = snapshot.docs.map(TaskQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, TaskDocumentSnapshot._);
    }).toList();

    return TaskQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<TaskDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    TaskDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<TaskDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Task> snapshot;

  @override
  final List<TaskQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<TaskDocumentSnapshot>> docChanges;
}

class TaskQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<Task>
    implements TaskDocumentSnapshot {
  TaskQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Task> snapshot;

  @override
  final Task data;

  @override
  TaskDocumentReference get reference {
    return TaskDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Home _$HomeFromJson(Map<String, dynamic> json) => _Home(
  id: json['id'] as String? ?? 'unset',
  name: json['name'] as String,
  description: json['description'] as String?,
  createdAt: const FirestoreDateTimeConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  ownerId: json['ownerId'] as String,
  settings: HomeSettings.fromJson(json['settings'] as Map<String, dynamic>),
);

const _$HomeFieldMap = <String, String>{
  'name': 'name',
  'description': 'description',
  'createdAt': 'createdAt',
  'ownerId': 'ownerId',
  'settings': 'settings',
};

// ignore: unused_element
abstract class _$HomePerFieldToJson {
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? ownerId(String instance) => instance;
  // ignore: unused_element
  static Object? settings(HomeSettings instance) => instance.toJson();
}

Map<String, dynamic> _$HomeToJson(_Home instance) => <String, dynamic>{
  'name': instance.name,
  'description': instance.description,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
  'ownerId': instance.ownerId,
  'settings': instance.settings.toJson(),
};

_HomeSettings _$HomeSettingsFromJson(Map<String, dynamic> json) =>
    _HomeSettings(allowMemberInvite: json['allowMemberInvite'] as bool);

const _$HomeSettingsFieldMap = <String, String>{
  'allowMemberInvite': 'allowMemberInvite',
};

// ignore: unused_element
abstract class _$HomeSettingsPerFieldToJson {
  // ignore: unused_element
  static Object? allowMemberInvite(bool instance) => instance;
}

Map<String, dynamic> _$HomeSettingsToJson(_HomeSettings instance) =>
    <String, dynamic>{'allowMemberInvite': instance.allowMemberInvite};

_Member _$MemberFromJson(Map<String, dynamic> json) => _Member(
  userId: json['userId'] as String? ?? 'unset',
  permissions: MemberPermissions.fromJson(
    json['permissions'] as Map<String, dynamic>,
  ),
  joinedAt: const FirestoreDateTimeConverter().fromJson(
    json['joinedAt'] as Timestamp,
  ),
);

const _$MemberFieldMap = <String, String>{
  'permissions': 'permissions',
  'joinedAt': 'joinedAt',
};

// ignore: unused_element
abstract class _$MemberPerFieldToJson {
  // ignore: unused_element
  static Object? permissions(MemberPermissions instance) => instance.toJson();
  // ignore: unused_element
  static Object? joinedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$MemberToJson(_Member instance) => <String, dynamic>{
  'permissions': instance.permissions.toJson(),
  'joinedAt': const FirestoreDateTimeConverter().toJson(instance.joinedAt),
};

_MemberPermissions _$MemberPermissionsFromJson(Map<String, dynamic> json) =>
    _MemberPermissions(
      canCreateTasks: json['canCreateTasks'] as bool,
      canEditTasks: json['canEditTasks'] as bool,
      canDeleteTasks: json['canDeleteTasks'] as bool,
      canInviteMembers: json['canInviteMembers'] as bool,
      canViewAllCalendars: json['canViewAllCalendars'] as bool,
      isAdmin: json['isAdmin'] as bool,
    );

const _$MemberPermissionsFieldMap = <String, String>{
  'canCreateTasks': 'canCreateTasks',
  'canEditTasks': 'canEditTasks',
  'canDeleteTasks': 'canDeleteTasks',
  'canInviteMembers': 'canInviteMembers',
  'canViewAllCalendars': 'canViewAllCalendars',
  'isAdmin': 'isAdmin',
};

// ignore: unused_element
abstract class _$MemberPermissionsPerFieldToJson {
  // ignore: unused_element
  static Object? canCreateTasks(bool instance) => instance;
  // ignore: unused_element
  static Object? canEditTasks(bool instance) => instance;
  // ignore: unused_element
  static Object? canDeleteTasks(bool instance) => instance;
  // ignore: unused_element
  static Object? canInviteMembers(bool instance) => instance;
  // ignore: unused_element
  static Object? canViewAllCalendars(bool instance) => instance;
  // ignore: unused_element
  static Object? isAdmin(bool instance) => instance;
}

Map<String, dynamic> _$MemberPermissionsToJson(_MemberPermissions instance) =>
    <String, dynamic>{
      'canCreateTasks': instance.canCreateTasks,
      'canEditTasks': instance.canEditTasks,
      'canDeleteTasks': instance.canDeleteTasks,
      'canInviteMembers': instance.canInviteMembers,
      'canViewAllCalendars': instance.canViewAllCalendars,
      'isAdmin': instance.isAdmin,
    };

_Task _$TaskFromJson(Map<String, dynamic> json) => _Task(
  id: json['id'] as String? ?? 'unset',
  title: json['title'] as String,
  description: json['description'] as String?,
  homeId: json['homeId'] as String,
  assignedToIds: (json['assignedToIds'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  createdById: json['createdById'] as String,
  status: $enumDecode(_$TaskStatusEnumMap, json['status']),
  dueDate: _$JsonConverterFromJson<Timestamp, DateTime>(
    json['dueDate'],
    const FirestoreDateTimeConverter().fromJson,
  ),
  priority: $enumDecode(_$PriorityEnumMap, json['priority']),
  createdAt: const FirestoreDateTimeConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  updatedAt: const FirestoreDateTimeConverter().fromJson(
    json['updatedAt'] as Timestamp,
  ),
);

const _$TaskFieldMap = <String, String>{
  'title': 'title',
  'description': 'description',
  'homeId': 'homeId',
  'assignedToIds': 'assignedToIds',
  'createdById': 'createdById',
  'status': 'status',
  'dueDate': 'dueDate',
  'priority': 'priority',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
};

// ignore: unused_element
abstract class _$TaskPerFieldToJson {
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
  // ignore: unused_element
  static Object? homeId(String instance) => instance;
  // ignore: unused_element
  static Object? assignedToIds(List<String> instance) => instance;
  // ignore: unused_element
  static Object? createdById(String instance) => instance;
  // ignore: unused_element
  static Object? status(TaskStatus instance) => _$TaskStatusEnumMap[instance]!;
  // ignore: unused_element
  static Object? dueDate(DateTime? instance) =>
      _$JsonConverterToJson<Timestamp, DateTime>(
        instance,
        const FirestoreDateTimeConverter().toJson,
      );
  // ignore: unused_element
  static Object? priority(Priority instance) => _$PriorityEnumMap[instance]!;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$TaskToJson(_Task instance) => <String, dynamic>{
  'title': instance.title,
  'description': instance.description,
  'homeId': instance.homeId,
  'assignedToIds': instance.assignedToIds,
  'createdById': instance.createdById,
  'status': _$TaskStatusEnumMap[instance.status]!,
  'dueDate': _$JsonConverterToJson<Timestamp, DateTime>(
    instance.dueDate,
    const FirestoreDateTimeConverter().toJson,
  ),
  'priority': _$PriorityEnumMap[instance.priority]!,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const FirestoreDateTimeConverter().toJson(instance.updatedAt),
};

const _$TaskStatusEnumMap = {
  TaskStatus.todo: 'todo',
  TaskStatus.doing: 'doing',
  TaskStatus.done: 'done',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$PriorityEnumMap = {
  Priority.low: 'low',
  Priority.medium: 'medium',
  Priority.high: 'high',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
