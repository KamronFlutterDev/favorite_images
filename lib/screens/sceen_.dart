import 'dart:convert';
import 'package:endless_photo_scroll/bussiness_logic/photos_event.dart';
import 'package:endless_photo_scroll/bussiness_logic/photos_state.dart';
import 'package:endless_photo_scroll/repository/photos_repositorty.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  void initState() {
    super.initState();
    fetchApi();
  }

  fetchApi() async {
    await http
        .get(
          Uri.parse('https://api.pexels.com/v1/curated?page=2&per_page=40'),
        )
        .then(
          (value) => print('value'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}

