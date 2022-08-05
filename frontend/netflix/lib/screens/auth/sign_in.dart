import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_up_email.dart';
import 'package:netflix/screens/management/management.dart';
import 'package:netflix/widgets/auth/auth_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  static String id = 'sign-in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void backArrowHandler() {
    Navigator.pop(context);
  }

  void signUpHandler() {
    Navigator.pushNamed(context, SignUpEmail.id);
  }

  void signInHandler() {
    Navigator.pushNamedAndRemoveUntil(
        context, Management.id, (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: backArrowHandler, icon: const Icon(Icons.arrow_back)),
        title: Image.asset('assets/icons/netflix-name.png', height: 100),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                authField('Email or phone number', emailController),
                const SizedBox(height: 20),
                authField('Password', passwordController),
                const SizedBox(height: 30),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(20),
                      side: const BorderSide(color: Colors.grey, width: 1.5)),
                  onPressed: signInHandler,
                  child: const Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text('Need help?'),
                const SizedBox(height: 20),
                TextButton(
                  onPressed: signUpHandler,
                  child: const Text('New to Netflix? Sign up now.',
                      style: TextStyle(color: Colors.white)),
                ),
                const SizedBox(height: 20),
                Text(
                  'Sign in is protected by Google reCAPTCHA to ensure you\'re not a bot. Learn more.',
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
