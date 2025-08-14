// Enums
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'enums/task_status.dart';
export 'enums/priority.dart';
export 'enums/calendar_type.dart';
export 'enums/event_source.dart';
export 'enums/invitation_status.dart';
export 'enums/relationship_type.dart';

// Core models
export 'core/user.dart';
export 'core/account.dart';
export 'core/home.dart';

// Invitations
export 'invitations/invitation.dart';

// Relationships
export 'relationships/relationship.dart';

const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);
