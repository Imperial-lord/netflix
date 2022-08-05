import 'package:flutter/material.dart';
import 'package:netflix/screens/management/management.dart';

Widget navBar(BuildContext context, bool hasScrolled) {
  List<String> items = ['TV Shows', 'Movies', 'Categories ↓'];
  List<Widget> screens = [
    const Management(),
    const Management(),
    const Management()
  ];

  return SafeArea(
    child: Container(
      color: hasScrolled ? Colors.black26 : Colors.transparent,
      padding: hasScrolled
          ? const EdgeInsets.symmetric(vertical: 20)
          : EdgeInsets.zero,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
              items.length,
              (i) => GestureDetector(
                  onTap: () => Navigator.pushNamedAndRemoveUntil(
                      context, Management.id, (Route<dynamic> route) => false),
                  child: Text(items[i])))),
    ),
  );
}
