import 'package:flutter/foundation.dart';
import 'package:familio/data/models/models.dart';

@immutable
sealed class HomeEvent {
  const HomeEvent();
}

class LoadUserHomes extends HomeEvent {
  final UserDocumentSnapshot user;

  const LoadUserHomes({required this.user});
}

class SelectHome extends HomeEvent {
  final HomeDocumentSnapshot home;
  final UserDocumentReference user;

  const SelectHome({required this.home, required this.user});
}

class RefreshHomes extends HomeEvent {
  final UserDocumentSnapshot user;

  const RefreshHomes({required this.user});
}
