import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart';
import 'package:uptimer/home_screen.dart';
import 'package:uptimer/network.dart';

const apiKey = 'U1ULHUQE3Y3M';
const baseURL = '';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Network network = Network(
    url: Uri.parse(
        'https://timeapi.io/api/Time/current/zone?timeZone=Africa/Lagos'),
  );
  @override
  void initState() {
    loadLocation();
    super.initState();
  }

  void loadLocation() async {
    var data = await network.getUrl();
    Future.delayed(Duration.zero, () {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HomeScreen(
                timeData: data,
                assetName: 'images/lagos.jpg',
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
