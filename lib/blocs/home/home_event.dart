import 'package:flutter/foundation.dart';
import 'package:familio/data/models/models.dart';

@immutable
sealed class HomeEvent {
  const HomeEvent();
}

class LoadUserHomes extends HomeEvent {
  final User user;

  const LoadUserHomes({required this.user});
}

class SelectHome extends HomeEvent {
  final Home home;
  final String userId;

  const SelectHome({required this.home, required this.userId});
}

class RefreshHomes extends HomeEvent {
  final User user;

  const RefreshHomes({required this.user});
}
