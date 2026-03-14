import 'package:eccomerce_app/common/helpr/navigator/app_navigator.dart';
import 'package:eccomerce_app/common/widgets/button/basic_app_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:eccomerce_app/common/widgets/button/appbar/app_bar.dart';
import 'forgot_password.dart';

class EntrePasswordPage extends StatelessWidget {
  const EntrePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _siginText(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(),
            const SizedBox(height: 20),
            _forgotPassword(context),
          ],
        ),
      ),
    );
  }

  Widget _siginText(BuildContext context) {
    return const Text(
      'Sign in',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: const InputDecoration(hintText: 'Enter Password'),
    );
  }

  Widget _continueButton() {
    return BasicAppButton(onPressed: () {}, title: 'Continue');
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(text: "Forgot password? "),
          TextSpan(
            text: 'Reset',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, ForgotPasswordPage());
              },
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
