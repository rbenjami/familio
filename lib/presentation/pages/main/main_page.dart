import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: _BottomNavigationBar(),
        );
      },
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
