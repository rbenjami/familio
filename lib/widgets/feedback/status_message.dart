import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';

/// Types of status messages
enum StatusMessageType {
  /// Success message (green)
  success,

  /// Error message (red)
  error,

  /// Warning message (yellow/orange)
  warning,

  /// Information message (blue)
  info,
}

/// A widget for displaying status messages (success, error, warning, info)
class StatusMessage extends StatelessWidget {
  /// Creates a status message
  const StatusMessage({
    required this.message,
    required this.type,
    this.onDismiss,
    this.icon,
    this.duration = const Duration(seconds: 4),
    this.isDismissible = true,
    super.key,
  });

  /// The message to display
  final String message;

  /// The type of status message
  final StatusMessageType type;

  /// Callback when the message is dismissed
  final VoidCallback? onDismiss;

  /// Optional custom icon
  final IconData? icon;

  /// Duration for auto-dismiss (if null, won't auto-dismiss)
  final Duration? duration;

  /// Whether the message can be dismissed by the user
  final bool isDismissible;

  /// Get the color based on the message type
  Color _getColor(BuildContext context) {
    switch (type) {
      case StatusMessageType.success:
        return Colors.green;
      case StatusMessageType.error:
        return context.theme.colorScheme.error;
      case StatusMessageType.warning:
        return Colors.orange;
      case StatusMessageType.info:
        return Colors.blue;
    }
  }

  /// Get the icon based on the message type
  IconData _getIcon() {
    if (icon != null) return icon!;

    switch (type) {
      case StatusMessageType.success:
        return Icons.check_circle;
      case StatusMessageType.error:
        return Icons.error;
      case StatusMessageType.warning:
        return Icons.warning;
      case StatusMessageType.info:
        return Icons.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor(context);
    final messageIcon = _getIcon();

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: color.withValues(alpha: 0.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: color.withValues(alpha: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            Icon(messageIcon, color: color),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                style: TextStyle(color: color.withValues(alpha: 0.8)),
              ),
            ),
            if (isDismissible)
              IconButton(
                icon: const Icon(Icons.close, size: 18),
                onPressed: onDismiss,
                color: color.withValues(alpha: 0.7),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
          ],
        ),
      ),
    );
  }

  /// Show a status message as a snackbar
  static void showAsSnackBar(
    BuildContext context, {
    required String message,
    required StatusMessageType type,
    Duration duration = const Duration(seconds: 4),
  }) {
    final color = _getSnackBarColor(context, type);
    final icon = _getSnackBarIcon(type);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Row(
          children: [
            Icon(icon, color: Colors.white),
            const SizedBox(width: 12),
            Expanded(child: Text(message)),
          ],
        ),
        backgroundColor: color,
        behavior: SnackBarBehavior.floating,
        duration: duration,
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
        ),
      ),
    );
  }

  /// Get the color for snackbar based on message type
  static Color _getSnackBarColor(BuildContext context, StatusMessageType type) {
    switch (type) {
      case StatusMessageType.success:
        return Colors.green;
      case StatusMessageType.error:
        return context.theme.colorScheme.error;
      case StatusMessageType.warning:
        return Colors.orange;
      case StatusMessageType.info:
        return Colors.blue;
    }
  }

  /// Get the icon for snackbar based on message type
  static IconData _getSnackBarIcon(StatusMessageType type) {
    switch (type) {
      case StatusMessageType.success:
        return Icons.check_circle;
      case StatusMessageType.error:
        return Icons.error;
      case StatusMessageType.warning:
        return Icons.warning;
      case StatusMessageType.info:
        return Icons.info;
    }
  }
}
