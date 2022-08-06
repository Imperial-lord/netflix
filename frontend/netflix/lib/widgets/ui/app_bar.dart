import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/screens/profile/profiles_and_more.dart';

PreferredSizeWidget appBar(BuildContext context, Widget title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: title,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.search, color: Colors.white)),
      IconButton(
          onPressed: () => Navigator.pushNamed(context, ProfilesAndMore.id),
          icon: const Icon(CupertinoIcons.person_crop_square,
              color: Colors.green)),
    ],
  );
}
