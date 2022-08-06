import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget profileOptions(IconData iconData, String item) {
  return Card(
    color: Colors.white24,
    child: ListTile(
      onTap: () {},
      leading: Icon(iconData),
      title: Text(item, style: const TextStyle(fontWeight: FontWeight.w500)),
      trailing: const Icon(CupertinoIcons.chevron_forward, color: Colors.grey),
    ),
  );
}
