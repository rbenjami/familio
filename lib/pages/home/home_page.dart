import 'package:auto_route/auto_route.dart';
import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _Body());
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PhosphorIcon(PhosphorIconsDuotone.house, size: 64),
          SizedBox(height: 16),
          Text(
            context.s.home_welcomeTitle,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(context.s.home_welcomeSubtitle, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
