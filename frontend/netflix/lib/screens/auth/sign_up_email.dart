import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_up_password.dart';
import 'package:netflix/widgets/auth/auth_field_light.dart';

class SignUpEmail extends StatefulWidget {
  const SignUpEmail({Key? key}) : super(key: key);

  static String id = 'sign-up-email';

  @override
  State<SignUpEmail> createState() => _SignUpEmailState();
}

class _SignUpEmailState extends State<SignUpEmail> {
  TextEditingController emailController = TextEditingController();

  void closeHandler() {
    Navigator.pop(context);
  }

  void getStartedHandler() {
    Navigator.pushNamedAndRemoveUntil(
        context, SignUpPassword.id, (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: closeHandler,
              icon: const Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Column(
                children: [
                  Text('Ready to watch?',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                  const SizedBox(height: 20),
                  Text(
                    'Enter your email to create or sign in to your account.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: Colors.black),
                  ),
                  const SizedBox(height: 40),
                  authFieldLight('Email', emailController, Colors.blue),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red[700],
                          padding: const EdgeInsets.all(20)),
                      onPressed: getStartedHandler,
                      child: const Center(child: Text('GET STARTED')))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
