import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget netflixAppBar(Widget title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: title,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search, color: Colors.white)),
      IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.person_crop_square,
              color: Colors.green)),
    ],
  );
}
