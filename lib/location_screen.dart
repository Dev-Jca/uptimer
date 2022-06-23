import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:uptimer/List_tile_widget.dart';
import 'package:uptimer/loading_screen.dart';
import 'package:uptimer/network.dart';

import 'home_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  bool showSpinner = false;
  void loadNewLocation(
      {required String location, required String assetName}) async {
    Network network = Network(
      url: Uri.parse(
          'https://timeapi.io/api/Time/current/zone?timeZone=$location'),
    );
    setState(() {
      showSpinner = true;
    });

    var data = await network.getUrl();

    Future.delayed(Duration.zero, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(
            timeData: data,
            assetName: assetName,
          ),
        ),
      );
    });
    setState(() {
      showSpinner = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.black45,
        title: Text('Pick a location'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: ListView(
          children: [
            ListTileWidget(
              onTap: () {
                loadNewLocation(
                    location: 'Europe/London', assetName: 'images/london.jpg');
              },
              countryName: 'London',
              assetName: 'images/london.jpg',
            ),
            ListTileWidget(
              countryName: 'Athens',
              assetName: 'images/athens.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Europe/Athens', assetName: 'images/athens.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Cairo',
              assetName: 'images/cairo.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Africa/Cairo', assetName: 'images/cairo.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Nairobi',
              assetName: 'images/nairobi.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Africa/Nairobi',
                    assetName: 'images/nairobi.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Seoul',
              assetName: 'images/seoul.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Asia/Seoul', assetName: 'images/seoul.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Jakarta',
              assetName: 'images/jakarta.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Asia/Jakarta', assetName: 'images/jakarta.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'New York',
              assetName: 'images/newyork.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'America/New_York',
                    assetName: 'images/newyork.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Chicago',
              assetName: 'images/chicago.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'America/Chicago',
                    assetName: 'images/chicago.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Lagos',
              assetName: 'images/lagos.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Africa/Lagos', assetName: 'images/lagos.jpg');
              },
            ),
            ListTileWidget(
              countryName: 'Johannesburg',
              assetName: 'images/sa.jpg',
              onTap: () {
                loadNewLocation(
                    location: 'Africa/Johannesburg',
                    assetName: 'images/sa.jpg');
              },
            ),
          ],
        ),
      ),
    );
  }
}
