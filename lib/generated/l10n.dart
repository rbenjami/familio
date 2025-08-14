// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Familio`
  String get appTitle {
    return Intl.message('Familio', name: 'appTitle', desc: '', args: []);
  }

  /// `Email`
  String get auth_login_emailLabel {
    return Intl.message(
      'Email',
      name: 'auth_login_emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get auth_login_emailHint {
    return Intl.message(
      'Enter your email',
      name: 'auth_login_emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get auth_login_passwordLabel {
    return Intl.message(
      'Password',
      name: 'auth_login_passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get auth_login_passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'auth_login_passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get auth_login_forgotPasswordButton {
    return Intl.message(
      'Forgot password?',
      name: 'auth_login_forgotPasswordButton',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get auth_login_submitButton {
    return Intl.message(
      'Sign in',
      name: 'auth_login_submitButton',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get auth_login_noAccountText {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'auth_login_noAccountText',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get auth_login_signUpLink {
    return Intl.message(
      'Sign up',
      name: 'auth_login_signUpLink',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get auth_register_emailLabel {
    return Intl.message(
      'Email',
      name: 'auth_register_emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get auth_register_emailHint {
    return Intl.message(
      'Enter your email',
      name: 'auth_register_emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get auth_register_passwordLabel {
    return Intl.message(
      'Password',
      name: 'auth_register_passwordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get auth_register_passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'auth_register_passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get auth_register_confirmPasswordLabel {
    return Intl.message(
      'Confirm password',
      name: 'auth_register_confirmPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get auth_register_confirmPasswordHint {
    return Intl.message(
      'Confirm your password',
      name: 'auth_register_confirmPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get auth_register_submitButton {
    return Intl.message(
      'Sign up',
      name: 'auth_register_submitButton',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get auth_register_hasAccountText {
    return Intl.message(
      'Already have an account? ',
      name: 'auth_register_hasAccountText',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get auth_register_signInLink {
    return Intl.message(
      'Sign in',
      name: 'auth_register_signInLink',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get auth_forgotPassword_emailLabel {
    return Intl.message(
      'Email',
      name: 'auth_forgotPassword_emailLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get auth_forgotPassword_emailHint {
    return Intl.message(
      'Enter your email',
      name: 'auth_forgotPassword_emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Send link`
  String get auth_forgotPassword_submitButton {
    return Intl.message(
      'Send link',
      name: 'auth_forgotPassword_submitButton',
      desc: '',
      args: [],
    );
  }

  /// `Back to login`
  String get auth_forgotPassword_backButton {
    return Intl.message(
      'Back to login',
      name: 'auth_forgotPassword_backButton',
      desc: '',
      args: [],
    );
  }

  /// `Password reset email sent!`
  String get auth_forgotPassword_successMessage {
    return Intl.message(
      'Password reset email sent!',
      name: 'auth_forgotPassword_successMessage',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Familio!`
  String get home_welcomeTitle {
    return Intl.message(
      'Welcome to Familio!',
      name: 'home_welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your connected family space`
  String get home_welcomeSubtitle {
    return Intl.message(
      'Your connected family space',
      name: 'home_welcomeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get auth_login_title {
    return Intl.message('Login', name: 'auth_login_title', desc: '', args: []);
  }

  /// `Please enter your email`
  String get auth_login_emailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'auth_login_emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get auth_login_emailInvalid {
    return Intl.message(
      'Please enter a valid email',
      name: 'auth_login_emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get auth_login_passwordRequired {
    return Intl.message(
      'Please enter your password',
      name: 'auth_login_passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get auth_login_passwordTooShort {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'auth_login_passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get auth_register_title {
    return Intl.message(
      'Sign Up',
      name: 'auth_register_title',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get auth_register_nameLabel {
    return Intl.message(
      'Full name',
      name: 'auth_register_nameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name`
  String get auth_register_nameHint {
    return Intl.message(
      'Enter your full name',
      name: 'auth_register_nameHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get auth_register_nameRequired {
    return Intl.message(
      'Please enter your name',
      name: 'auth_register_nameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Name must be at least 2 characters`
  String get auth_register_nameTooShort {
    return Intl.message(
      'Name must be at least 2 characters',
      name: 'auth_register_nameTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get auth_register_emailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'auth_register_emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get auth_register_emailInvalid {
    return Intl.message(
      'Please enter a valid email',
      name: 'auth_register_emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get auth_register_passwordRequired {
    return Intl.message(
      'Please enter your password',
      name: 'auth_register_passwordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get auth_register_passwordTooShort {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'auth_register_passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get auth_register_confirmPasswordRequired {
    return Intl.message(
      'Please confirm your password',
      name: 'auth_register_confirmPasswordRequired',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get auth_register_passwordMismatch {
    return Intl.message(
      'Passwords do not match',
      name: 'auth_register_passwordMismatch',
      desc: '',
      args: [],
    );
  }

  /// `Create a new home`
  String get auth_register_createHomeOption {
    return Intl.message(
      'Create a new home',
      name: 'auth_register_createHomeOption',
      desc: '',
      args: [],
    );
  }

  /// `Join an existing home`
  String get auth_register_joinHomeOption {
    return Intl.message(
      'Join an existing home',
      name: 'auth_register_joinHomeOption',
      desc: '',
      args: [],
    );
  }

  /// `Home name`
  String get auth_register_homeNameLabel {
    return Intl.message(
      'Home name',
      name: 'auth_register_homeNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter your home name`
  String get auth_register_homeNameHint {
    return Intl.message(
      'Enter your home name',
      name: 'auth_register_homeNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a home name`
  String get auth_register_homeNameRequired {
    return Intl.message(
      'Please enter a home name',
      name: 'auth_register_homeNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invitation code`
  String get auth_register_invitationCodeLabel {
    return Intl.message(
      'Invitation code',
      name: 'auth_register_invitationCodeLabel',
      desc: '',
      args: [],
    );
  }

  /// `Enter the invitation code`
  String get auth_register_invitationCodeHint {
    return Intl.message(
      'Enter the invitation code',
      name: 'auth_register_invitationCodeHint',
      desc: '',
      args: [],
    );
  }

  /// `Please enter an invitation code`
  String get auth_register_invitationCodeRequired {
    return Intl.message(
      'Please enter an invitation code',
      name: 'auth_register_invitationCodeRequired',
      desc: '',
      args: [],
    );
  }

  /// `Invalid invitation code`
  String get auth_register_invitationCodeInvalid {
    return Intl.message(
      'Invalid invitation code',
      name: 'auth_register_invitationCodeInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get auth_forgotPassword_title {
    return Intl.message(
      'Forgot Password',
      name: 'auth_forgotPassword_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address to receive a password reset link.`
  String get auth_forgotPassword_description {
    return Intl.message(
      'Enter your email address to receive a password reset link.',
      name: 'auth_forgotPassword_description',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get auth_forgotPassword_emailRequired {
    return Intl.message(
      'Please enter your email',
      name: 'auth_forgotPassword_emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get auth_forgotPassword_emailInvalid {
    return Intl.message(
      'Please enter a valid email',
      name: 'auth_forgotPassword_emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `The password provided is too weak.`
  String get auth_error_weakPassword {
    return Intl.message(
      'The password provided is too weak.',
      name: 'auth_error_weakPassword',
      desc: '',
      args: [],
    );
  }

  /// `The account already exists for that email.`
  String get auth_error_emailInUse {
    return Intl.message(
      'The account already exists for that email.',
      name: 'auth_error_emailInUse',
      desc: '',
      args: [],
    );
  }

  /// `No user found for that email.`
  String get auth_error_userNotFound {
    return Intl.message(
      'No user found for that email.',
      name: 'auth_error_userNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Wrong password provided for that user.`
  String get auth_error_wrongPassword {
    return Intl.message(
      'Wrong password provided for that user.',
      name: 'auth_error_wrongPassword',
      desc: '',
      args: [],
    );
  }

  /// `The email address is not valid.`
  String get auth_error_invalidEmail {
    return Intl.message(
      'The email address is not valid.',
      name: 'auth_error_invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `This user account has been disabled.`
  String get auth_error_userDisabled {
    return Intl.message(
      'This user account has been disabled.',
      name: 'auth_error_userDisabled',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests. Try again later.`
  String get auth_error_tooManyRequests {
    return Intl.message(
      'Too many requests. Try again later.',
      name: 'auth_error_tooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `This operation is not allowed.`
  String get auth_error_operationNotAllowed {
    return Intl.message(
      'This operation is not allowed.',
      name: 'auth_error_operationNotAllowed',
      desc: '',
      args: [],
    );
  }

  /// `An authentication error occurred.`
  String get auth_error_unknown {
    return Intl.message(
      'An authentication error occurred.',
      name: 'auth_error_unknown',
      desc: '',
      args: [],
    );
  }

  /// `Login failed`
  String get auth_error_loginFailed {
    return Intl.message(
      'Login failed',
      name: 'auth_error_loginFailed',
      desc: '',
      args: [],
    );
  }

  /// `Registration failed`
  String get auth_error_registrationFailed {
    return Intl.message(
      'Registration failed',
      name: 'auth_error_registrationFailed',
      desc: '',
      args: [],
    );
  }

  /// `Sign out failed`
  String get auth_error_signOutFailed {
    return Intl.message(
      'Sign out failed',
      name: 'auth_error_signOutFailed',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected error occurred`
  String get auth_error_unexpected {
    return Intl.message(
      'An unexpected error occurred',
      name: 'auth_error_unexpected',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
