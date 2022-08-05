import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_in.dart';
import 'package:netflix/screens/auth/sign_up_payment.dart';

import '../../widgets/auth/auth_field_light.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({Key? key}) : super(key: key);

  static String id = 'sign-up-password';

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signInHandler() {
    Navigator.pushNamedAndRemoveUntil(
        context, SignIn.id, (Route<dynamic> route) => false);
  }

  void continueHandler() {
    Navigator.pushNamedAndRemoveUntil(
        context, SignUpPayment.id, (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset('assets/icons/netflix-name.png', height: 100),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text('HELP', style: TextStyle(color: Colors.black))),
          TextButton(
              onPressed: signInHandler,
              child:
                  const Text('SIGN IN', style: TextStyle(color: Colors.black))),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Ready to experience\nunlimited TV shows &\nmovies?',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.w500)),
                const SizedBox(height: 20),
                Text(
                  'Create an account to learn more\nabout Netflix.',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.black),
                ),
                const SizedBox(height: 20),
                authFieldLight('Email', emailController, Colors.green),
                const SizedBox(height: 20),
                authFieldLight('Password', passwordController, Colors.blue),
                const SizedBox(height: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red[700],
                        padding: const EdgeInsets.all(20)),
                    onPressed: continueHandler,
                    child: const Center(child: Text('CONTINUE')))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
