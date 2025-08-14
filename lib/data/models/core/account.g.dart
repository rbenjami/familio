// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

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
abstract class AccountCollectionReference
    implements
        AccountQuery,
        FirestoreCollectionReference<Account, AccountQuerySnapshot> {
  factory AccountCollectionReference([FirebaseFirestore? firestore]) =
      _$AccountCollectionReference;

  static Account fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Account.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(Account value, SetOptions? options) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Account> get reference;

  @override
  AccountDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AccountDocumentReference> add(Account value);
}

class _$AccountCollectionReference extends _$AccountQuery
    implements AccountCollectionReference {
  factory _$AccountCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$AccountCollectionReference._(
      firestore
          .collection('accounts')
          .withConverter(
            fromFirestore: AccountCollectionReference.fromFirestore,
            toFirestore: AccountCollectionReference.toFirestore,
          ),
    );
  }

  _$AccountCollectionReference._(CollectionReference<Account> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Account> get reference =>
      super.reference as CollectionReference<Account>;

  @override
  AccountDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AccountDocumentReference(reference.doc(id));
  }

  @override
  Future<AccountDocumentReference> add(Account value) {
    return reference.add(value).then((ref) => AccountDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AccountCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AccountDocumentReference
    extends FirestoreDocumentReference<Account, AccountDocumentSnapshot> {
  factory AccountDocumentReference(DocumentReference<Account> reference) =
      _$AccountDocumentReference;

  DocumentReference<Account> get reference;

  /// A reference to the [AccountCollectionReference] containing this document.
  AccountCollectionReference get parent {
    return _$AccountCollectionReference(reference.firestore);
  }

  @override
  Stream<AccountDocumentSnapshot> snapshots();

  @override
  Future<AccountDocumentSnapshot> get([GetOptions? options]);

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
    Account model, {
    SetOptions? options,
    FieldValue emailFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue userIdFieldValue,
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
    Account model, {
    SetOptions? options,
    FieldValue emailFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue userIdFieldValue,
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
    Account model, {
    SetOptions? options,
    FieldValue emailFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue userIdFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String email,
    FieldValue emailFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String email,
    FieldValue emailFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String email,
    FieldValue emailFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });
}

class _$AccountDocumentReference
    extends FirestoreDocumentReference<Account, AccountDocumentSnapshot>
    implements AccountDocumentReference {
  _$AccountDocumentReference(this.reference);

  @override
  final DocumentReference<Account> reference;

  /// A reference to the [AccountCollectionReference] containing this document.
  AccountCollectionReference get parent {
    return _$AccountCollectionReference(reference.firestore);
  }

  @override
  Stream<AccountDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AccountDocumentSnapshot._);
  }

  @override
  Future<AccountDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AccountDocumentSnapshot._);
  }

  @override
  Future<AccountDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(AccountDocumentSnapshot._);
  }

  Future<void> set(
    Account model, {
    SetOptions? options,
    FieldValue? emailFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? userIdFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (emailFieldValue != null) _$AccountFieldMap['email']!: emailFieldValue,

      if (createdAtFieldValue != null)
        _$AccountFieldMap['createdAt']!: createdAtFieldValue,

      if (userIdFieldValue != null)
        _$AccountFieldMap['userId']!: userIdFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Account model, {
    SetOptions? options,
    FieldValue? emailFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? userIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (emailFieldValue != null) _$AccountFieldMap['email']!: emailFieldValue,

      if (createdAtFieldValue != null)
        _$AccountFieldMap['createdAt']!: createdAtFieldValue,

      if (userIdFieldValue != null)
        _$AccountFieldMap['userId']!: userIdFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Account model, {
    SetOptions? options,
    FieldValue? emailFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? userIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (emailFieldValue != null) _$AccountFieldMap['email']!: emailFieldValue,

      if (createdAtFieldValue != null)
        _$AccountFieldMap['createdAt']!: createdAtFieldValue,

      if (userIdFieldValue != null)
        _$AccountFieldMap['userId']!: userIdFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) async {
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (email != _sentinel)
        _$AccountFieldMap['email']!: _$AccountPerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null) _$AccountFieldMap['email']!: emailFieldValue,

      if (createdAt != _sentinel)
        _$AccountFieldMap['createdAt']!: _$AccountPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$AccountFieldMap['createdAt']!: createdAtFieldValue,

      if (userId != _sentinel)
        _$AccountFieldMap['userId']!: _$AccountPerFieldToJson.userId(
          userId as String,
        ),

      if (userIdFieldValue != null)
        _$AccountFieldMap['userId']!: userIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) {
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (email != _sentinel)
        _$AccountFieldMap['email']!: _$AccountPerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null) _$AccountFieldMap['email']!: emailFieldValue,

      if (createdAt != _sentinel)
        _$AccountFieldMap['createdAt']!: _$AccountPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$AccountFieldMap['createdAt']!: createdAtFieldValue,

      if (userId != _sentinel)
        _$AccountFieldMap['userId']!: _$AccountPerFieldToJson.userId(
          userId as String,
        ),

      if (userIdFieldValue != null)
        _$AccountFieldMap['userId']!: userIdFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
  }) {
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (email != _sentinel)
        _$AccountFieldMap['email']!: _$AccountPerFieldToJson.email(
          email as String,
        ),

      if (emailFieldValue != null) _$AccountFieldMap['email']!: emailFieldValue,

      if (createdAt != _sentinel)
        _$AccountFieldMap['createdAt']!: _$AccountPerFieldToJson.createdAt(
          createdAt as DateTime,
        ),

      if (createdAtFieldValue != null)
        _$AccountFieldMap['createdAt']!: createdAtFieldValue,

      if (userId != _sentinel)
        _$AccountFieldMap['userId']!: _$AccountPerFieldToJson.userId(
          userId as String,
        ),

      if (userIdFieldValue != null)
        _$AccountFieldMap['userId']!: userIdFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AccountDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AccountQuery
    implements QueryReference<Account, AccountQuerySnapshot> {
  @override
  AccountQuery limit(int limit);

  @override
  AccountQuery limitToLast(int limit);

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
  AccountQuery whereFieldPath(
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

  AccountQuery whereDocumentId({
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

  AccountQuery whereEmail({
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

  AccountQuery whereCreatedAt({
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

  AccountQuery whereUserId({
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
  AccountQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  });

  AccountQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  });

  AccountQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  });

  AccountQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  });

  AccountQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  });
}

class _$AccountQuery extends QueryReference<Account, AccountQuerySnapshot>
    implements AccountQuery {
  _$AccountQuery(
    this._collection, {
    required Query<Account> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AccountQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(AccountQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AccountQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AccountQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AccountQuery limit(int limit) {
    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccountQuery limitToLast(int limit) {
    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccountQuery whereFieldPath(
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
    return _$AccountQuery(
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
  AccountQuery whereDocumentId({
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
    return _$AccountQuery(
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
  AccountQuery whereEmail({
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
    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccountFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccountPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccountPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AccountPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccountPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccountPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccountPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AccountPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$AccountPerFieldToJson.email(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccountQuery whereCreatedAt({
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
    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccountFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccountPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccountPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$AccountPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccountPerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccountPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccountPerFieldToJson.createdAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$AccountPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$AccountPerFieldToJson.createdAt(e),
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
  AccountQuery whereUserId({
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
    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AccountFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AccountPerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AccountPerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AccountPerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AccountPerFieldToJson.userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AccountPerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AccountPerFieldToJson.userId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AccountPerFieldToJson.userId(e)),
        whereNotIn: whereNotIn?.map((e) => _$AccountPerFieldToJson.userId(e)),
        isNull:
            isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AccountQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
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

    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccountQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
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

    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccountQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$AccountFieldMap['email']!,
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

    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccountQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$AccountFieldMap['createdAt']!,
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

    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AccountQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AccountDocumentSnapshot? startAtDocument,
    AccountDocumentSnapshot? endAtDocument,
    AccountDocumentSnapshot? endBeforeDocument,
    AccountDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$AccountFieldMap['userId']!,
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

    return _$AccountQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AccountQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AccountDocumentSnapshot extends FirestoreDocumentSnapshot<Account> {
  AccountDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Account> snapshot;

  @override
  AccountDocumentReference get reference {
    return AccountDocumentReference(snapshot.reference);
  }

  @override
  final Account? data;
}

class AccountQuerySnapshot
    extends FirestoreQuerySnapshot<Account, AccountQueryDocumentSnapshot> {
  AccountQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory AccountQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Account> snapshot,
  ) {
    final docs = snapshot.docs.map(AccountQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, AccountDocumentSnapshot._);
    }).toList();

    return AccountQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<AccountDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AccountDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AccountDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Account> snapshot;

  @override
  final List<AccountQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AccountDocumentSnapshot>> docChanges;
}

class AccountQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Account>
    implements AccountDocumentSnapshot {
  AccountQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Account> snapshot;

  @override
  final Account data;

  @override
  AccountDocumentReference get reference {
    return AccountDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  id: json['id'] as String,
  email: json['email'] as String,
  createdAt: const FirestoreDateTimeConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  userId: json['userId'] as String,
);

const _$AccountFieldMap = <String, String>{
  'id': 'id',
  'email': 'email',
  'createdAt': 'createdAt',
  'userId': 'userId',
};

// ignore: unused_element
abstract class _$AccountPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
}

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
  'userId': instance.userId,
};
