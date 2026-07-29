import 'package:eccomerce_app/common/widgets/button/basic_app_button.dart';
import 'package:eccomerce_app/common/helper/navigator/app_navigator.dart';
import 'package:eccomerce_app/data/auth/models/user_creation_req.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'entre_password.dart';
import 'package:eccomerce_app/common/widgets/appbar/app_bar.dart';
import 'siginin.dart';
import 'package:eccomerce_app/presentation/auth/pages/gender_and_age_selection.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final TextEditingController _firstNameCon = TextEditingController();
  final TextEditingController _lastNameCon = TextEditingController();
  final TextEditingController _emailCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(hideBack: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),

        child: Column(
          children: [
            _siginText(context),
            const SizedBox(height: 20),
            _firstNameField(context),
            const SizedBox(height: 20),
            _lastNameField(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Create Account',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _firstNameField(BuildContext context) {
    return TextField(
      // On a enlevé le 'const'
      controller: _firstNameCon, // <-- Ajout du contrôleur
      decoration: const InputDecoration(hintText: 'First Name'),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return TextField(
      // On a enlevé le 'const'
      controller: _lastNameCon, // <-- Ajout du contrôleur
      decoration: const InputDecoration(hintText: 'Last Name'),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      // On a enlevé le 'const'
      controller: _emailCon, // <-- Ajout du contrôleur
      decoration: const InputDecoration(hintText: 'Enter Email'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      // On a enlevé le 'const'
      controller: _passwordCon, // <-- Ajout du contrôleur
      obscureText:
          true, // <-- Bonus: pour cacher le mot de passe avec des points
      decoration: const InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(
          context,
          GenderAndAgeSelectionPage(
            userCreationReq: UserCreationReq(
              firstName: _firstNameCon.text,
              lastName: _lastNameCon.text,
              email: _emailCon.text,
              password: _passwordCon.text,
              gender: 0,
              age: '',
            ),
          ),
        );
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: 'Do you have an account?'),
          TextSpan(
            text: 'Sign In',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignInPage());
              },
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
