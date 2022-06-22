import 'package:flutter/material.dart';
import 'package:uptimer/List_tile_widget.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          backgroundColor: Colors.black45,
          title: Text('Pick a location'),
        ),
        body: ListView(
          children: [
            ListTileWidget(
              countryName: 'London',
              assetName: 'images/london.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Athens',
              assetName: 'images/athens.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Cairo',
              assetName: 'images/cairo.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Nairobi',
              assetName: 'images/nairobi.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Seoul',
              assetName: 'images/seoul.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Jakarta',
              assetName: 'images/jakarta.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'New York',
              assetName: 'images/newyork.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Chicago',
              assetName: 'images/chicago.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Lagos',
              assetName: 'images/lagos.jpg',
              onTap: () {},
            ),
            ListTileWidget(
              countryName: 'Dubai',
              assetName: 'images/dubai.jpg',
              onTap: () {},
            ),
          ],
        ));
  }
}
