import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens/profile/profiles_and_more.dart';

PreferredSizeWidget appBarNotifications(BuildContext context, Widget title) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: title,
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.bell_fill, color: Colors.white)),
      IconButton(
          onPressed: () => Navigator.pushNamed(context, ProfilesAndMore.id),
          icon: const Icon(CupertinoIcons.person_crop_square,
              color: Colors.green)),
    ],
  );
}
