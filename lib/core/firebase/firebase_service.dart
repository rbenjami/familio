import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:injectable/injectable.dart';

/// Main service for managing Firebase features
@singleton
class FirebaseService {
  final FirebaseAuth _auth;
  final FirebaseAnalytics _analytics;
  final FirebaseCrashlytics _crashlytics;

  FirebaseService(this._auth, this._analytics, this._crashlytics);

  /// Gets the FirebaseAuth instance
  FirebaseAuth get auth => _auth;

  /// Gets the FirebaseAnalytics instance
  FirebaseAnalytics get analytics => _analytics;

  /// Gets the FirebaseCrashlytics instance
  FirebaseCrashlytics get crashlytics => _crashlytics;

  /// Initializes Firebase services
  @PostConstruct(preResolve: true)
  Future<void> initialize() async {
    // Enable Crashlytics collection
    await _crashlytics.setCrashlyticsCollectionEnabled(true);

    // Log app open event
    await _analytics.logAppOpen();
  }
}
