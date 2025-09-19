// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:supabase_flutter/supabase_flutter.dart' as _i454;
import 'package:talker/talker.dart' as _i993;
import 'package:talker_flutter/talker_flutter.dart' as _i207;

import '../blocs/auth/auth_bloc.dart' as _i91;
import '../blocs/home/home_bloc.dart' as _i976;
import '../blocs/task/task_bloc.dart' as _i646;
import '../blocs/tasks/tasks_bloc.dart' as _i833;
import '../core/logging/logger_service.dart' as _i690;
import '../data/models/models.dart' as _i1052;
import '../data/services/auth_service.dart' as _i1024;
import '../data/services/home_service.dart' as _i3;
import '../data/services/invitation_service.dart' as _i1005;
import '../data/services/task_service.dart' as _i965;
import '../data/services/user_service.dart' as _i385;
import '../router/app_router.dart' as _i81;
import 'modules/env_module.dart' as _i955;
import 'modules/logger_module.dart' as _i205;
import 'modules/supabase_module.dart' as _i388;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final envModule = _$EnvModule();
  final loggerModule = _$LoggerModule();
  final supabaseModule = _$SupabaseModule();
  gh.singleton<_i81.AppRouter>(() => _i81.AppRouter());
  await gh.singletonAsync<_i955.Env>(
    () => envModule.provideEnv(),
    preResolve: true,
  );
  gh.lazySingleton<_i993.Talker>(() => loggerModule.provideTalker());
  await gh.singletonAsync<_i454.SupabaseClient>(
    () => supabaseModule.provideSupabaseClient(gh<_i955.Env>()),
    preResolve: true,
  );
  gh.singleton<_i690.LoggerService>(
    () => _i690.LoggerService(gh<_i207.Talker>())..init(),
  );
  gh.singleton<_i3.HomeService>(
    () => _i3.HomeService(gh<_i454.SupabaseClient>()),
  );
  gh.singleton<_i385.UserService>(
    () => _i385.UserService(gh<_i454.SupabaseClient>(), gh<_i993.Talker>()),
  );
  gh.singleton<_i1005.InvitationService>(
    () => _i1005.InvitationService(
      gh<_i454.SupabaseClient>(),
      gh<_i993.Talker>(),
    ),
  );
  gh.singleton<_i965.TaskService>(
    () => _i965.TaskService(gh<_i454.SupabaseClient>(), gh<_i993.Talker>()),
  );
  gh.singleton<_i976.HomeBloc>(() => _i976.HomeBloc(gh<_i3.HomeService>()));
  gh.singleton<_i1024.AuthService>(
    () => _i1024.AuthService(
      gh<_i454.SupabaseClient>(),
      gh<_i385.UserService>(),
      gh<_i3.HomeService>(),
      gh<_i1005.InvitationService>(),
    ),
  );
  gh.factoryParam<_i646.TaskBloc, _i1052.Home, _i1052.Task?>(
    (home, existingTask) => _i646.TaskBloc(
      gh<_i965.TaskService>(),
      home: home,
      existingTask: existingTask,
    ),
  );
  gh.singleton<_i833.TasksBloc>(() => _i833.TasksBloc(gh<_i965.TaskService>()));
  gh.singleton<_i91.AuthBloc>(
    () => _i91.AuthBloc(gh<_i1024.AuthService>(), gh<_i385.UserService>()),
  );
  return getIt;
}

class _$EnvModule extends _i955.EnvModule {}

class _$LoggerModule extends _i205.LoggerModule {}

class _$SupabaseModule extends _i388.SupabaseModule {}
