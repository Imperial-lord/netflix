import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_up_password.dart';

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
    Navigator.pushNamed(context, SignUpPassword.id);
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
                  CupertinoTextField(
                    controller: emailController,
                    padding: const EdgeInsets.all(20),
                    style: const TextStyle(fontFamily: 'Netflix Sans'),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(5)),
                    cursorColor: Colors.grey,
                    placeholder: 'Email',
                    placeholderStyle: const TextStyle(
                        fontFamily: 'Netflix Sans', color: Colors.grey),
                  ),
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
