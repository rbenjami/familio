import 'package:auto_route/auto_route.dart';
import 'package:familio/blocs/auth/auth_bloc.dart';
import 'package:familio/blocs/auth/auth_state.dart';
import 'package:familio/blocs/home/home_bloc.dart';
import 'package:familio/blocs/home/home_event.dart';
import 'package:familio/di/injection.dart';
import 'package:familio/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  void _loadUserHomes() {
    final authBloc = getIt<AuthBloc>();
    final homeBloc = getIt<HomeBloc>();
    if (authBloc.state.currentUser != null) {
      homeBloc.add(LoadUserHomes(user: authBloc.state.currentUser!));
    }
  }

  @override
  Widget build(BuildContext context) {
    _loadUserHomes();

    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.currentUser != current.currentUser,
      listener: (context, state) {
        if (state.currentUser != null) {
          logger.info('Current user ${state.currentUser}');
          _loadUserHomes();
        }
      },
      child: AutoTabsRouter(
        builder: (context, child) {
          return Scaffold(
            body: child,
            bottomNavigationBar: _BottomNavigationBar(),
          );
        },
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      items: const [
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsDuotone.house),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsDuotone.listChecks),
          label: 'Tasks',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsDuotone.calendarDots),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: PhosphorIcon(PhosphorIconsDuotone.user),
          label: 'Profile',
        ),
      ],
    );
  }
}
