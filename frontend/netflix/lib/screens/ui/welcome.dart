import 'package:flutter/material.dart';
import 'package:netflix/screens/auth/sign_in.dart';
import 'package:netflix/screens/auth/sign_up_email.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);
  static String id = 'welcome';

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  void getStartedHandler() {
    Navigator.pushNamed(context, SignUpEmail.id);
  }

  void signInHandler() {
    Navigator.pushNamed(context, SignIn.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset('assets/icons/netflix.png', height: 32),
        actions: [
          TextButton(
              onPressed: () {},
              child:
                  const Text('PRIVACY', style: TextStyle(color: Colors.white))),
          TextButton(
              onPressed: signInHandler,
              child:
                  const Text('SIGN IN', style: TextStyle(color: Colors.white))),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert, color: Colors.grey)),
        ],
      ),
      body: Stack(children: [
        Image.asset(
          'assets/images/banner-1.jpg',
          height: 600,
          fit: BoxFit.cover,
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.transparent,
                Colors.black,
                Colors.black,
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 300),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Unlimited entertainment, one low price',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'All of Netflix, starting at just ₹ 149.',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red[700],
                        padding: const EdgeInsets.all(20)),
                    onPressed: getStartedHandler,
                    child: const Center(child: Text('GET STARTED')))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
