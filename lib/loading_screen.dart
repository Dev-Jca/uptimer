import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:uptimer/home_screen.dart';

const apiKey = 'U1ULHUQE3Y3M';
const baseURL = '';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    loadLocation();
    super.initState();
  }

  Future<dynamic> getUrl() async {
    var url = Uri.parse(
        'https://timeapi.io/api/Time/current/zone?timeZone=Africa/Lagos');
    Response response = await get(url);
    print(response.body);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

  void loadLocation() async {
    var data = await getUrl();
    Future.delayed(Duration.zero, () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(
                timeData: data,
              )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.withOpacity(0.5),
      body: const Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }
}
