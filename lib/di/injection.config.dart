// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_analytics/firebase_analytics.dart' as _i398;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_crashlytics/firebase_crashlytics.dart' as _i141;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:talker/talker.dart' as _i993;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import '../core/firebase/firebase_service.dart' as _i423;
import '../core/logging/logger_service.dart' as _i690;
import '../data/services/auth_service.dart' as _i1024;
import '../data/services/user_service.dart' as _i385;
import '../blocs/auth/auth_bloc.dart' as _i525;
import '../guards/auth_guard.dart' as _i495;
import '../router/app_router.dart' as _i223;
import 'modules/firebase_module.dart' as _i398;
import 'modules/logger_module.dart' as _i205;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  final loggerModule = _$LoggerModule();
  gh.singleton<_i223.AppRouter>(() => _i223.AppRouter());
  gh.singleton<_i59.FirebaseAuth>(() => firebaseModule.firebaseAuth);
  gh.singleton<_i398.FirebaseAnalytics>(() => firebaseModule.firebaseAnalytics);
  gh.singleton<_i141.FirebaseCrashlytics>(
    () => firebaseModule.firebaseCrashlytics,
  );
  gh.singleton<_i385.UserService>(() => _i385.UserService());
  gh.lazySingleton<_i993.Talker>(() => loggerModule.provideTalker());
  gh.singleton<_i690.LoggerService>(
    () => _i690.LoggerService(gh<_i207.Talker>())..init(),
  );
  await gh.singletonAsync<_i423.FirebaseService>(() {
    final i = _i423.FirebaseService(
      gh<_i59.FirebaseAuth>(),
      gh<_i398.FirebaseAnalytics>(),
      gh<_i141.FirebaseCrashlytics>(),
    );
    return i.initialize().then((_) => i);
  }, preResolve: true);
  gh.singleton<_i495.AuthGuard>(
    () => _i495.AuthGuard(gh<_i423.FirebaseService>()),
  );
  gh.singleton<_i1024.AuthService>(
    () => _i1024.AuthService(
      gh<_i423.FirebaseService>(),
      gh<_i385.UserService>(),
    ),
  );
  gh.singleton<_i525.AuthBloc>(
    () => _i525.AuthBloc(gh<_i423.FirebaseService>(), gh<_i1024.AuthService>()),
  );
  return getIt;
}

class _$FirebaseModule extends _i398.FirebaseModule {}

class _$LoggerModule extends _i205.LoggerModule {}
