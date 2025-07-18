import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A custom text field with consistent styling
class AppTextField extends StatelessWidget {
  /// Creates an app text field
  const AppTextField({
    this.controller,
    this.labelText,
    this.hintText,
    this.errorText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onChanged,
    this.onSubmitted,
    this.validator,
    this.inputFormatters,
    this.maxLines = 1,
    this.minLines,
    this.maxLength,
    this.enabled = true,
    this.autofocus = false,
    this.readOnly = false,
    this.onTap,
    super.key,
  });

  /// Controller for the text field
  final TextEditingController? controller;

  /// Label text for the text field
  final String? labelText;

  /// Hint text for the text field
  final String? hintText;

  /// Error text for the text field
  final String? errorText;

  /// Icon to display at the start of the text field
  final IconData? prefixIcon;

  /// Icon to display at the end of the text field
  final Widget? suffixIcon;

  /// Whether to obscure the text (for passwords)
  final bool obscureText;

  /// Keyboard type for the text field
  final TextInputType? keyboardType;

  /// Text input action for the keyboard
  final TextInputAction? textInputAction;

  /// Callback when the text changes
  final ValueChanged<String>? onChanged;

  /// Callback when the text is submitted
  final ValueChanged<String>? onSubmitted;

  /// Validator function for the text field
  final FormFieldValidator<String>? validator;

  /// Input formatters for the text field
  final List<TextInputFormatter>? inputFormatters;

  /// Maximum number of lines
  final int? maxLines;

  /// Minimum number of lines
  final int? minLines;

  /// Maximum length of the text
  final int? maxLength;

  /// Whether the text field is enabled
  final bool enabled;

  /// Whether the text field should autofocus
  final bool autofocus;

  /// Whether the text field is read-only
  final bool readOnly;

  /// Callback when the text field is tapped
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        errorText: errorText,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: validator,
      inputFormatters: inputFormatters,
      maxLines: maxLines,
      minLines: minLines,
      maxLength: maxLength,
      enabled: enabled,
      autofocus: autofocus,
      readOnly: readOnly,
      onTap: onTap,
    );
  }
}
