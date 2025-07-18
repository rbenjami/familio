import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// Module for logging-related dependencies
@module
abstract class LoggerModule {
  /// Provides a base Talker instance for dependency injection
  @lazySingleton
  Talker provideTalker() {
    return Talker(
      settings: TalkerSettings(
        useConsoleLogs: kDebugMode,
        enabled: true,
      ),
    );
  }
}
