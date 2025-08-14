import 'package:flutter/foundation.dart';

@immutable
sealed class AuthEvent {
  const AuthEvent();
}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;
  const LoginRequested(this.email, this.password);
}

class RegisterRequested extends AuthEvent {
  final String email;
  final String password;
  final String name;
  final String? avatar;
  final DateTime? birthDate;
  
  const RegisterRequested({
    required this.email, 
    required this.password, 
    required this.name,
    this.avatar,
    this.birthDate,
  });
}

class ResetPasswordRequested extends AuthEvent {
  final String email;
  const ResetPasswordRequested(this.email);
}

class SignOutRequested extends AuthEvent {
  const SignOutRequested();
}

class AuthStatusChanged extends AuthEvent {
  final bool isAuthenticated;
  const AuthStatusChanged(this.isAuthenticated);
}