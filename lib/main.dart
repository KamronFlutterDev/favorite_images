import 'dart:io';
import 'package:endless_photo_scroll/screens/first_sceen.dart';
import 'package:endless_photo_scroll/screens/sceen_.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const EndlessPhotoScrollApp());

class EndlessPhotoScrollApp extends StatelessWidget {
  const EndlessPhotoScrollApp({Key? key}) : super(key: key);

  void getNothing() {}

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstScreen(),
    );
  }
}
