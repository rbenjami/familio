import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/auth_event.dart';

class LoginForm extends StatefulWidget {
  final VoidCallback onRegisterTap;
  final VoidCallback onForgotPasswordTap;

  const LoginForm({
    super.key,
    required this.onRegisterTap,
    required this.onForgotPasswordTap,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
          const SizedBox(height: 32),
          buildEmailField(),
          const SizedBox(height: 16),
          buildPasswordField(),
          const SizedBox(height: 8),
          buildForgotPasswordLink(),
          const SizedBox(height: 24),
          buildSubmitButton(),
          const SizedBox(height: 16),
          buildRegisterLink(),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      context.s.auth_login_title,
      style: context.textTheme.headlineMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget buildEmailField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: context.s.auth_login_emailLabel,
        hintText: context.s.auth_login_emailHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.mailbox),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_login_emailRequired;
        }
        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return context.s.auth_login_emailInvalid;
        }
        return null;
      },
    );
  }

  Widget buildPasswordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: _obscurePassword,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: context.s.auth_login_passwordLabel,
        hintText: context.s.auth_login_passwordHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.lock),
        suffixIcon: IconButton(
          icon: PhosphorIcon(
            _obscurePassword
                ? PhosphorIconsDuotone.eye
                : PhosphorIconsDuotone.eyeSlash,
          ),
          onPressed: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_login_passwordRequired;
        }
        if (value.length < 6) {
          return context.s.auth_login_passwordTooShort;
        }
        return null;
      },
    );
  }

  Widget buildForgotPasswordLink() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: widget.onForgotPasswordTap,
        child: Text(context.s.auth_login_forgotPasswordButton),
      ),
    );
  }

  Widget buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          context.read<AuthBloc>().add(
            LoginRequested(
              _emailController.text.trim(),
              _passwordController.text,
            ),
          );
        }
      },
      child: Text(context.s.auth_login_submitButton),
    );
  }

  Widget buildRegisterLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.s.auth_login_noAccountText),
        TextButton(
          onPressed: widget.onRegisterTap,
          child: Text(context.s.auth_login_signUpLink),
        ),
      ],
    );
  }
}
