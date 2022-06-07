import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  final String urL;

  NetworkHelper({required this.urL});

  Future getData() async {
    final url = Uri.parse(urL);

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {}
  }
}
