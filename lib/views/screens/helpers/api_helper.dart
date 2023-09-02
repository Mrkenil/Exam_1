import 'dart:convert';

import 'package:exam_1/views/modal/joke_api_modal.dart';
import 'package:http/http.dart' as http;

class Jokes {
  Jokes._();

  static final Jokes jokes = Jokes._();

  Future<joke_modal?> get() async {
    String api = "https://api.chucknorris.io/jokes/random";
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);

      joke_modal joke = joke_modal.get(data: data);

      return joke;
    } else {
      return null;
    }
  }
}
