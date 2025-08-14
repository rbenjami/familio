## Modèles de données ODM + Freezed

### User
```dart
@Collection<User>('users')
@freezed
class User with _$User {
  const factory User({
    @Id() required String id,
    required String name,
    String? avatar,
    DateTime? birthDate,
    String? accountId, // null pour enfants mineurs
    required List<String> homeIds,
    List<String>? relationshipIds, // pour V2
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
```

### Account
```dart
@Collection<Account>('accounts')
@freezed
class Account with _$Account {
  const factory Account({
    @Id() required String id,
    required String email,
    required DateTime createdAt,
    required String userId,
  }) = _Account;

  factory Account.fromJson(Map<String, Object?> json) => _$AccountFromJson(json);
}
```

### HomeSettings
```dart
@freezed
class HomeSettings with _$HomeSettings {
  const factory HomeSettings({
    required bool allowMemberInvite,
  }) = _HomeSettings;

  factory HomeSettings.fromJson(Map<String, Object?> json) => _$HomeSettingsFromJson(json);
}
```

### Home
```dart
@Collection<Home>('homes')
@freezed
class Home with _$Home {
  const factory Home({
    @Id() required String id,
    required String name,
    String? description,
    required DateTime createdAt,
    required String ownerId,
    required List<String> memberIds,
    required HomeSettings settings,
  }) = _Home;

  factory Home.fromJson(Map<String, Object?> json) => _$HomeFromJson(json);
}
```

### MemberPermissions
```dart
@freezed
class MemberPermissions with _$MemberPermissions {
  const factory MemberPermissions({
    required bool canCreateTasks,
    required bool canEditTasks,
    required bool canDeleteTasks,
    required bool canInviteMembers,
    required bool canViewAllCalendars,
    required bool isAdmin,
  }) = _MemberPermissions;

  factory MemberPermissions.fromJson(Map<String, Object?> json) => _$MemberPermissionsFromJson(json);
}
```

### Home (avec subcollections)
```dart
@Collection<Home>('homes')
@freezed
class Home with _$Home {
  const factory Home({
    @Id() required String id,
    required String name,
    String? description,
    required DateTime createdAt,
    required String ownerId,
    required List<String> memberIds,
    required HomeSettings settings,
  }) = _Home;

  factory Home.fromJson(Map<String, Object?> json) => _$HomeFromJson(json);
}

@Collection<Member>('homes/*/members')
@freezed
class Member with _$Member {
  const factory Member({
    @Id() required String userId,
    required MemberPermissions permissions,
    required DateTime joinedAt,
  }) = _Member;

  factory Member.fromJson(Map<String, Object?> json) => _$MemberFromJson(json);
}

@Collection<Task>('homes/*/tasks')
@freezed
class Task with _$Task {
  const factory Task({
    @Id() required String id,
    required String title,
    String? description,
    required String homeId,
    required List<String> assignedToIds,
    required String createdById,
    required TaskStatus status,
    DateTime? dueDate,
    required Priority priority,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Task;

  factory Task.fromJson(Map<String, Object?> json) => _$TaskFromJson(json);
}
```

### User (avec subcollections)
```dart
@Collection<User>('users')
@freezed
class User with _$User {
  const factory User({
    @Id() required String id,
    required String name,
    String? avatar,
    DateTime? birthDate,
    String? accountId, // null pour enfants mineurs
    required List<String> homeIds,
    List<String>? relationshipIds, // pour V2
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}

@Collection<Calendar>('users/*/calendars')
@freezed
class Calendar with _$Calendar {
  const factory Calendar({
    @Id() required String id,
    required String name,
    required CalendarType type,
    required bool isVisibleInHome,
    required String color,
    // Pour calendriers externes
    String? externalId,
    String? accessToken,
    String? refreshToken,
    DateTime? lastSyncAt,
    @Default(true) bool syncEnabled,
    // Pour calendriers internes
    String? homeId,
  }) = _Calendar;

  factory Calendar.fromJson(Map<String, Object?> json) => _$CalendarFromJson(json);
}

@Collection<Event>('users/*/calendars/*/events')
@freezed
class Event with _$Event {
  const factory Event({
    @Id() required String id,
    required String title,
    String? description,
    required DateTime startDate,
    DateTime? endDate,
    required bool isAllDay,
    required EventSource source,
    String? externalEventId,
    required bool canEdit,
    List<String>? attendeeUserIds,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Event;

  factory Event.fromJson(Map<String, Object?> json) => _$EventFromJson(json);
}
```

### Invitation
```dart
@Collection<Invitation>('invitations')
@freezed
class Invitation with _$Invitation {
  const factory Invitation({
    @Id() required String id,
    required String homeId,
    String? invitedEmail,
    String? invitedUserName,
    required String invitedBy,
    required InvitationStatus status,
    required DateTime createdAt,
    required DateTime expiresAt,
    required String invitationCode,
  }) = _Invitation;

  factory Invitation.fromJson(Map<String, Object?> json) => _$InvitationFromJson(json);
}
```

### Relationship (V2)
```dart
@Collection<Relationship>('relationships')
@freezed
class Relationship with _$Relationship {
  const factory Relationship({
    @Id() required String id,
    required String user1Id,
    required String user2Id,
    required RelationshipType type,
    String? homeId,
    required DateTime createdAt,
  }) = _Relationship;

  factory Relationship.fromJson(Map<String, Object?> json) => _$RelationshipFromJson(json);
}
```# Familio - Modèle de données Firestore

**Stack :** Flutter + Firebase (Auth, Firestore, Storage, FCM)

## Configuration

### pubspec.yaml
```yaml
dependencies:
  cloud_firestore_odm: ^1.0.0-dev.83
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1

dev_dependencies:
  build_runner: ^2.4.7
  cloud_firestore_odm_generator: ^1.0.0-dev.83
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

### Génération du code
```bash
dart pub get
dart pub run build_runner build
```

---

## Architecture Firestore

### Collections principales
```
/users/{userId}
/accounts/{accountId}
/homes/{homeId}
/invitations/{invitationId}
/relationships/{relationshipId} (Version 2)
```

### Subcollections
```
/users/{userId}/calendars/{calendarId}
/users/{userId}/calendars/{calendarId}/events/{eventId}
/homes/{homeId}/members/{userId}
/homes/{homeId}/tasks/{taskId}
```

---

## Modèles de données détaillés

### User
**Collection :** `/users/{userId}`
```json
{
  "id": "String",
  "name": "String",
  "avatar": "String?",
  "birthDate": "DateTime?",
  "accountId": "String?", // null pour enfants mineurs
  "homeIds": "List<String>",
  "relationshipIds": "List<String>?" // pour V2 - relations familiales
}
```

### Account
**Collection :** `/accounts/{accountId}`
```json
{
  "id": "String",
  "email": "String",
  "password": "String", // hashé par Firebase Auth
  "createdAt": "DateTime",
  "userId": "String" // utilisateur principal lié
}
```

### Home
**Collection :** `/homes/{homeId}`
```json
{
  "id": "String",
  "name": "String",
  "description": "String?",
  "createdAt": "DateTime",
  "ownerId": "String", // créateur du foyer
  "memberIds": "List<String>", // tous les users du foyer
  "settings": "HomeSettings"
}
```

### HomeSettings
**Embedded dans Home**
```json
{
  "allowMemberInvite": "Boolean"
}
```

### Member
**Subcollection :** `/homes/{homeId}/members/{userId}`
```json
{
  "userId": "String",
  "permissions": {
    "canCreateTasks": "Boolean",
    "canEditTasks": "Boolean",
    "canDeleteTasks": "Boolean",
    "canInviteMembers": "Boolean",
    "canViewAllCalendars": "Boolean",
    "isAdmin": "Boolean"
  },
  "joinedAt": "DateTime"
}
```

### Task
**Subcollection :** `/homes/{homeId}/tasks/{taskId}`
```json
{
  "id": "String",
  "title": "String",
  "description": "String?",
  "homeId": "String",
  "assignedToIds": "List<String>",
  "createdById": "String",
  "status": "TaskStatus", // todo, doing, done
  "dueDate": "DateTime?",
  "priority": "Priority", // low, medium, high
  "createdAt": "DateTime",
  "updatedAt": "DateTime"
}
```

### Calendar
**Subcollection :** `/users/{userId}/calendars/{calendarId}`
```json
{
  "id": "String",
  "name": "String",
  "type": "CalendarType", // internal, google, outlook, apple, other
  "isVisibleInHome": "Boolean",
  "color": "String", // pour l'affichage dans la vue home
  
  // Pour calendriers externes
  "externalId": "String?", // ID du calendrier externe
  "accessToken": "String?", // token d'accès chiffré
  "refreshToken": "String?", // pour renouveler l'accès
  "lastSyncAt": "DateTime?",
  "syncEnabled": "Boolean",
  
  // Pour calendriers internes
  "homeId": "String?" // si calendrier lié à une home spécifique
}
```

### Event
**Subcollection :** `/users/{userId}/calendars/{calendarId}/events/{eventId}`
```json
{
  "id": "String",
  "title": "String",
  "description": "String?",
  "startDate": "DateTime",
  "endDate": "DateTime?",
  "isAllDay": "Boolean",
  "source": "EventSource", // internal, external_synced
  "externalEventId": "String?", // pour les events synchronisés
  "canEdit": "Boolean", // false pour events externes
  "attendeeUserIds": "List<String>?", // autres users de la famille
  "createdAt": "DateTime",
  "updatedAt": "DateTime"
}
```

### Invitation
**Collection :** `/invitations/{invitationId}`
```json
{
  "id": "String",
  "homeId": "String",
  "invitedEmail": "String?",
  "invitedUserName": "String?", // si pas d'email (enfant)
  "invitedBy": "String", // userId
  "status": "InvitationStatus", // pending, accepted, declined, expired
  "createdAt": "DateTime",
  "expiresAt": "DateTime",
  "invitationCode": "String"
}
```

### Relationship (Version 2)
**Collection :** `/relationships/{relationshipId}`
```json
{
  "id": "String",
  "user1Id": "String",
  "user2Id": "String",
  "type": "RelationshipType", // parent, child, sibling, stepparent, etc.
  "homeId": "String?", // contexte du foyer
  "createdAt": "DateTime"
}
```

---

## Enums

```dart
enum TaskStatus { todo, doing, done }

enum Priority { low, medium, high }

enum CalendarType { internal, google, outlook, apple, other }

enum EventSource { internal, external_synced }

enum InvitationStatus { pending, accepted, declined, expired }

enum RelationshipType { // V2
  parent, child, sibling, stepparent, stepchild, 
  stepsibling, grandparent, grandchild, other
}
```

---

## Utilisation ODM

### Références collections
```dart
// Collections principales
final usersRef = UserCollectionReference();
final accountsRef = AccountCollectionReference();
final homesRef = HomeCollectionReference();
final invitationsRef = InvitationCollectionReference();

// Subcollections avec chemins
final membersRef = MemberCollectionReference('homes/homeId/members');
final tasksRef = TaskCollectionReference('homes/homeId/tasks');
final calendarsRef = CalendarCollectionReference('users/userId/calendars');
final eventsRef = EventCollectionReference('users/userId/calendars/calendarId/events');
```

### Exemples de requêtes
```dart
// Tâches d'une home spécifique
final tasksRef = TaskCollectionReference('homes/$homeId/tasks');
final tasks = await tasksRef
  .where((task) => task.status.isEqualTo(TaskStatus.todo))
  .orderBy((task) => task.dueDate)
  .get();

// Calendriers d'un user
final calendarsRef = CalendarCollectionReference('users/$userId/calendars');
final visibleCalendars = await calendarsRef
  .where((cal) => cal.isVisibleInHome.isEqualTo(true))
  .get();

// Stream des membres d'une home
final membersRef = MemberCollectionReference('homes/$homeId/members');
Stream<List<Member>> membersStream = membersRef.snapshots();

// Events d'un calendrier
final eventsRef = EventCollectionReference('users/$userId/calendars/$calendarId/events');
final todayEvents = await eventsRef
  .where((event) => event.startDate.isGreaterThanOrEqualTo(DateTime.now()))
  .get();
```

---

## Requêtes fréquentes à optimiser

### Index composés à créer
```
tasks: [homeId, status]
events: [userId, startDate]
members: [homeId, permissions.isAdmin]
invitations: [homeId, status]
```

### Exemples de requêtes
```dart
// Tâches d'une home
db.collection('homes').doc(homeId)
  .collection('tasks')
  .where('status', isEqualTo: 'todo')
  .orderBy('dueDate')

// Events visibles dans une home
db.collectionGroup('events')
  .where('attendeeUserIds', arrayContains: userId)
  .where('startDate', isGreaterThan: DateTime.now())

// Calendriers d'un user visibles en home
db.collection('users').doc(userId)
  .collection('calendars')
  .where('isVisibleInHome', isEqualTo: true)
```

---

## Security Rules (structure de base)

```javascript
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    
    // Users : lecture par soi-même et membres des mêmes homes
    match /users/{userId} {
      allow read, write: if request.auth.uid == userId 
        || isHomeMember(userId);
    }
    
    // Homes : accès pour les membres uniquement
    match /homes/{homeId} {
      allow read, write: if isHomeMember(homeId);
      
      match /tasks/{taskId} {
        allow read, write: if isHomeMember(homeId) 
          && hasMemberPermissions();
      }
      
      match /members/{userId} {
        allow read: if isHomeMember(homeId);
        allow write: if isHomeAdmin(homeId);
      }
    }
    
    // Calendriers : propriétaire + membres homes si visible
    match /users/{userId}/calendars/{calendarId} {
      allow read, write: if request.auth.uid == userId;
      allow read: if resource.data.isVisibleInHome == true 
        && sharesSomeHome(userId);
    }
  }
}
```

---

## Points d'attention technique

**Limites Firestore :** 1 MB max/document, 20 000 champs max, 500 écritures/seconde

**Calendriers externes :** Cloud Functions pour sync, tokens chiffrés, gestion erreurs API

**Offline :** Firestore offline enabled, gestion conflits, cache images