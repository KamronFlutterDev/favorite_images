import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';

class NetworkHelper{
  final String urL;

  NetworkHelper({required this.urL});

  Future getdata() async{
    final Url = Uri.parse(urL);

    http.Response response = await http.get(Url);

    if(response.statusCode == 200){
      String data = response.body;
      return jsonDecode(data);
    }
    else {}
    }
}