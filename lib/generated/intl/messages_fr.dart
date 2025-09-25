// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(name) => "Bon après-midi, ${name} ☀️";

  static String m1(name) => "Bonjour, ${name} 👋";

  static String m2(name) => "Bonsoir, ${name} 🌅";

  static String m3(name) => "Bonne nuit, ${name} 🌙";

  static String m4(count) => "${count} assigné(s)";

  static String m5(days) => "Dans ${days} jour(s)";

  static String m6(days) => "En retard de ${days} jour(s)";

  static String m7(count) => "${count} tâche(s) en retard";

  static String m8(completed, total) => "${completed}/${total} sous-tâches";

  static String m9(title) => "Détails de la tâche: ${title}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "appTitle": MessageLookupByLibrary.simpleMessage("Familio"),
    "auth_error_emailInUse": MessageLookupByLibrary.simpleMessage(
      "Un compte existe déjà avec cette adresse email.",
    ),
    "auth_error_invalidEmail": MessageLookupByLibrary.simpleMessage(
      "L\'adresse email n\'est pas valide.",
    ),
    "auth_error_loginFailed": MessageLookupByLibrary.simpleMessage(
      "Échec de la connexion",
    ),
    "auth_error_operationNotAllowed": MessageLookupByLibrary.simpleMessage(
      "Cette opération n\'est pas autorisée.",
    ),
    "auth_error_registrationFailed": MessageLookupByLibrary.simpleMessage(
      "Échec de l\'inscription",
    ),
    "auth_error_signOutFailed": MessageLookupByLibrary.simpleMessage(
      "Échec de la déconnexion",
    ),
    "auth_error_tooManyRequests": MessageLookupByLibrary.simpleMessage(
      "Trop de tentatives. Réessayez plus tard.",
    ),
    "auth_error_unexpected": MessageLookupByLibrary.simpleMessage(
      "Une erreur inattendue s\'est produite",
    ),
    "auth_error_unknown": MessageLookupByLibrary.simpleMessage(
      "Une erreur d\'authentification s\'est produite.",
    ),
    "auth_error_userDisabled": MessageLookupByLibrary.simpleMessage(
      "Ce compte utilisateur a été désactivé.",
    ),
    "auth_error_userNotFound": MessageLookupByLibrary.simpleMessage(
      "Aucun utilisateur trouvé avec cette adresse email.",
    ),
    "auth_error_weakPassword": MessageLookupByLibrary.simpleMessage(
      "Le mot de passe fourni est trop faible.",
    ),
    "auth_error_wrongPassword": MessageLookupByLibrary.simpleMessage(
      "Mot de passe incorrect pour cet utilisateur.",
    ),
    "auth_forgotPassword_backButton": MessageLookupByLibrary.simpleMessage(
      "Retour à la connexion",
    ),
    "auth_forgotPassword_description": MessageLookupByLibrary.simpleMessage(
      "Entrez votre adresse email pour recevoir un lien de réinitialisation de mot de passe.",
    ),
    "auth_forgotPassword_emailHint": MessageLookupByLibrary.simpleMessage(
      "Entrez votre email",
    ),
    "auth_forgotPassword_emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer un email valide",
    ),
    "auth_forgotPassword_emailLabel": MessageLookupByLibrary.simpleMessage(
      "Email",
    ),
    "auth_forgotPassword_emailRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre email",
    ),
    "auth_forgotPassword_submitButton": MessageLookupByLibrary.simpleMessage(
      "Envoyer le lien",
    ),
    "auth_forgotPassword_successMessage": MessageLookupByLibrary.simpleMessage(
      "Email de réinitialisation envoyé !",
    ),
    "auth_forgotPassword_title": MessageLookupByLibrary.simpleMessage(
      "Mot de passe oublié",
    ),
    "auth_login_emailHint": MessageLookupByLibrary.simpleMessage(
      "Entrez votre email",
    ),
    "auth_login_emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer un email valide",
    ),
    "auth_login_emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
    "auth_login_emailRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre email",
    ),
    "auth_login_forgotPasswordButton": MessageLookupByLibrary.simpleMessage(
      "Mot de passe oublié ?",
    ),
    "auth_login_noAccountText": MessageLookupByLibrary.simpleMessage(
      "Pas encore de compte ? ",
    ),
    "auth_login_passwordHint": MessageLookupByLibrary.simpleMessage(
      "Entrez votre mot de passe",
    ),
    "auth_login_passwordLabel": MessageLookupByLibrary.simpleMessage(
      "Mot de passe",
    ),
    "auth_login_passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre mot de passe",
    ),
    "auth_login_passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "Le mot de passe doit contenir au moins 6 caractères",
    ),
    "auth_login_signUpLink": MessageLookupByLibrary.simpleMessage(
      "S\'inscrire",
    ),
    "auth_login_submitButton": MessageLookupByLibrary.simpleMessage(
      "Se connecter",
    ),
    "auth_login_title": MessageLookupByLibrary.simpleMessage("Connexion"),
    "auth_register_confirmPasswordHint": MessageLookupByLibrary.simpleMessage(
      "Confirmez votre mot de passe",
    ),
    "auth_register_confirmPasswordLabel": MessageLookupByLibrary.simpleMessage(
      "Confirmer le mot de passe",
    ),
    "auth_register_confirmPasswordRequired":
        MessageLookupByLibrary.simpleMessage(
          "Veuillez confirmer votre mot de passe",
        ),
    "auth_register_createHomeOption": MessageLookupByLibrary.simpleMessage(
      "Créer un nouveau foyer",
    ),
    "auth_register_emailHint": MessageLookupByLibrary.simpleMessage(
      "Entrez votre email",
    ),
    "auth_register_emailInvalid": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer un email valide",
    ),
    "auth_register_emailLabel": MessageLookupByLibrary.simpleMessage("Email"),
    "auth_register_emailRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre email",
    ),
    "auth_register_hasAccountText": MessageLookupByLibrary.simpleMessage(
      "Déjà un compte ? ",
    ),
    "auth_register_homeNameHint": MessageLookupByLibrary.simpleMessage(
      "Entrez le nom de votre foyer",
    ),
    "auth_register_homeNameLabel": MessageLookupByLibrary.simpleMessage(
      "Nom du foyer",
    ),
    "auth_register_homeNameRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer un nom de foyer",
    ),
    "auth_register_invitationCodeHint": MessageLookupByLibrary.simpleMessage(
      "Entrez le code d\'invitation",
    ),
    "auth_register_invitationCodeInvalid": MessageLookupByLibrary.simpleMessage(
      "Code d\'invitation invalide",
    ),
    "auth_register_invitationCodeLabel": MessageLookupByLibrary.simpleMessage(
      "Code d\'invitation",
    ),
    "auth_register_invitationCodeRequired":
        MessageLookupByLibrary.simpleMessage(
          "Veuillez entrer un code d\'invitation",
        ),
    "auth_register_joinHomeOption": MessageLookupByLibrary.simpleMessage(
      "Rejoindre un foyer existant",
    ),
    "auth_register_nameHint": MessageLookupByLibrary.simpleMessage(
      "Entrez votre nom complet",
    ),
    "auth_register_nameLabel": MessageLookupByLibrary.simpleMessage(
      "Nom complet",
    ),
    "auth_register_nameRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre nom",
    ),
    "auth_register_nameTooShort": MessageLookupByLibrary.simpleMessage(
      "Le nom doit contenir au moins 2 caractères",
    ),
    "auth_register_passwordHint": MessageLookupByLibrary.simpleMessage(
      "Entrez votre mot de passe",
    ),
    "auth_register_passwordLabel": MessageLookupByLibrary.simpleMessage(
      "Mot de passe",
    ),
    "auth_register_passwordMismatch": MessageLookupByLibrary.simpleMessage(
      "Les mots de passe ne correspondent pas",
    ),
    "auth_register_passwordRequired": MessageLookupByLibrary.simpleMessage(
      "Veuillez entrer votre mot de passe",
    ),
    "auth_register_passwordTooShort": MessageLookupByLibrary.simpleMessage(
      "Le mot de passe doit contenir au moins 6 caractères",
    ),
    "auth_register_signInLink": MessageLookupByLibrary.simpleMessage(
      "Se connecter",
    ),
    "auth_register_submitButton": MessageLookupByLibrary.simpleMessage(
      "S\'inscrire",
    ),
    "auth_register_title": MessageLookupByLibrary.simpleMessage("Inscription"),
    "filters_apply_button": MessageLookupByLibrary.simpleMessage("Appliquer"),
    "filters_clear_all": MessageLookupByLibrary.simpleMessage("Tout effacer"),
    "filters_my_tasks_only": MessageLookupByLibrary.simpleMessage(
      "Mes tâches uniquement",
    ),
    "filters_priority_all": MessageLookupByLibrary.simpleMessage("Toutes"),
    "filters_priority_title": MessageLookupByLibrary.simpleMessage("Priorité"),
    "filters_status_all": MessageLookupByLibrary.simpleMessage("Tous"),
    "filters_status_title": MessageLookupByLibrary.simpleMessage("Statut"),
    "filters_title": MessageLookupByLibrary.simpleMessage("Filtres"),
    "greeting_good_afternoon": m0,
    "greeting_good_day": m1,
    "greeting_good_evening": m2,
    "greeting_good_night": m3,
    "home_welcomeSubtitle": MessageLookupByLibrary.simpleMessage(
      "Votre espace familial connecté",
    ),
    "home_welcomeTitle": MessageLookupByLibrary.simpleMessage(
      "Bienvenue sur Familio !",
    ),
    "sort_apply_button": MessageLookupByLibrary.simpleMessage("Appliquer"),
    "sort_by_assigned_to": MessageLookupByLibrary.simpleMessage("Assigné à"),
    "sort_by_created_date": MessageLookupByLibrary.simpleMessage(
      "Date de création",
    ),
    "sort_by_due_date": MessageLookupByLibrary.simpleMessage("Échéance"),
    "sort_by_priority": MessageLookupByLibrary.simpleMessage("Priorité"),
    "sort_by_status": MessageLookupByLibrary.simpleMessage("Statut"),
    "sort_by_task_title": MessageLookupByLibrary.simpleMessage("Titre"),
    "sort_by_title": MessageLookupByLibrary.simpleMessage("Trier par"),
    "sort_default_button": MessageLookupByLibrary.simpleMessage("Par défaut"),
    "sort_order_ascending": MessageLookupByLibrary.simpleMessage("Croissant"),
    "sort_order_descending": MessageLookupByLibrary.simpleMessage(
      "Décroissant",
    ),
    "sort_order_title": MessageLookupByLibrary.simpleMessage("Ordre"),
    "sort_title": MessageLookupByLibrary.simpleMessage("Tri"),
    "task_add_subtask": MessageLookupByLibrary.simpleMessage(
      "Ajouter une sous-tâche",
    ),
    "task_add_subtask_button": MessageLookupByLibrary.simpleMessage("Ajouter"),
    "task_assigned_count": m4,
    "task_description_hint": MessageLookupByLibrary.simpleMessage(
      "Description...",
    ),
    "task_due_date_hint": MessageLookupByLibrary.simpleMessage("Échéance"),
    "task_due_in_days": m5,
    "task_due_overdue_days": m6,
    "task_due_today": MessageLookupByLibrary.simpleMessage("Aujourd\'hui"),
    "task_due_tomorrow": MessageLookupByLibrary.simpleMessage("Demain"),
    "task_due_yesterday": MessageLookupByLibrary.simpleMessage("Hier"),
    "task_priority_high": MessageLookupByLibrary.simpleMessage("Élevée"),
    "task_priority_hint": MessageLookupByLibrary.simpleMessage("Priorité"),
    "task_priority_low": MessageLookupByLibrary.simpleMessage("Faible"),
    "task_priority_medium": MessageLookupByLibrary.simpleMessage("Moyenne"),
    "task_priority_urgent": MessageLookupByLibrary.simpleMessage("Urgent"),
    "task_stats_doing": MessageLookupByLibrary.simpleMessage("En cours"),
    "task_stats_done": MessageLookupByLibrary.simpleMessage("Terminé"),
    "task_stats_overdue": m7,
    "task_stats_title": MessageLookupByLibrary.simpleMessage("Statistiques"),
    "task_stats_todo": MessageLookupByLibrary.simpleMessage("À faire"),
    "task_stats_total": MessageLookupByLibrary.simpleMessage("Total"),
    "task_status_cancelled": MessageLookupByLibrary.simpleMessage("Annulé"),
    "task_status_completed": MessageLookupByLibrary.simpleMessage("Terminé"),
    "task_status_in_progress": MessageLookupByLibrary.simpleMessage("En cours"),
    "task_status_pending": MessageLookupByLibrary.simpleMessage("À faire"),
    "task_subtask_hint": MessageLookupByLibrary.simpleMessage("Sous-tâche..."),
    "task_subtask_placeholder": MessageLookupByLibrary.simpleMessage(
      "Nouvelle sous-tâche...",
    ),
    "task_subtasks_progress": m8,
    "task_title_hint": MessageLookupByLibrary.simpleMessage(
      "Titre de la tâche...",
    ),
    "tasks_create_button": MessageLookupByLibrary.simpleMessage(
      "Créer une tâche",
    ),
    "tasks_create_placeholder": MessageLookupByLibrary.simpleMessage(
      "Création de tâche à implémenter",
    ),
    "tasks_create_tooltip": MessageLookupByLibrary.simpleMessage(
      "Créer une tâche",
    ),
    "tasks_details_placeholder": m9,
    "tasks_empty_subtitle": MessageLookupByLibrary.simpleMessage(
      "Créez votre première tâche pour commencer",
    ),
    "tasks_empty_title": MessageLookupByLibrary.simpleMessage("Aucune tâche"),
    "tasks_error_loading": MessageLookupByLibrary.simpleMessage(
      "Erreur de chargement",
    ),
    "tasks_error_unexpected": MessageLookupByLibrary.simpleMessage(
      "Une erreur inattendue s\'est produite",
    ),
    "tasks_filters_tooltip": MessageLookupByLibrary.simpleMessage("Filtres"),
    "tasks_retry_button": MessageLookupByLibrary.simpleMessage("Réessayer"),
    "tasks_sort_tooltip": MessageLookupByLibrary.simpleMessage("Tri"),
    "tasks_title": MessageLookupByLibrary.simpleMessage("Tâches"),
  };
}
