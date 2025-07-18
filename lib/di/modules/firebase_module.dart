import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

/// Dependency injection module for Firebase services
@module
abstract class FirebaseModule {
  /// Provides the FirebaseAuth instance
  @singleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  /// Provides the FirebaseAnalytics instance
  @singleton
  FirebaseAnalytics get firebaseAnalytics => FirebaseAnalytics.instance;

  /// Provides the FirebaseCrashlytics instance
  @singleton
  FirebaseCrashlytics get firebaseCrashlytics => FirebaseCrashlytics.instance;
}
