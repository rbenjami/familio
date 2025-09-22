import 'dart:ui';

import 'package:familio/familio_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/logging/logger_service.dart';
import 'di/injection.dart';

late final LoggerService logger;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Configure dependency injection
  await configureDependencies();

  // Initialize logger service
  logger = getIt<LoggerService>();

  // Set up error handling
  FlutterError.onError = (details) {
    logger.error('Flutter error', details.exception, details.stack);
  };

  // Handle platform errors
  PlatformDispatcher.instance.onError = (error, stack) {
    logger.error('Platform error', error, stack);
    return true;
  };

  runApp(const FamilioApp());
}
