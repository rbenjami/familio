// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) => "${count} assigned";

  static String m1(days) => "In ${days} day(s)";

  static String m2(days) => "${days} day(s) overdue";

  static String m3(count) => "${count} overdue task(s)";

  static String m4(completed, total) => "${completed}/${total} subtasks";

  static String m5(title) => "Task details: ${title}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage("Familio"),
    "auth_error_emailInUse": MessageLookupByLibrary.simpleMessage(
      "The account already exists for that email.",
    ),
    "auth_error_invalidEmail": MessageLookupByLibrary.simpleMessage(
      "The email address is not valid.",
    ),
    "auth_error_loginFailed": MessageLookupByLibrary.simpleMessage(
      "Login failed",
    ),
    "auth_error_operationNotAllowed": MessageLookupByLibrary.simpleMessage(
      "This operation is not allowed.",
    ),
    "auth_error_registrationFailed": MessageLookupByLibrary.simpleMessage(
      "Registration failed",
    ),
    "auth_error_signOutFailed": MessageLookupByLibrary.simpleMessage(
      "Sign out failed",
    ),
    "auth_error_tooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Too many requests. Try again later.",
    ),
    "auth_error_unexpected": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred",
    ),
    "auth_error_unknown": MessageLookupByLibrary.simpleMessage(
      "An authentication error occurred.",
    ),
    "auth_error_userDisabled": MessageLookupByLibrary.simpleMessage(
      "This user account has been disabled.",
    ),
    "auth_error_userNotFound": MessageLookupByLibrary.simpleMessage(
      "No user found for that email.",
    ),
    "auth_error_weakPassword": MessageLookupByLibrary.simpleMessage(
      "The password provided is too weak.",
    ),
    "auth_error_wrongPassword": MessageLookupByLibrary.simpleMessage(
      "Wrong password provided for that user.",
    ),
    "auth_forgotPassword_backButton": MessageLookupByLibrary.simpleMessage(
      "Back to login",
    ),
    "auth_forgotPassword_description": MessageLookupByLibrary.simpleMessage(
      "Enter your email address to receive a password reset link.",
    ),
    "auth_forgotPassword_emailHint": MessageLookupByLibrary.simpleMessage(
      "Enter your email",
    ),
    "auth_forgotPassword_emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email",
    ),
    "auth_forgotPassword_emailLabel": MessageLookupByLibrary.simpleMessage(
      "Email",
    ),
    "auth_forgotPassword_emailRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your email",
    ),
    "auth_forgotPassword_submitButton": MessageLookupByLibrary.simpleMessage(
      "Send link",
    ),
    "auth_forgotPassword_successMessage": MessageLookupByLibrary.simpleMessage(
      "Password reset email sent!",
    ),
    "auth_forgotPassword_title": MessageLookupByLibrary.simpleMessage(
      "Forgot Password",
    ),
    "auth_login_emailHint": MessageLookupByLibrary.simpleMessage(
      "Enter your email",
    ),
    "auth_login_emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email",
    ),
    "auth_login_emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
    "auth_login_emailRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your email",
    ),
    "auth_login_forgotPasswordButton": MessageLookupByLibrary.simpleMessage(
      "Forgot password?",
    ),
    "auth_login_noAccountText": MessageLookupByLibrary.simpleMessage(
      "Don\'t have an account? ",
    ),
    "auth_login_passwordHint": MessageLookupByLibrary.simpleMessage(
      "Enter your password",
    ),
    "auth_login_passwordLabel": MessageLookupByLibrary.simpleMessage(
      "Password",
    ),
    "auth_login_passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your password",
    ),
    "auth_login_passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 6 characters",
    ),
    "auth_login_signUpLink": MessageLookupByLibrary.simpleMessage("Sign up"),
    "auth_login_submitButton": MessageLookupByLibrary.simpleMessage("Sign in"),
    "auth_login_title": MessageLookupByLibrary.simpleMessage("Login"),
    "auth_register_confirmPasswordHint": MessageLookupByLibrary.simpleMessage(
      "Confirm your password",
    ),
    "auth_register_confirmPasswordLabel": MessageLookupByLibrary.simpleMessage(
      "Confirm password",
    ),
    "auth_register_confirmPasswordRequired":
        MessageLookupByLibrary.simpleMessage("Please confirm your password"),
    "auth_register_createHomeOption": MessageLookupByLibrary.simpleMessage(
      "Create a new home",
    ),
    "auth_register_emailHint": MessageLookupByLibrary.simpleMessage(
      "Enter your email",
    ),
    "auth_register_emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Please enter a valid email",
    ),
    "auth_register_emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
    "auth_register_emailRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your email",
    ),
    "auth_register_hasAccountText": MessageLookupByLibrary.simpleMessage(
      "Already have an account? ",
    ),
    "auth_register_homeNameHint": MessageLookupByLibrary.simpleMessage(
      "Enter your home name",
    ),
    "auth_register_homeNameLabel": MessageLookupByLibrary.simpleMessage(
      "Home name",
    ),
    "auth_register_homeNameRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter a home name",
    ),
    "auth_register_invitationCodeHint": MessageLookupByLibrary.simpleMessage(
      "Enter the invitation code",
    ),
    "auth_register_invitationCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Invalid invitation code",
    ),
    "auth_register_invitationCodeLabel": MessageLookupByLibrary.simpleMessage(
      "Invitation code",
    ),
    "auth_register_invitationCodeRequired":
        MessageLookupByLibrary.simpleMessage("Please enter an invitation code"),
    "auth_register_joinHomeOption": MessageLookupByLibrary.simpleMessage(
      "Join an existing home",
    ),
    "auth_register_nameHint": MessageLookupByLibrary.simpleMessage(
      "Enter your full name",
    ),
    "auth_register_nameLabel": MessageLookupByLibrary.simpleMessage(
      "Full name",
    ),
    "auth_register_nameRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your name",
    ),
    "auth_register_nameTooShort": MessageLookupByLibrary.simpleMessage(
      "Name must be at least 2 characters",
    ),
    "auth_register_passwordHint": MessageLookupByLibrary.simpleMessage(
      "Enter your password",
    ),
    "auth_register_passwordLabel": MessageLookupByLibrary.simpleMessage(
      "Password",
    ),
    "auth_register_passwordMismatch": MessageLookupByLibrary.simpleMessage(
      "Passwords do not match",
    ),
    "auth_register_passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Please enter your password",
    ),
    "auth_register_passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "Password must be at least 6 characters",
    ),
    "auth_register_signInLink": MessageLookupByLibrary.simpleMessage("Sign in"),
    "auth_register_submitButton": MessageLookupByLibrary.simpleMessage(
      "Sign up",
    ),
    "auth_register_title": MessageLookupByLibrary.simpleMessage("Sign Up"),
    "filters_apply_button": MessageLookupByLibrary.simpleMessage("Apply"),
    "filters_clear_all": MessageLookupByLibrary.simpleMessage("Clear all"),
    "filters_my_tasks_only": MessageLookupByLibrary.simpleMessage(
      "My tasks only",
    ),
    "filters_priority_all": MessageLookupByLibrary.simpleMessage("All"),
    "filters_priority_title": MessageLookupByLibrary.simpleMessage("Priority"),
    "filters_status_all": MessageLookupByLibrary.simpleMessage("All"),
    "filters_status_title": MessageLookupByLibrary.simpleMessage("Status"),
    "filters_title": MessageLookupByLibrary.simpleMessage("Filters"),
    "filters_type_all": MessageLookupByLibrary.simpleMessage("All"),
    "filters_type_checklist": MessageLookupByLibrary.simpleMessage("Checklist"),
    "filters_type_scheduled": MessageLookupByLibrary.simpleMessage("Scheduled"),
    "filters_type_simple": MessageLookupByLibrary.simpleMessage("Simple"),
    "filters_type_title": MessageLookupByLibrary.simpleMessage("Type"),
    "home_welcomeSubtitle": MessageLookupByLibrary.simpleMessage(
      "Your connected family space",
    ),
    "home_welcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Welcome to Familio!",
    ),
    "sort_apply_button": MessageLookupByLibrary.simpleMessage("Apply"),
    "sort_by_assigned_to": MessageLookupByLibrary.simpleMessage("Assigned to"),
    "sort_by_created_date": MessageLookupByLibrary.simpleMessage(
      "Created date",
    ),
    "sort_by_due_date": MessageLookupByLibrary.simpleMessage("Due date"),
    "sort_by_priority": MessageLookupByLibrary.simpleMessage("Priority"),
    "sort_by_status": MessageLookupByLibrary.simpleMessage("Status"),
    "sort_by_task_title": MessageLookupByLibrary.simpleMessage("Title"),
    "sort_by_title": MessageLookupByLibrary.simpleMessage("Sort by"),
    "sort_default_button": MessageLookupByLibrary.simpleMessage("Default"),
    "sort_order_ascending": MessageLookupByLibrary.simpleMessage("Ascending"),
    "sort_order_descending": MessageLookupByLibrary.simpleMessage("Descending"),
    "sort_order_title": MessageLookupByLibrary.simpleMessage("Order"),
    "sort_title": MessageLookupByLibrary.simpleMessage("Sort"),
    "task_add_subtask": MessageLookupByLibrary.simpleMessage("Add subtask"),
    "task_add_subtask_button": MessageLookupByLibrary.simpleMessage("Add"),
    "task_assigned_count": m0,
    "task_description_hint": MessageLookupByLibrary.simpleMessage(
      "Description...",
    ),
    "task_due_date_hint": MessageLookupByLibrary.simpleMessage("Due date"),
    "task_due_in_days": m1,
    "task_due_overdue_days": m2,
    "task_due_today": MessageLookupByLibrary.simpleMessage("Today"),
    "task_due_tomorrow": MessageLookupByLibrary.simpleMessage("Tomorrow"),
    "task_due_yesterday": MessageLookupByLibrary.simpleMessage("Yesterday"),
    "task_priority_high": MessageLookupByLibrary.simpleMessage("High"),
    "task_priority_hint": MessageLookupByLibrary.simpleMessage("Priority"),
    "task_priority_low": MessageLookupByLibrary.simpleMessage("Low"),
    "task_priority_medium": MessageLookupByLibrary.simpleMessage("Medium"),
    "task_stats_doing": MessageLookupByLibrary.simpleMessage("In progress"),
    "task_stats_done": MessageLookupByLibrary.simpleMessage("Done"),
    "task_stats_overdue": m3,
    "task_stats_title": MessageLookupByLibrary.simpleMessage("Statistics"),
    "task_stats_todo": MessageLookupByLibrary.simpleMessage("To do"),
    "task_stats_total": MessageLookupByLibrary.simpleMessage("Total"),
    "task_status_doing": MessageLookupByLibrary.simpleMessage("In progress"),
    "task_status_done": MessageLookupByLibrary.simpleMessage("Done"),
    "task_status_todo": MessageLookupByLibrary.simpleMessage("To do"),
    "task_subtask_hint": MessageLookupByLibrary.simpleMessage("Subtask..."),
    "task_subtask_placeholder": MessageLookupByLibrary.simpleMessage(
      "New subtask...",
    ),
    "task_subtasks_progress": m4,
    "task_title_hint": MessageLookupByLibrary.simpleMessage("Task title..."),
    "task_type_checklist": MessageLookupByLibrary.simpleMessage("Checklist"),
    "task_type_scheduled": MessageLookupByLibrary.simpleMessage(
      "Scheduled task",
    ),
    "task_type_simple": MessageLookupByLibrary.simpleMessage("Simple task"),
    "tasks_create_button": MessageLookupByLibrary.simpleMessage("Create task"),
    "tasks_create_placeholder": MessageLookupByLibrary.simpleMessage(
      "Task creation to be implemented",
    ),
    "tasks_create_tooltip": MessageLookupByLibrary.simpleMessage("Create task"),
    "tasks_details_placeholder": m5,
    "tasks_empty_subtitle": MessageLookupByLibrary.simpleMessage(
      "Create your first task to get started",
    ),
    "tasks_empty_title": MessageLookupByLibrary.simpleMessage("No tasks"),
    "tasks_error_loading": MessageLookupByLibrary.simpleMessage(
      "Loading error",
    ),
    "tasks_error_unexpected": MessageLookupByLibrary.simpleMessage(
      "An unexpected error occurred",
    ),
    "tasks_filters_tooltip": MessageLookupByLibrary.simpleMessage("Filters"),
    "tasks_retry_button": MessageLookupByLibrary.simpleMessage("Retry"),
    "tasks_sort_tooltip": MessageLookupByLibrary.simpleMessage("Sort"),
    "tasks_title": MessageLookupByLibrary.simpleMessage("Tasks"),
  };
}
