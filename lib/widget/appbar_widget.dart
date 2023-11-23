import 'package:flutter/material.dart';

AppBar appBarWidget(String text) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.pink,
    title: Text(text),
  );
}
