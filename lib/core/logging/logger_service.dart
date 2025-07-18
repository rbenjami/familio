import 'package:injectable/injectable.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// Service for application logging
@singleton
class LoggerService {
  final Talker _talker;

  const LoggerService(this._talker);

  /// Initialize the logger service
  @postConstruct
  void init() {
    // Log app start
    _talker.info('🚀 Application started');
  }

  /// Get the Talker instance
  Talker get talker => _talker;

  /// Log debug message
  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _talker.debug(message, error, stackTrace);
  }

  /// Log info message
  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _talker.info(message, error, stackTrace);
  }

  /// Log warning message
  void warning(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _talker.warning(message, error, stackTrace);
  }

  /// Log error message
  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _talker.error(message, error, stackTrace);
  }

  /// Log critical error message
  void critical(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    _talker.critical(message, error, stackTrace);
  }

  /// Handle uncaught errors
  void handleUncaughtError(Object error, StackTrace stackTrace) {
    _talker.handle(error, stackTrace);
  }
}
