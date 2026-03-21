import 'package:eccomerce_app/common/widgets/button/basic_app_button.dart';
import 'package:eccomerce_app/common/helper/navigator/app_navigator.dart';
import 'package:eccomerce_app/data/auth/models/user_sigin_req.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'entre_password.dart';
import 'package:eccomerce_app/common/widgets/appbar/app_bar.dart';
import 'signup.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController _emailCon = TextEditingController();

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
            _emailField(context),
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
      'Sign in',
      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      // <-- Retire le 'const'
      controller: _emailCon, // <-- AJOUTE CETTE LIGNE
      decoration: const InputDecoration(hintText: 'Enter Email'),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(
          context,
          EntrePasswordPage(signinReq: UserSiginReq(email: _emailCon.text)),
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
            text: 'Create One',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                AppNavigator.push(context, SignUpPage());
              },
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
