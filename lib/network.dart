import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Network {
  final Uri url;
  Network({required this.url});

  Future<dynamic> getUrl() async {
    Response response = await get(url);
    print(response.body);
    if (response.statusCode == 200) {
      var data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
