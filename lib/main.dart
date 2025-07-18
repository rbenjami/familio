import 'dart:ui';

import 'package:familio/familio_app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'core/logging/logger_service.dart';
import 'di/injection.dart';
import 'firebase_options.dart';

late final LoggerService logger;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
