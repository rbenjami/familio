// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:familio/brick/models/models.dart' as _i11;
import 'package:familio/pages/auth/auth_page.dart' as _i1;
import 'package:familio/pages/calendar/calendar_page.dart' as _i2;
import 'package:familio/pages/home/home_page.dart' as _i3;
import 'package:familio/pages/main/main_page.dart' as _i4;
import 'package:familio/pages/profile/profile_page.dart' as _i5;
import 'package:familio/pages/splash/splash_page.dart' as _i6;
import 'package:familio/pages/task_details/task_details_page.dart' as _i7;
import 'package:familio/pages/tasks/tasks_page.dart' as _i8;
import 'package:flutter/material.dart' as _i10;

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i9.PageRouteInfo<void> {
  const AuthRoute({List<_i9.PageRouteInfo>? children})
    : super(AuthRoute.name, initialChildren: children);

  static const String name = 'AuthRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthPage();
    },
  );
}

/// generated route for
/// [_i2.CalendarPage]
class CalendarRoute extends _i9.PageRouteInfo<void> {
  const CalendarRoute({List<_i9.PageRouteInfo>? children})
    : super(CalendarRoute.name, initialChildren: children);

  static const String name = 'CalendarRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.CalendarPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainPage();
    },
  );
}

/// generated route for
/// [_i5.ProfilePage]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.ProfilePage();
    },
  );
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashPage();
    },
  );
}

/// generated route for
/// [_i7.TaskDetailsPage]
class TaskDetailsRoute extends _i9.PageRouteInfo<TaskDetailsRouteArgs> {
  TaskDetailsRoute({
    _i10.Key? key,
    required _i11.Home home,
    _i11.Task? existingTask,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         TaskDetailsRoute.name,
         args: TaskDetailsRouteArgs(
           key: key,
           home: home,
           existingTask: existingTask,
         ),
         initialChildren: children,
       );

  static const String name = 'TaskDetailsRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TaskDetailsRouteArgs>();
      return _i7.TaskDetailsPage(
        key: args.key,
        home: args.home,
        existingTask: args.existingTask,
      );
    },
  );
}

class TaskDetailsRouteArgs {
  const TaskDetailsRouteArgs({this.key, required this.home, this.existingTask});

  final _i10.Key? key;

  final _i11.Home home;

  final _i11.Task? existingTask;

  @override
  String toString() {
    return 'TaskDetailsRouteArgs{key: $key, home: $home, existingTask: $existingTask}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! TaskDetailsRouteArgs) return false;
    return key == other.key &&
        home == other.home &&
        existingTask == other.existingTask;
  }

  @override
  int get hashCode => key.hashCode ^ home.hashCode ^ existingTask.hashCode;
}

/// generated route for
/// [_i8.TasksPage]
class TasksRoute extends _i9.PageRouteInfo<void> {
  const TasksRoute({List<_i9.PageRouteInfo>? children})
    : super(TasksRoute.name, initialChildren: children);

  static const String name = 'TasksRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.TasksPage();
    },
  );
}
