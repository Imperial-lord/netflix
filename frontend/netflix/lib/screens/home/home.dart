import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/widgets/home/featured_movie.dart';
import 'package:netflix/widgets/ui/app_bar.dart';

import '../../constants/constants.dart';
import '../../widgets/home/nav_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  static String id = 'home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;

  void _scrollListener() {
    setState(() => _scrollPosition = _scrollController.position.pixels);
  }

  void signOutHandler() {}

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: _scrollPosition <= navScrollLimit
          ? appBar(context, Image.asset('assets/icons/netflix.png', height: 32))
          : PreferredSize(
              preferredSize: const Size.fromHeight(double.maxFinite),
              child: navBar(context, true)),
      body: SingleChildScrollView(
          controller: _scrollController,
          child: featuredMovie(context, _scrollPosition)),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          icon: Icon(CupertinoIcons.shuffle, color: Colors.red[700]),
          onPressed: () {},
          label: const Text('Surprise Me')),
    );
  }
}
