import 'package:endless_photo_scroll/ui/app_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppWidget());
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
