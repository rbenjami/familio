import 'package:familio/core/utils/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../../data/models/models.dart';
import '../../blocs/auth/auth_bloc.dart';
import '../../blocs/auth/auth_event.dart';

class RegisterForm extends StatefulWidget {
  final VoidCallback onLoginTap;

  const RegisterForm({super.key, required this.onLoginTap});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _homeNameController = TextEditingController();
  final _invitationCodeController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  RegistrationType _registrationType = RegistrationType.createHome;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _homeNameController.dispose();
    _invitationCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            context.s.auth_register_title,
            style: context.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          buildNameField(),
          const SizedBox(height: 16),
          buildEmailField(),
          const SizedBox(height: 16),
          buildPasswordField(),
          // const SizedBox(height: 16),
          // buildConfirmPasswordField(),
          const SizedBox(height: 32),
          buildHomeSetupSection(),

          const SizedBox(height: 32),
          buildSubmitButton(),
          const SizedBox(height: 16),
          buildLoginLink(),
        ],
      ),
    );
  }

  Widget buildNameField() {
    return TextFormField(
      controller: _nameController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.name,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: context.s.auth_register_nameLabel,
        hintText: context.s.auth_register_nameHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.user),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_register_nameRequired;
        }
        if (value.trim().length < 2) {
          return context.s.auth_register_nameTooShort;
        }
        return null;
      },
    );
  }

  Widget buildEmailField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: context.s.auth_register_emailLabel,
        hintText: context.s.auth_register_emailHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.mailbox),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_register_emailRequired;
        }
        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return context.s.auth_register_emailInvalid;
        }
        return null;
      },
    );
  }

  Widget buildPasswordField() {
    return TextFormField(
      controller: _passwordController,
      obscureText: _obscurePassword,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: context.s.auth_register_passwordLabel,
        hintText: context.s.auth_register_passwordHint,
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
          return context.s.auth_register_passwordRequired;
        }
        if (value.length < 6) {
          return context.s.auth_register_passwordTooShort;
        }
        return null;
      },
    );
  }

  Widget buildConfirmPasswordField() {
    return TextFormField(
      controller: _confirmPasswordController,
      obscureText: _obscureConfirmPassword,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        labelText: context.s.auth_register_confirmPasswordLabel,
        hintText: context.s.auth_register_confirmPasswordHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.lock),
        suffixIcon: IconButton(
          icon: PhosphorIcon(
            _obscureConfirmPassword
                ? PhosphorIconsDuotone.eye
                : PhosphorIconsDuotone.eyeSlash,
          ),
          onPressed: () {
            setState(() {
              _obscureConfirmPassword = !_obscureConfirmPassword;
            });
          },
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_register_confirmPasswordRequired;
        }
        if (value != _passwordController.text) {
          return context.s.auth_register_passwordMismatch;
        }
        return null;
      },
    );
  }

  Widget buildHomeSetupSection() {
    return Column(
      children: [
        buildRegistrationTypeSelector(),
        const SizedBox(height: 16),
        switch (_registrationType) {
          RegistrationType.createHome => buildHomeNameField(),
          RegistrationType.joinHome => buildInvitationCodeField(),
        },
      ],
    );
  }

  Widget buildRegistrationTypeSelector() {
    return SegmentedButton<RegistrationType>(
      selectedIcon: const PhosphorIcon(PhosphorIconsDuotone.checkCircle),
      segments: [
        ButtonSegment<RegistrationType>(
          value: RegistrationType.createHome,
          label: Text(context.s.auth_register_createHomeOption),
          icon: const PhosphorIcon(PhosphorIconsDuotone.house),
        ),
        ButtonSegment<RegistrationType>(
          value: RegistrationType.joinHome,
          label: Text(context.s.auth_register_joinHomeOption),
          icon: const PhosphorIcon(PhosphorIconsDuotone.code),
        ),
      ],
      selected: {_registrationType},
      onSelectionChanged: (Set<RegistrationType> selection) {
        setState(() {
          _registrationType = selection.first;
        });
      },
    );
  }

  Widget buildHomeNameField() {
    return TextFormField(
      controller: _homeNameController,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        labelText: context.s.auth_register_homeNameLabel,
        hintText: context.s.auth_register_homeNameHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.house),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_register_homeNameRequired;
        }
        return null;
      },
    );
  }

  Widget buildInvitationCodeField() {
    return TextFormField(
      controller: _invitationCodeController,
      textInputAction: TextInputAction.done,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        labelText: context.s.auth_register_invitationCodeLabel,
        hintText: context.s.auth_register_invitationCodeHint,
        prefixIcon: PhosphorIcon(PhosphorIconsDuotone.code),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return context.s.auth_register_invitationCodeRequired;
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
            RegisterRequested(
              email: _emailController.text.trim(),
              password: _passwordController.text,
              name: _nameController.text.trim(),
              registrationType: _registrationType,
              homeName: _registrationType == RegistrationType.createHome
                  ? _homeNameController.text.trim()
                  : null,
              invitationCode: _registrationType == RegistrationType.joinHome
                  ? _invitationCodeController.text.trim()
                  : null,
            ),
          );
        }
      },
      child: Text(context.s.auth_register_submitButton),
    );
  }

  Widget buildLoginLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(context.s.auth_register_hasAccountText),
        TextButton(
          onPressed: widget.onLoginTap,
          child: Text(context.s.auth_register_signInLink),
        ),
      ],
    );
  }
}
