import 'package:flutter/material.dart';
import 'package:familio/core/utils/context_ext.dart';

class SimpleTextField extends StatelessWidget {
  final String hint;
  final String? initialValue;
  final Function(String)? onChanged;
  final bool isMultiline;
  final bool isRequired;
  final bool hasError;
  final TextInputAction? textInputAction;

  const SimpleTextField({
    super.key,
    required this.hint,
    this.initialValue,
    this.onChanged,
    this.isMultiline = false,
    this.isRequired = false,
    this.hasError = false,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // controller: TextEditingController(text: initialValue),
      initialValue: initialValue,
      onChanged: onChanged,
      maxLines: isMultiline ? null : 1,
      keyboardType: isMultiline ? TextInputType.multiline : TextInputType.text,
      textInputAction:
          textInputAction ??
          (isMultiline ? TextInputAction.newline : TextInputAction.next),
      // onSubmitted: onSubmitted != null ? (_) => onSubmitted!() : null,
      style: context.textTheme.bodyLarge,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: context.textTheme.bodyLarge?.copyWith(
          color: hasError && isRequired
              ? context.colorScheme.error
              : context.colorScheme.onSurface.withValues(alpha: 0.6),
        ),
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        focusedErrorBorder: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(
          vertical: isMultiline ? 16 : 12,
          horizontal: 0,
        ),
      ),
    );
  }
}
