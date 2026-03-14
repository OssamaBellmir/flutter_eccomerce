import 'package:eccomerce_app/common/widgets/button/basic_app_button.dart';
import 'package:eccomerce_app/common/helpr/navigator/app_navigator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'entre_password.dart';
import 'package:eccomerce_app/common/widgets/button/appbar/app_bar.dart';
import 'siginin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(hideBack: true),
      body: Padding(
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
    return const TextField(
      decoration: const InputDecoration(hintText: 'First Name'),
    );
  }

  Widget _lastNameField(BuildContext context) {
    return const TextField(
      decoration: const InputDecoration(hintText: 'Last Name'),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: const InputDecoration(hintText: 'Enter Email'),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: const InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const EntrePasswordPage());
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
                AppNavigator.push(context, const SignInPage());
              },
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
