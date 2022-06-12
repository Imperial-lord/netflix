import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String id = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void signOutHandler() {}

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
          IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.search, color: Colors.white)),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<int>(
                  onTap: () {},
                  value: 0,
                  child: const Text('Sign out'),
                )
              ];
            },
            icon: const Icon(CupertinoIcons.person_crop_square_fill,
                color: Colors.green),
          ),
        ],
      ),
      body: Stack(children: [
        Column(
          children: [
            Image.network(
              'https://m.media-amazon.com/images/M/MV5BOTQwOTVlMzctM2I3MS00YzllLWJiNTctYzdhMjkzMzhhY2RkXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY1200_CR110,0,630,1200_AL_.jpg',
              height: 500,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ],
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
        Column(
          children: [
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text('TV Shows'),
                Text('Movies'),
                Text('Categories'),
              ],
            ),
          ],
        )
      ]),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          icon: Icon(CupertinoIcons.shuffle, color: Colors.red[700]),
          onPressed: () {},
          label: const Text('Surprise Me')),
    );
  }
}
