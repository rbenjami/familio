import 'package:auto_route/auto_route.dart';
import 'package:familio/core/utils/context_ext.dart';
import 'package:familio/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/auth_state.dart';
import '../../widgets/auth/login_form.dart';
import '../../widgets/auth/register_form.dart';
import '../../widgets/auth/forgot_password_form.dart';

enum AuthMode { login, register, forgotPassword }

@RoutePage()
class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AuthMode _currentMode = AuthMode.login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          switch (state.uiStatus) {
            case AuthUiStatus.authenticated:
              context.router.replaceAll([const HomeRoute()]);
              break;
            case AuthUiStatus.error:
              if (state.error != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.error!),
                    backgroundColor: context.colorScheme.error,
                  ),
                );
              }
              break;
            case AuthUiStatus.initial:
            case AuthUiStatus.loading:
            case AuthUiStatus.unauthenticated:
              break;
          }
        },
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo or App name
                    Icon(
                      Icons.family_restroom,
                      size: 80,
                      color: context.colorScheme.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.s.appTitle,
                      style: context.textTheme.headlineLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: context.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 32),

                    // Loading indicator
                    BlocBuilder<AuthBloc, AuthState>(
                      builder: (context, state) {
                        return state.uiStatus == AuthUiStatus.loading
                            ? const LinearProgressIndicator()
                            : const SizedBox.shrink();
                      },
                    ),
                    const SizedBox(height: 16),

                    // Auth forms
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: _buildCurrentForm(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCurrentForm() {
    switch (_currentMode) {
      case AuthMode.login:
        return LoginForm(
          key: const ValueKey('login'),
          onRegisterTap: () {
            setState(() {
              _currentMode = AuthMode.register;
            });
          },
          onForgotPasswordTap: () {
            setState(() {
              _currentMode = AuthMode.forgotPassword;
            });
          },
        );
      case AuthMode.register:
        return RegisterForm(
          key: const ValueKey('register'),
          onLoginTap: () {
            setState(() {
              _currentMode = AuthMode.login;
            });
          },
        );
      case AuthMode.forgotPassword:
        return ForgotPasswordForm(
          key: const ValueKey('forgotPassword'),
          onBackToLogin: () {
            setState(() {
              _currentMode = AuthMode.login;
            });
          },
        );
    }
  }
}
