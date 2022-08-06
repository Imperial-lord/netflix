import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/widgets/ui/app_bar.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);
  static String id = 'downloads';

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context,
          Text('Downloads', style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(CupertinoIcons.gear_solid),
                  SizedBox(width: 10),
                  Text('Smart Downloads'),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                  'We\'ll download a personalised selection of movies and shows for you, so there\'s always something to watch on your phone'),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Stack(
                  children: [
                    Transform.rotate(
                      angle: pi / 6,
                      child: Transform.translate(
                        offset: const Offset(100, -20),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            'https://www.pinkvilla.com/imageresize/bb2_live_updates_main.jpg?width=752&format=jpg&t=pvorg',
                            width: 150,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -pi / 6,
                      child: Transform.translate(
                        offset: const Offset(-100, -20),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            'https://flxt.tmsimg.com/assets/p12991665_b_v13_am.jpg',
                            width: 150,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Image.network(
                        'https://i0.wp.com/neplych.com/wp-content/uploads/2022/04/Major-Movie-Poster.jpg',
                        width: 150,
                        height: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {}, child: const Center(child: Text('Set Up'))),
              const SizedBox(height: 50),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                color: Colors.white24,
                child: const Text('Find More to Download',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
