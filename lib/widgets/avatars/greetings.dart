import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';

class Greetings extends StatelessWidget {
  final String name;

  const Greetings({super.key, required this.name});

  String _getGreeting(BuildContext context) {
    final hour = DateTime.now().hour;

    if (hour >= 5 && hour < 12) {
      return context.s.greeting_good_day(name);
    } else if (hour >= 12 && hour < 17) {
      return context.s.greeting_good_afternoon(name);
    } else if (hour >= 17 && hour < 21) {
      return context.s.greeting_good_evening(name);
    } else {
      return context.s.greeting_good_night(name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _getGreeting(context),
      style: context.textTheme.headlineLarge?.copyWith(
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
