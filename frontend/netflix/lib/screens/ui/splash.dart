import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static String id = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Image.asset(
        'assets/icons/netflix-name.png',
        width: width,
      )),
    );
  }
}
