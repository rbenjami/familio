import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:talker/talker.dart';
import 'package:talker_flutter/talker_flutter.dart';

class Formater extends LoggerFormatter {
  @override
  String fmt(LogDetails details, TalkerLoggerSettings settings) {
    final msg = details.message?.toString() ?? '';
    return details.pen.write(msg);
  }
}

/// Module for logging-related dependencies
@module
abstract class LoggerModule {
  /// Provides a base Talker instance for dependency injection
  @lazySingleton
  Talker provideTalker() {
    return Talker(
      settings: TalkerSettings(useConsoleLogs: kDebugMode, enabled: true),
      logger: TalkerLogger(formatter: Formater()),
    );
  }
}
