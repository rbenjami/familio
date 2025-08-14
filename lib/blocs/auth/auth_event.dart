import 'package:flutter/foundation.dart';
import '../../data/models/models.dart';

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
  final RegistrationType registrationType;
  final String? homeName;
  final String? invitationCode;
  
  const RegisterRequested({
    required this.email, 
    required this.password, 
    required this.name,
    required this.registrationType,
    this.avatar,
    this.birthDate,
    this.homeName,
    this.invitationCode,
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