import 'package:auto_route/auto_route.dart';
import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/auth_state.dart';
import '../../router/app_router.gr.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  void _checkAuthStatus() {
    // Wait a bit for Firebase to initialize
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (mounted) {
        final authBloc = context.read<AuthBloc>();
        final currentState = authBloc.state;

        _navigateBasedOnAuthStatus(currentState);
      }
    });
  }

  void _navigateBasedOnAuthStatus(AuthState state) {
    switch (state.uiStatus) {
      case AuthUiStatus.authenticated:
        context.router.replaceAll([const HomeRoute()]);
        break;
      case AuthUiStatus.unauthenticated:
      case AuthUiStatus.error:
      case AuthUiStatus.initial:
        context.router.replaceAll([const AuthRoute()]);
        break;
      case AuthUiStatus.loading:
        // Stay on splash while loading
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          _navigateBasedOnAuthStatus(state);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.family_restroom,
                size: 100,
                color: context.colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                context.s.appTitle,
                style: context.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 48),
              CircularProgressIndicator(color: context.colorScheme.primary),
            ],
          ),
        ),
      ),
    );
  }
}
