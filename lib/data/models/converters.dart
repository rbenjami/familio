import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:familio/data/models/models.dart';

class DocumentReferenceHomeConverter
    extends
        JsonConverter<
          DocumentReference<Home>,
          DocumentReference<Map<String, dynamic>>
        > {
  const DocumentReferenceHomeConverter();

  @override
  DocumentReference<Home> fromJson(
    DocumentReference<Map<String, dynamic>> json,
  ) => homesRef.doc(json.id).reference;

  @override
  DocumentReference<Map<String, dynamic>> toJson(
    DocumentReference<Home> object,
  ) => FirebaseFirestore.instance.doc(object.path);
}

class DocumentReferenceUserConverter
    extends
        JsonConverter<
          DocumentReference<User>,
          DocumentReference<Map<String, dynamic>>
        > {
  const DocumentReferenceUserConverter();

  @override
  DocumentReference<User> fromJson(
    DocumentReference<Map<String, dynamic>> json,
  ) => usersRef.doc(json.id).reference;

  @override
  DocumentReference<Map<String, dynamic>> toJson(
    DocumentReference<User> object,
  ) => FirebaseFirestore.instance.doc(object.path);
}
