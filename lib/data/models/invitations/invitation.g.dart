// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invitation.dart';

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
abstract class InvitationCollectionReference
    implements
        InvitationQuery,
        FirestoreCollectionReference<Invitation, InvitationQuerySnapshot> {
  factory InvitationCollectionReference([FirebaseFirestore? firestore]) =
      _$InvitationCollectionReference;

  static Invitation fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Invitation.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Invitation value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Invitation> get reference;

  @override
  InvitationDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<InvitationDocumentReference> add(Invitation value);
}

class _$InvitationCollectionReference extends _$InvitationQuery
    implements InvitationCollectionReference {
  factory _$InvitationCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$InvitationCollectionReference._(
      firestore
          .collection('invitations')
          .withConverter(
            fromFirestore: InvitationCollectionReference.fromFirestore,
            toFirestore: InvitationCollectionReference.toFirestore,
          ),
    );
  }

  _$InvitationCollectionReference._(CollectionReference<Invitation> reference)
    : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Invitation> get reference =>
      super.reference as CollectionReference<Invitation>;

  @override
  InvitationDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return InvitationDocumentReference(reference.doc(id));
  }

  @override
  Future<InvitationDocumentReference> add(Invitation value) {
    return reference.add(value).then((ref) => InvitationDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$InvitationCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class InvitationDocumentReference
    extends FirestoreDocumentReference<Invitation, InvitationDocumentSnapshot> {
  factory InvitationDocumentReference(DocumentReference<Invitation> reference) =
      _$InvitationDocumentReference;

  DocumentReference<Invitation> get reference;

  /// A reference to the [InvitationCollectionReference] containing this document.
  InvitationCollectionReference get parent {
    return _$InvitationCollectionReference(reference.firestore);
  }

  @override
  Stream<InvitationDocumentSnapshot> snapshots();

  @override
  Future<InvitationDocumentSnapshot> get([GetOptions? options]);

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
    Invitation model, {
    SetOptions? options,
    FieldValue homeIdFieldValue,
    FieldValue invitedEmailFieldValue,
    FieldValue invitedUserNameFieldValue,
    FieldValue invitedByFieldValue,
    FieldValue statusFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue expiresAtFieldValue,
    FieldValue invitationCodeFieldValue,
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
    Invitation model, {
    SetOptions? options,
    FieldValue homeIdFieldValue,
    FieldValue invitedEmailFieldValue,
    FieldValue invitedUserNameFieldValue,
    FieldValue invitedByFieldValue,
    FieldValue statusFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue expiresAtFieldValue,
    FieldValue invitationCodeFieldValue,
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
    Invitation model, {
    SetOptions? options,
    FieldValue homeIdFieldValue,
    FieldValue invitedEmailFieldValue,
    FieldValue invitedUserNameFieldValue,
    FieldValue invitedByFieldValue,
    FieldValue statusFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue expiresAtFieldValue,
    FieldValue invitationCodeFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String homeId,
    FieldValue homeIdFieldValue,
    String? invitedEmail,
    FieldValue invitedEmailFieldValue,
    String? invitedUserName,
    FieldValue invitedUserNameFieldValue,
    String invitedBy,
    FieldValue invitedByFieldValue,
    InvitationStatus status,
    FieldValue statusFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime expiresAt,
    FieldValue expiresAtFieldValue,
    String invitationCode,
    FieldValue invitationCodeFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String homeId,
    FieldValue homeIdFieldValue,
    String? invitedEmail,
    FieldValue invitedEmailFieldValue,
    String? invitedUserName,
    FieldValue invitedUserNameFieldValue,
    String invitedBy,
    FieldValue invitedByFieldValue,
    InvitationStatus status,
    FieldValue statusFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime expiresAt,
    FieldValue expiresAtFieldValue,
    String invitationCode,
    FieldValue invitationCodeFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String homeId,
    FieldValue homeIdFieldValue,
    String? invitedEmail,
    FieldValue invitedEmailFieldValue,
    String? invitedUserName,
    FieldValue invitedUserNameFieldValue,
    String invitedBy,
    FieldValue invitedByFieldValue,
    InvitationStatus status,
    FieldValue statusFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime expiresAt,
    FieldValue expiresAtFieldValue,
    String invitationCode,
    FieldValue invitationCodeFieldValue,
  });
}

class _$InvitationDocumentReference
    extends FirestoreDocumentReference<Invitation, InvitationDocumentSnapshot>
    implements InvitationDocumentReference {
  _$InvitationDocumentReference(this.reference);

  @override
  final DocumentReference<Invitation> reference;

  /// A reference to the [InvitationCollectionReference] containing this document.
  InvitationCollectionReference get parent {
    return _$InvitationCollectionReference(reference.firestore);
  }

  @override
  Stream<InvitationDocumentSnapshot> snapshots() {
    return reference.snapshots().map(InvitationDocumentSnapshot._);
  }

  @override
  Future<InvitationDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(InvitationDocumentSnapshot._);
  }

  @override
  Future<InvitationDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(InvitationDocumentSnapshot._);
  }

  Future<void> set(
    Invitation model, {
    SetOptions? options,
    FieldValue? homeIdFieldValue,
    FieldValue? invitedEmailFieldValue,
    FieldValue? invitedUserNameFieldValue,
    FieldValue? invitedByFieldValue,
    FieldValue? statusFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? expiresAtFieldValue,
    FieldValue? invitationCodeFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (homeIdFieldValue != null)
        _$InvitationFieldMap['homeId']!: homeIdFieldValue,

      if (invitedEmailFieldValue != null)
        _$InvitationFieldMap['invitedEmail']!: invitedEmailFieldValue,

      if (invitedUserNameFieldValue != null)
        _$InvitationFieldMap['invitedUserName']!: invitedUserNameFieldValue,

      if (invitedByFieldValue != null)
        _$InvitationFieldMap['invitedBy']!: invitedByFieldValue,

      if (statusFieldValue != null)
        _$InvitationFieldMap['status']!: statusFieldValue,

      if (createdAtFieldValue != null)
        _$InvitationFieldMap['createdAt']!: createdAtFieldValue,

      if (expiresAtFieldValue != null)
        _$InvitationFieldMap['expiresAt']!: expiresAtFieldValue,

      if (invitationCodeFieldValue != null)
        _$InvitationFieldMap['invitationCode']!: invitationCodeFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Invitation model, {
    SetOptions? options,
    FieldValue? homeIdFieldValue,
    FieldValue? invitedEmailFieldValue,
    FieldValue? invitedUserNameFieldValue,
    FieldValue? invitedByFieldValue,
    FieldValue? statusFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? expiresAtFieldValue,
    FieldValue? invitationCodeFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (homeIdFieldValue != null)
        _$InvitationFieldMap['homeId']!: homeIdFieldValue,

      if (invitedEmailFieldValue != null)
        _$InvitationFieldMap['invitedEmail']!: invitedEmailFieldValue,

      if (invitedUserNameFieldValue != null)
        _$InvitationFieldMap['invitedUserName']!: invitedUserNameFieldValue,

      if (invitedByFieldValue != null)
        _$InvitationFieldMap['invitedBy']!: invitedByFieldValue,

      if (statusFieldValue != null)
        _$InvitationFieldMap['status']!: statusFieldValue,

      if (createdAtFieldValue != null)
        _$InvitationFieldMap['createdAt']!: createdAtFieldValue,

      if (expiresAtFieldValue != null)
        _$InvitationFieldMap['expiresAt']!: expiresAtFieldValue,

      if (invitationCodeFieldValue != null)
        _$InvitationFieldMap['invitationCode']!: invitationCodeFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Invitation model, {
    SetOptions? options,
    FieldValue? homeIdFieldValue,
    FieldValue? invitedEmailFieldValue,
    FieldValue? invitedUserNameFieldValue,
    FieldValue? invitedByFieldValue,
    FieldValue? statusFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? expiresAtFieldValue,
    FieldValue? invitationCodeFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (homeIdFieldValue != null)
        _$InvitationFieldMap['homeId']!: homeIdFieldValue,

      if (invitedEmailFieldValue != null)
        _$InvitationFieldMap['invitedEmail']!: invitedEmailFieldValue,

      if (invitedUserNameFieldValue != null)
        _$InvitationFieldMap['invitedUserName']!: invitedUserNameFieldValue,

      if (invitedByFieldValue != null)
        _$InvitationFieldMap['invitedBy']!: invitedByFieldValue,

      if (statusFieldValue != null)
        _$InvitationFieldMap['status']!: statusFieldValue,

      if (createdAtFieldValue != null)
        _$InvitationFieldMap['createdAt']!: createdAtFieldValue,

      if (expiresAtFieldValue != null)
        _$InvitationFieldMap['expiresAt']!: expiresAtFieldValue,

      if (invitationCodeFieldValue != null)
        _$InvitationFieldMap['invitationCode']!: invitationCodeFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? invitedEmail = _sentinel,
    FieldValue? invitedEmailFieldValue,
    Object? invitedUserName = _sentinel,
    FieldValue? invitedUserNameFieldValue,
    Object? invitedBy = _sentinel,
    FieldValue? invitedByFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? expiresAt = _sentinel,
    FieldValue? expiresAtFieldValue,
    Object? invitationCode = _sentinel,
    FieldValue? invitationCodeFieldValue,
  }) async {
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      invitedEmail == _sentinel || invitedEmailFieldValue == null,
      "Cannot specify both invitedEmail and invitedEmailFieldValue",
    );
    assert(
      invitedUserName == _sentinel || invitedUserNameFieldValue == null,
      "Cannot specify both invitedUserName and invitedUserNameFieldValue",
    );
    assert(
      invitedBy == _sentinel || invitedByFieldValue == null,
      "Cannot specify both invitedBy and invitedByFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      expiresAt == _sentinel || expiresAtFieldValue == null,
      "Cannot specify both expiresAt and expiresAtFieldValue",
    );
    assert(
      invitationCode == _sentinel || invitationCodeFieldValue == null,
      "Cannot specify both invitationCode and invitationCodeFieldValue",
    );
    final json = {
      if (homeId != _sentinel)
        _$InvitationFieldMap['homeId']!: _$InvitationPerFieldToJson.homeId(
          homeId as String,
        ),

      if (homeIdFieldValue != null)
        _$InvitationFieldMap['homeId']!: homeIdFieldValue,

      if (invitedEmail != _sentinel)
        _$InvitationFieldMap['invitedEmail']!: _$InvitationPerFieldToJson
            .invitedEmail(invitedEmail as String?),

      if (invitedEmailFieldValue != null)
        _$InvitationFieldMap['invitedEmail']!: invitedEmailFieldValue,

      if (invitedUserName != _sentinel)
        _$InvitationFieldMap['invitedUserName']!: _$InvitationPerFieldToJson
            .invitedUserName(invitedUserName as String?),

      if (invitedUserNameFieldValue != null)
        _$InvitationFieldMap['invitedUserName']!: invitedUserNameFieldValue,

      if (invitedBy != _sentinel)
        _$InvitationFieldMap['invitedBy']!: _$InvitationPerFieldToJson
            .invitedBy(invitedBy as String),

      if (invitedByFieldValue != null)
        _$InvitationFieldMap['invitedBy']!: invitedByFieldValue,

      if (status != _sentinel)
        _$InvitationFieldMap['status']!: _$InvitationPerFieldToJson.status(
          status as InvitationStatus,
        ),

      if (statusFieldValue != null)
        _$InvitationFieldMap['status']!: statusFieldValue,

      if (createdAt != _sentinel)
        _$InvitationFieldMap['createdAt']!: _$InvitationPerFieldToJson
            .createdAt(createdAt as DateTime),

      if (createdAtFieldValue != null)
        _$InvitationFieldMap['createdAt']!: createdAtFieldValue,

      if (expiresAt != _sentinel)
        _$InvitationFieldMap['expiresAt']!: _$InvitationPerFieldToJson
            .expiresAt(expiresAt as DateTime),

      if (expiresAtFieldValue != null)
        _$InvitationFieldMap['expiresAt']!: expiresAtFieldValue,

      if (invitationCode != _sentinel)
        _$InvitationFieldMap['invitationCode']!: _$InvitationPerFieldToJson
            .invitationCode(invitationCode as String),

      if (invitationCodeFieldValue != null)
        _$InvitationFieldMap['invitationCode']!: invitationCodeFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? invitedEmail = _sentinel,
    FieldValue? invitedEmailFieldValue,
    Object? invitedUserName = _sentinel,
    FieldValue? invitedUserNameFieldValue,
    Object? invitedBy = _sentinel,
    FieldValue? invitedByFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? expiresAt = _sentinel,
    FieldValue? expiresAtFieldValue,
    Object? invitationCode = _sentinel,
    FieldValue? invitationCodeFieldValue,
  }) {
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      invitedEmail == _sentinel || invitedEmailFieldValue == null,
      "Cannot specify both invitedEmail and invitedEmailFieldValue",
    );
    assert(
      invitedUserName == _sentinel || invitedUserNameFieldValue == null,
      "Cannot specify both invitedUserName and invitedUserNameFieldValue",
    );
    assert(
      invitedBy == _sentinel || invitedByFieldValue == null,
      "Cannot specify both invitedBy and invitedByFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      expiresAt == _sentinel || expiresAtFieldValue == null,
      "Cannot specify both expiresAt and expiresAtFieldValue",
    );
    assert(
      invitationCode == _sentinel || invitationCodeFieldValue == null,
      "Cannot specify both invitationCode and invitationCodeFieldValue",
    );
    final json = {
      if (homeId != _sentinel)
        _$InvitationFieldMap['homeId']!: _$InvitationPerFieldToJson.homeId(
          homeId as String,
        ),

      if (homeIdFieldValue != null)
        _$InvitationFieldMap['homeId']!: homeIdFieldValue,

      if (invitedEmail != _sentinel)
        _$InvitationFieldMap['invitedEmail']!: _$InvitationPerFieldToJson
            .invitedEmail(invitedEmail as String?),

      if (invitedEmailFieldValue != null)
        _$InvitationFieldMap['invitedEmail']!: invitedEmailFieldValue,

      if (invitedUserName != _sentinel)
        _$InvitationFieldMap['invitedUserName']!: _$InvitationPerFieldToJson
            .invitedUserName(invitedUserName as String?),

      if (invitedUserNameFieldValue != null)
        _$InvitationFieldMap['invitedUserName']!: invitedUserNameFieldValue,

      if (invitedBy != _sentinel)
        _$InvitationFieldMap['invitedBy']!: _$InvitationPerFieldToJson
            .invitedBy(invitedBy as String),

      if (invitedByFieldValue != null)
        _$InvitationFieldMap['invitedBy']!: invitedByFieldValue,

      if (status != _sentinel)
        _$InvitationFieldMap['status']!: _$InvitationPerFieldToJson.status(
          status as InvitationStatus,
        ),

      if (statusFieldValue != null)
        _$InvitationFieldMap['status']!: statusFieldValue,

      if (createdAt != _sentinel)
        _$InvitationFieldMap['createdAt']!: _$InvitationPerFieldToJson
            .createdAt(createdAt as DateTime),

      if (createdAtFieldValue != null)
        _$InvitationFieldMap['createdAt']!: createdAtFieldValue,

      if (expiresAt != _sentinel)
        _$InvitationFieldMap['expiresAt']!: _$InvitationPerFieldToJson
            .expiresAt(expiresAt as DateTime),

      if (expiresAtFieldValue != null)
        _$InvitationFieldMap['expiresAt']!: expiresAtFieldValue,

      if (invitationCode != _sentinel)
        _$InvitationFieldMap['invitationCode']!: _$InvitationPerFieldToJson
            .invitationCode(invitationCode as String),

      if (invitationCodeFieldValue != null)
        _$InvitationFieldMap['invitationCode']!: invitationCodeFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? homeId = _sentinel,
    FieldValue? homeIdFieldValue,
    Object? invitedEmail = _sentinel,
    FieldValue? invitedEmailFieldValue,
    Object? invitedUserName = _sentinel,
    FieldValue? invitedUserNameFieldValue,
    Object? invitedBy = _sentinel,
    FieldValue? invitedByFieldValue,
    Object? status = _sentinel,
    FieldValue? statusFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? expiresAt = _sentinel,
    FieldValue? expiresAtFieldValue,
    Object? invitationCode = _sentinel,
    FieldValue? invitationCodeFieldValue,
  }) {
    assert(
      homeId == _sentinel || homeIdFieldValue == null,
      "Cannot specify both homeId and homeIdFieldValue",
    );
    assert(
      invitedEmail == _sentinel || invitedEmailFieldValue == null,
      "Cannot specify both invitedEmail and invitedEmailFieldValue",
    );
    assert(
      invitedUserName == _sentinel || invitedUserNameFieldValue == null,
      "Cannot specify both invitedUserName and invitedUserNameFieldValue",
    );
    assert(
      invitedBy == _sentinel || invitedByFieldValue == null,
      "Cannot specify both invitedBy and invitedByFieldValue",
    );
    assert(
      status == _sentinel || statusFieldValue == null,
      "Cannot specify both status and statusFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      expiresAt == _sentinel || expiresAtFieldValue == null,
      "Cannot specify both expiresAt and expiresAtFieldValue",
    );
    assert(
      invitationCode == _sentinel || invitationCodeFieldValue == null,
      "Cannot specify both invitationCode and invitationCodeFieldValue",
    );
    final json = {
      if (homeId != _sentinel)
        _$InvitationFieldMap['homeId']!: _$InvitationPerFieldToJson.homeId(
          homeId as String,
        ),

      if (homeIdFieldValue != null)
        _$InvitationFieldMap['homeId']!: homeIdFieldValue,

      if (invitedEmail != _sentinel)
        _$InvitationFieldMap['invitedEmail']!: _$InvitationPerFieldToJson
            .invitedEmail(invitedEmail as String?),

      if (invitedEmailFieldValue != null)
        _$InvitationFieldMap['invitedEmail']!: invitedEmailFieldValue,

      if (invitedUserName != _sentinel)
        _$InvitationFieldMap['invitedUserName']!: _$InvitationPerFieldToJson
            .invitedUserName(invitedUserName as String?),

      if (invitedUserNameFieldValue != null)
        _$InvitationFieldMap['invitedUserName']!: invitedUserNameFieldValue,

      if (invitedBy != _sentinel)
        _$InvitationFieldMap['invitedBy']!: _$InvitationPerFieldToJson
            .invitedBy(invitedBy as String),

      if (invitedByFieldValue != null)
        _$InvitationFieldMap['invitedBy']!: invitedByFieldValue,

      if (status != _sentinel)
        _$InvitationFieldMap['status']!: _$InvitationPerFieldToJson.status(
          status as InvitationStatus,
        ),

      if (statusFieldValue != null)
        _$InvitationFieldMap['status']!: statusFieldValue,

      if (createdAt != _sentinel)
        _$InvitationFieldMap['createdAt']!: _$InvitationPerFieldToJson
            .createdAt(createdAt as DateTime),

      if (createdAtFieldValue != null)
        _$InvitationFieldMap['createdAt']!: createdAtFieldValue,

      if (expiresAt != _sentinel)
        _$InvitationFieldMap['expiresAt']!: _$InvitationPerFieldToJson
            .expiresAt(expiresAt as DateTime),

      if (expiresAtFieldValue != null)
        _$InvitationFieldMap['expiresAt']!: expiresAtFieldValue,

      if (invitationCode != _sentinel)
        _$InvitationFieldMap['invitationCode']!: _$InvitationPerFieldToJson
            .invitationCode(invitationCode as String),

      if (invitationCodeFieldValue != null)
        _$InvitationFieldMap['invitationCode']!: invitationCodeFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is InvitationDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class InvitationQuery
    implements QueryReference<Invitation, InvitationQuerySnapshot> {
  @override
  InvitationQuery limit(int limit);

  @override
  InvitationQuery limitToLast(int limit);

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
  InvitationQuery whereFieldPath(
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

  InvitationQuery whereDocumentId({
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

  InvitationQuery whereHomeId({
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

  InvitationQuery whereInvitedEmail({
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

  InvitationQuery whereInvitedUserName({
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

  InvitationQuery whereInvitedBy({
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

  InvitationQuery whereStatus({
    InvitationStatus? isEqualTo,
    InvitationStatus? isNotEqualTo,
    InvitationStatus? isLessThan,
    InvitationStatus? isLessThanOrEqualTo,
    InvitationStatus? isGreaterThan,
    InvitationStatus? isGreaterThanOrEqualTo,
    List<InvitationStatus>? whereIn,
    List<InvitationStatus>? whereNotIn,
    bool? isNull,
  });

  InvitationQuery whereCreatedAt({
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

  InvitationQuery whereExpiresAt({
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

  InvitationQuery whereInvitationCode({
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
  InvitationQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByHomeId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByInvitedEmail({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByInvitedUserName({
    bool descending = false,
    String? startAt,
    String? startAfter,
    String? endAt,
    String? endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByInvitedBy({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByStatus({
    bool descending = false,
    InvitationStatus startAt,
    InvitationStatus startAfter,
    InvitationStatus endAt,
    InvitationStatus endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByExpiresAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });

  InvitationQuery orderByInvitationCode({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  });
}

class _$InvitationQuery
    extends QueryReference<Invitation, InvitationQuerySnapshot>
    implements InvitationQuery {
  _$InvitationQuery(
    this._collection, {
    required Query<Invitation> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
         $referenceWithoutCursor: $referenceWithoutCursor,
         $queryCursor: $queryCursor,
       );

  final CollectionReference<Object?> _collection;

  @override
  Stream<InvitationQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(
      InvitationQuerySnapshot._fromQuerySnapshot,
    );
  }

  @override
  Future<InvitationQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(InvitationQuerySnapshot._fromQuerySnapshot);
  }

  @override
  InvitationQuery limit(int limit) {
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  InvitationQuery limitToLast(int limit) {
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  InvitationQuery whereFieldPath(
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
    return _$InvitationQuery(
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
  InvitationQuery whereDocumentId({
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
    return _$InvitationQuery(
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
  InvitationQuery whereHomeId({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['homeId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.homeId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.homeId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.homeId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.homeId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.homeId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.homeId(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$InvitationPerFieldToJson.homeId(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.homeId(e),
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
  InvitationQuery whereInvitedEmail({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['invitedEmail']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitedEmail(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitedEmail(isNotEqualTo as String?)
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.invitedEmail(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitedEmail(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.invitedEmail(isGreaterThan as String?)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitedEmail(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => _$InvitationPerFieldToJson.invitedEmail(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.invitedEmail(e),
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
  InvitationQuery whereInvitedUserName({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['invitedUserName']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitedUserName(isEqualTo as String?)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitedUserName(
                isNotEqualTo as String?,
              )
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.invitedUserName(isLessThan as String?)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitedUserName(
                isLessThanOrEqualTo as String?,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.invitedUserName(
                isGreaterThan as String?,
              )
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitedUserName(
                isGreaterThanOrEqualTo as String?,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => _$InvitationPerFieldToJson.invitedUserName(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.invitedUserName(e),
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
  InvitationQuery whereInvitedBy({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['invitedBy']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitedBy(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitedBy(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.invitedBy(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitedBy(
                isLessThanOrEqualTo as String,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.invitedBy(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitedBy(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map((e) => _$InvitationPerFieldToJson.invitedBy(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.invitedBy(e),
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
  InvitationQuery whereStatus({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<InvitationStatus>? whereIn,
    List<InvitationStatus>? whereNotIn,
    bool? isNull,
  }) {
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['status']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.status(isEqualTo as InvitationStatus)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.status(
                isNotEqualTo as InvitationStatus,
              )
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.status(isLessThan as InvitationStatus)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.status(
                isLessThanOrEqualTo as InvitationStatus,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.status(
                isGreaterThan as InvitationStatus,
              )
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.status(
                isGreaterThanOrEqualTo as InvitationStatus,
              )
            : null,
        whereIn: whereIn?.map((e) => _$InvitationPerFieldToJson.status(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.status(e),
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
  InvitationQuery whereCreatedAt({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.createdAt(
                isLessThanOrEqualTo as DateTime,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.createdAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$InvitationPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.createdAt(e),
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
  InvitationQuery whereExpiresAt({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['expiresAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.expiresAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.expiresAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.expiresAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.expiresAt(
                isLessThanOrEqualTo as DateTime,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.expiresAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.expiresAt(
                isGreaterThanOrEqualTo as DateTime,
              )
            : null,
        whereIn: whereIn?.map((e) => _$InvitationPerFieldToJson.expiresAt(e)),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.expiresAt(e),
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
  InvitationQuery whereInvitationCode({
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
    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$InvitationFieldMap['invitationCode']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitationCode(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$InvitationPerFieldToJson.invitationCode(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$InvitationPerFieldToJson.invitationCode(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitationCode(
                isLessThanOrEqualTo as String,
              )
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$InvitationPerFieldToJson.invitationCode(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$InvitationPerFieldToJson.invitationCode(
                isGreaterThanOrEqualTo as String,
              )
            : null,
        whereIn: whereIn?.map(
          (e) => _$InvitationPerFieldToJson.invitationCode(e),
        ),
        whereNotIn: whereNotIn?.map(
          (e) => _$InvitationPerFieldToJson.invitationCode(e),
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
  InvitationQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByHomeId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['homeId']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByInvitedEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['invitedEmail']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByInvitedUserName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['invitedUserName']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByInvitedBy({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['invitedBy']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByStatus({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['status']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['createdAt']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByExpiresAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['expiresAt']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  InvitationQuery orderByInvitationCode({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    InvitationDocumentSnapshot? startAtDocument,
    InvitationDocumentSnapshot? endAtDocument,
    InvitationDocumentSnapshot? endBeforeDocument,
    InvitationDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
      _$InvitationFieldMap['invitationCode']!,
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

    return _$InvitationQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$InvitationQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class InvitationDocumentSnapshot extends FirestoreDocumentSnapshot<Invitation> {
  InvitationDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Invitation> snapshot;

  @override
  InvitationDocumentReference get reference {
    return InvitationDocumentReference(snapshot.reference);
  }

  @override
  final Invitation? data;
}

class InvitationQuerySnapshot
    extends
        FirestoreQuerySnapshot<Invitation, InvitationQueryDocumentSnapshot> {
  InvitationQuerySnapshot._(this.snapshot, this.docs, this.docChanges);

  factory InvitationQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Invitation> snapshot,
  ) {
    final docs = snapshot.docs.map(InvitationQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(change, InvitationDocumentSnapshot._);
    }).toList();

    return InvitationQuerySnapshot._(snapshot, docs, docChanges);
  }

  static FirestoreDocumentChange<InvitationDocumentSnapshot>
  _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    InvitationDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<InvitationDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Invitation> snapshot;

  @override
  final List<InvitationQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<InvitationDocumentSnapshot>> docChanges;
}

class InvitationQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Invitation>
    implements InvitationDocumentSnapshot {
  InvitationQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Invitation> snapshot;

  @override
  final Invitation data;

  @override
  InvitationDocumentReference get reference {
    return InvitationDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Invitation _$InvitationFromJson(Map<String, dynamic> json) => _Invitation(
  id: json['id'] as String? ?? 'unset',
  homeId: json['homeId'] as String,
  invitedEmail: json['invitedEmail'] as String?,
  invitedUserName: json['invitedUserName'] as String?,
  invitedBy: json['invitedBy'] as String,
  status: $enumDecode(_$InvitationStatusEnumMap, json['status']),
  createdAt: const FirestoreDateTimeConverter().fromJson(
    json['createdAt'] as Timestamp,
  ),
  expiresAt: const FirestoreDateTimeConverter().fromJson(
    json['expiresAt'] as Timestamp,
  ),
  invitationCode: json['invitationCode'] as String,
);

const _$InvitationFieldMap = <String, String>{
  'homeId': 'homeId',
  'invitedEmail': 'invitedEmail',
  'invitedUserName': 'invitedUserName',
  'invitedBy': 'invitedBy',
  'status': 'status',
  'createdAt': 'createdAt',
  'expiresAt': 'expiresAt',
  'invitationCode': 'invitationCode',
};

// ignore: unused_element
abstract class _$InvitationPerFieldToJson {
  // ignore: unused_element
  static Object? homeId(String instance) => instance;
  // ignore: unused_element
  static Object? invitedEmail(String? instance) => instance;
  // ignore: unused_element
  static Object? invitedUserName(String? instance) => instance;
  // ignore: unused_element
  static Object? invitedBy(String instance) => instance;
  // ignore: unused_element
  static Object? status(InvitationStatus instance) =>
      _$InvitationStatusEnumMap[instance]!;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? expiresAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? invitationCode(String instance) => instance;
}

Map<String, dynamic> _$InvitationToJson(
  _Invitation instance,
) => <String, dynamic>{
  'homeId': instance.homeId,
  'invitedEmail': instance.invitedEmail,
  'invitedUserName': instance.invitedUserName,
  'invitedBy': instance.invitedBy,
  'status': _$InvitationStatusEnumMap[instance.status]!,
  'createdAt': const FirestoreDateTimeConverter().toJson(instance.createdAt),
  'expiresAt': const FirestoreDateTimeConverter().toJson(instance.expiresAt),
  'invitationCode': instance.invitationCode,
};

const _$InvitationStatusEnumMap = {
  InvitationStatus.pending: 'pending',
  InvitationStatus.accepted: 'accepted',
  InvitationStatus.declined: 'declined',
  InvitationStatus.expired: 'expired',
};
