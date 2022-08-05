import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'nav_bar.dart';

Widget featuredMovie(BuildContext context, double scrollPosition) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: Stack(children: [
      Image.network(
        'https://flxt.tmsimg.com/assets/p169030_p_v8_ae.jpg',
        height: 500,
        width: MediaQuery.of(context).size.width,
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
      Column(
        children: [
          scrollPosition <= navScrollLimit
              ? navBar(context, false)
              : Container(),
          SizedBox(height: scrollPosition <= navScrollLimit ? 400 : 500),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 5,
            children: [
              Text('Ominous', style: Theme.of(context).textTheme.labelMedium),
              Icon(Icons.circle, size: 5, color: Colors.red[700]),
              Text('Psychological',
                  style: Theme.of(context).textTheme.labelMedium),
              Icon(Icons.circle, size: 5, color: Colors.red[700]),
              Text('Satanic', style: Theme.of(context).textTheme.labelMedium),
              Icon(Icons.circle, size: 5, color: Colors.red[700]),
              Text('Ensemble', style: Theme.of(context).textTheme.labelMedium),
              Icon(Icons.circle, size: 5, color: Colors.red[700]),
              Text('Demons', style: Theme.of(context).textTheme.labelMedium)
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(Icons.add_rounded),
                    const SizedBox(height: 5),
                    Text('My List',
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  child: Row(
                    children: const [
                      Icon(Icons.play_arrow_rounded, color: Colors.black),
                      Text('Play', style: TextStyle(color: Colors.black)),
                    ],
                  )),
              InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    const Icon(Icons.info_outline_rounded),
                    const SizedBox(height: 5),
                    Text('Info', style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    ]),
  );
}
