import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:netflix/firebase_options.dart';
import 'package:netflix/routes.dart';
import 'package:netflix/screens/ui/welcome.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Netflix Sans', brightness: Brightness.dark),
      home: const Welcome(),
      routes: routes,
    );
  }
}
