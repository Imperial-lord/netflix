import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/downloads/downloads.dart';
import 'package:netflix/screens/fast_laughs/fast_laughs.dart';
import 'package:netflix/screens/games/games.dart';
import 'package:netflix/screens/home/home.dart';
import 'package:netflix/screens/new_and_hot/new_and_hot.dart';

class Management extends StatefulWidget {
  const Management({Key? key}) : super(key: key);
  static String id = 'management';

  @override
  State<Management> createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  int selectedIndex = 0;

  List<Widget> pages = const [
    Home(),
    Games(),
    NewAndHot(),
    FastLaughs(),
    Downloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontSize: 12),
        unselectedLabelStyle: const TextStyle(fontSize: 10),
        backgroundColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: (index) async {
          setState(() => selectedIndex = index);
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.gamecontroller_alt_fill),
              label: 'Games'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_rounded), label: 'New & Hot'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_very_satisfied_rounded),
              label: 'Fast Laughs'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline_outlined),
              label: 'Downloads'),
        ],
      ),
    );
  }
}
