import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/auth_event.dart';

class ForgotPasswordForm extends StatefulWidget {
  final VoidCallback onBackToLogin;

  const ForgotPasswordForm({super.key, required this.onBackToLogin});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildTitle(),
          const SizedBox(height: 16),
          buildDescription(),
          const SizedBox(height: 32),
          buildEmailField(),
          const SizedBox(height: 32),
          buildSubmitButton(),
          const SizedBox(height: 16),
          buildBackButton(),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      context.s.auth_forgotPassword_title,
      style: context.textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget buildDescription() {
    return Text(
      context.s.auth_forgotPassword_description,
      style: context.textTheme.bodyMedium,
      textAlign: TextAlign.center,
    );
  }

  Widget buildEmailField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: context.s.auth_forgotPassword_emailLabel,
        hintText: context.s.auth_forgotPassword_emailHint,
        prefixIcon: const PhosphorIcon(PhosphorIconsDuotone.mailbox),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_forgotPassword_emailRequired;
        }
        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return context.s.auth_forgotPassword_emailInvalid;
        }
        return null;
      },
    );
  }

  Widget buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          context.read<AuthBloc>().add(
            ResetPasswordRequested(_emailController.text.trim()),
          );
        }
      },
      child: Text(context.s.auth_forgotPassword_submitButton),
    );
  }

  Widget buildBackButton() {
    return TextButton(
      onPressed: widget.onBackToLogin,
      child: Text(context.s.auth_forgotPassword_backButton),
    );
  }
}
