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
