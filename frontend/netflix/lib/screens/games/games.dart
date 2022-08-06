import 'package:flutter/material.dart';
import 'package:netflix/widgets/ui/app_bar.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);
  static String id = 'games';

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: appBar(context,
          Text('Games', style: Theme.of(context).textTheme.titleLarge)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Card(
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      'https://www.itl.cat/pngfile/big/37-377225_shadow-fight-3-wallpaper-hd-download-the-best.jpg',
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    height: 550,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black,
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 50,
                    right: 0,
                    left: 0,
                    child: Column(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            'https://play-lh.googleusercontent.com/bOrpHn6uxgQRZfiwNFkHN-idtottSkq6iDu0wUTAAXLJRNauJ3Um0qN2fm6Z6MeFYS0',
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('Shadow Fight',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Adventure'),
                            const SizedBox(width: 10),
                            Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/IARC_12%2B.svg/840px-IARC_12%2B.svg.png',
                                height: 30,
                                width: 20)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Text('All Mobile Games',
                  style: Theme.of(context).textTheme.titleLarge),
              for (int i = 0; i < 5; i++)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List<Widget>.generate(
                        20,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    child: Image.network(
                                      'https://play-lh.googleusercontent.com/xdXnj7WM_7LsoXIGlIBQvc2X2e6vh-V-jWhUwwOLChSnKfH6p1EFTBidwXKtKuJhPA4A',
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                  Text('Asphalt\nXtreme',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge),
                                  const SizedBox(height: 5),
                                  const Text('Racing',
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              ),
                            )),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
