import 'package:auto_route/auto_route.dart';
import 'package:familio/blocs/auth/auth_bloc.dart';
import 'package:familio/blocs/auth/auth_event.dart';
import 'package:familio/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Profile'),
            TextButton(
              onPressed: () {
                context.read<AuthBloc>().add(const SignOutRequested());
                context.router.replace(const AuthRoute());
              },
              child: Text('Sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
