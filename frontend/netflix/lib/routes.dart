import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_in.dart';
import 'package:netflix/screens/auth/sign_up_email.dart';
import 'package:netflix/screens/auth/sign_up_password.dart';
import 'package:netflix/screens/auth/sign_up_payment.dart';
import 'package:netflix/screens/home/home.dart';
import 'package:netflix/screens/ui/splash.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // General
  Splash.id: (context) => const Splash(),

  // Auth
  SignIn.id: (context) => const SignIn(),
  SignUpEmail.id: (context) => const SignUpEmail(),
  SignUpPassword.id: (context) => const SignUpPassword(),
  SignUpPayment.id: (context) => const SignUpPayment(),

  // Home
  Home.id: (context) => const Home(),
};
