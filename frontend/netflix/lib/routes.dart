import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_in.dart';
import 'package:netflix/screens/auth/sign_up_email.dart';
import 'package:netflix/screens/auth/sign_up_password.dart';
import 'package:netflix/screens/auth/sign_up_payment.dart';
import 'package:netflix/screens/downloads/downloads.dart';
import 'package:netflix/screens/fast_laughs/fast_laughs.dart';
import 'package:netflix/screens/games/games.dart';
import 'package:netflix/screens/home/home.dart';
import 'package:netflix/screens/management/management.dart';
import 'package:netflix/screens/new_and_hot/new_and_hot.dart';
import 'package:netflix/screens/profile/profiles_and_more.dart';
import 'package:netflix/screens/subscriptions/subscriptions.dart';
import 'package:netflix/screens/ui/splash.dart';
import 'package:netflix/screens/ui/welcome.dart';

Map<String, Widget Function(BuildContext)> routes = {
  // UI
  Splash.id: (context) => const Splash(),
  Welcome.id: (context) => const Welcome(),

  // Auth
  SignIn.id: (context) => const SignIn(),
  SignUpEmail.id: (context) => const SignUpEmail(),
  SignUpPassword.id: (context) => const SignUpPassword(),
  SignUpPayment.id: (context) => const SignUpPayment(),

  // Management
  Management.id: (context) => const Management(),

  // Home
  Home.id: (context) => const Home(),

  // Games
  Games.id: (context) => const Games(),

  // New and Hot
  NewAndHot.id: (context) => const NewAndHot(),

  // Fast Laughs
  FastLaughs.id: (context) => const FastLaughs(),

  // Subscriptions
  Subscriptions.id: (context) => const Subscriptions(),

  // Downloads
  Downloads.id: (context) => const Downloads(),

  // Profile
  ProfilesAndMore.id: (context) => const ProfilesAndMore(),
};
