import 'package:flutter/material.dart';

ScrollController controller;

final TextStyle ksubTitle =
    TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
final TextStyle kshowAll = TextStyle(color: Colors.blue);
final TextStyle kbuttontext = TextStyle(
  color: Colors.white,
);

RaisedButton smallButton(String text, Function onPressed) {
  return RaisedButton(
    onPressed: onPressed,
    child: Text(
      '$text',
      style: TextStyle(color: Colors.white),
    ),
    color: Colors.blue,
    shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(8.0),
    ),
  );
}
