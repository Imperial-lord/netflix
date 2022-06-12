import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget authField(
    String placeholder, TextEditingController textEditingController) {
  return CupertinoTextField(
    controller: textEditingController,
    obscureText: (placeholder == 'Password') ? true : false,
    autocorrect: (placeholder == 'Password') ? false : true,
    enableSuggestions: (placeholder == 'Password') ? false : true,
    padding: const EdgeInsets.all(25),
    style: const TextStyle(fontFamily: 'Netflix Sans', color: Colors.white),
    decoration: BoxDecoration(
        color: Colors.white24, borderRadius: BorderRadius.circular(5)),
    cursorColor: Colors.white,
    placeholder: placeholder,
    placeholderStyle:
        const TextStyle(fontFamily: 'Netflix Sans', color: Colors.grey),
  );
}
