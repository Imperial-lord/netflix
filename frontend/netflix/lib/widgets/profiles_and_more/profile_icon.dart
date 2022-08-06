import 'package:flutter/material.dart';

Widget profileIcon(String imageURL, String name) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3),
            borderRadius: BorderRadius.circular(5)),
        height: 100,
        width: 100,
        child: Image.network(imageURL, fit: BoxFit.cover),
      ),
      const SizedBox(height: 10),
      Text(name)
    ],
  );
}
