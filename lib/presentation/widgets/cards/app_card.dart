import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';

/// A custom card widget with consistent styling
class AppCard extends StatelessWidget {
  /// Creates an app card
  const AppCard({
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(16.0),
    this.margin = const EdgeInsets.all(8.0),
    this.elevation = 2.0,
    this.color,
    this.borderRadius = 12.0,
    this.borderColor,
    this.borderWidth = 0.0,
    super.key,
  });

  /// The content of the card
  final Widget child;

  /// Callback when the card is tapped
  final VoidCallback? onTap;

  /// Padding inside the card
  final EdgeInsetsGeometry padding;

  /// Margin around the card
  final EdgeInsetsGeometry margin;

  /// Elevation of the card
  final double elevation;

  /// Background color of the card
  final Color? color;

  /// Border radius of the card
  final double borderRadius;

  /// Border color of the card
  final Color? borderColor;

  /// Border width of the card
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    final cardColor = color ?? context.theme.cardTheme.color;

    final card = Card(
      margin: margin,
      elevation: elevation,
      color: cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
        side: borderColor != null
            ? BorderSide(color: borderColor!, width: borderWidth)
            : BorderSide.none,
      ),
      child: Padding(padding: padding, child: child),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: card,
      );
    }

    return card;
  }
}
