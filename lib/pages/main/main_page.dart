import 'package:auto_route/auto_route.dart';
import 'package:familio/blocs/auth/auth_bloc.dart';
import 'package:familio/blocs/auth/auth_state.dart';
import 'package:familio/blocs/home/home_bloc.dart';
import 'package:familio/blocs/home/home_event.dart';
import 'package:familio/core/theme/app_theme.dart';
import 'package:familio/di/injection.dart';
import 'package:familio/main.dart';
import 'package:familio/router/app_router.gr.dart';
import 'package:familio/widgets/avatars/greetings.dart';
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
    } else {
      logger.warning('User is not logged in');
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
      child: Scaffold(body: _Body()),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 72,
            actionsPadding: const EdgeInsets.symmetric(horizontal: 16),
            actions: [
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: AppTheme.backgroundColor,
                  iconSize: 32,
                ),
                icon: const PhosphorIcon(PhosphorIconsDuotone.house),
                onPressed: () => context.router.navigate(const HomeRoute()),
              ),
              Spacer(),
              IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: AppTheme.backgroundColor,
                  iconSize: 32,
                ),
                icon: const PhosphorIcon(PhosphorIconsDuotone.user),
                onPressed: () => context.router.navigate(const ProfileRoute()),
              ),
            ],
          ),
          // Welcome section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return Greetings(name: state.currentUser?.name ?? '');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class _BottomNavigationBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final tabsRouter = AutoTabsRouter.of(context);
//     return BottomNavigationBar(
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       currentIndex: tabsRouter.activeIndex,
//       onTap: tabsRouter.setActiveIndex,
//       items: const [
//         BottomNavigationBarItem(
//           icon: PhosphorIcon(PhosphorIconsDuotone.house),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: PhosphorIcon(PhosphorIconsDuotone.listChecks),
//           label: 'Tasks',
//         ),
//         BottomNavigationBarItem(
//           icon: PhosphorIcon(PhosphorIconsDuotone.calendarDots),
//           label: 'Calendar',
//         ),
//         BottomNavigationBarItem(
//           icon: PhosphorIcon(PhosphorIconsDuotone.user),
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }
