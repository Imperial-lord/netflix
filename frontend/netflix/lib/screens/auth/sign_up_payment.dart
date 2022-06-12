import 'package:flutter/material.dart';
import 'package:netflix/models/plan.dart';
import 'package:netflix/screens/home/home.dart';

class SignUpPayment extends StatefulWidget {
  const SignUpPayment({Key? key}) : super(key: key);

  static String id = 'sign-up-payment';

  @override
  State<SignUpPayment> createState() => _SignUpPaymentState();
}

class _SignUpPaymentState extends State<SignUpPayment> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  List<Plan> plans = [
    Plan('Mobile', 149, false),
    Plan('Basic', 199, true),
    Plan('Standard', 499, false),
    Plan('Premium', 649, false),
  ];

  void signOutHandler() {}
  void startWatchingHandler() {
    Navigator.pushNamed(context, Home.id);
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
              onPressed: () {},
              child: const Text('SIGN OUT',
                  style: TextStyle(color: Colors.black))),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Choose the plan that\'s right for you.',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              const SizedBox(height: 20),
              Text(
                '✔ Watch all you want. Ad-free.\n✔ Recommendations just for you.\n✔ Change or cancel your plan anytime.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 4 / 3,
                    children: List.generate(4, (index) => planCard(index))),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red[700],
                      padding: const EdgeInsets.all(20)),
                  onPressed: startWatchingHandler,
                  child: const Center(child: Text('START WATCHING')))
            ],
          ),
        ),
      ),
    );
  }

  Widget planCard(int index) {
    Plan plan = plans[index];
    return Card(
      child: Container(
        color: plan.color,
        child: TextButton(
          onPressed: () {
            for (int i = 0; i < 4; i++) {
              if (i == index) {
                setState(() => plans[i].active = true);
              } else {
                setState(() => plans[i].active = false);
              }
            }
          },
          child: Text(
            '${plan.name}\n₹${plan.cost}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
