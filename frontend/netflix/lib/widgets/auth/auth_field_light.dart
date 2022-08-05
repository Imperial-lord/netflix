import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget authFieldLight(String placeholder,
    TextEditingController textEditingController, Color borderColor) {
  return CupertinoTextField(
    controller: textEditingController,
    obscureText: (placeholder == 'Password') ? true : false,
    autocorrect: (placeholder == 'Password') ? false : true,
    enableSuggestions: (placeholder == 'Password') ? false : true,
    padding: const EdgeInsets.all(20),
    style: const TextStyle(fontFamily: 'Netflix Sans'),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(5)),
    cursorColor: Colors.grey,
    placeholder: placeholder,
    placeholderStyle:
        const TextStyle(fontFamily: 'Netflix Sans', color: Colors.grey),
  );
}
