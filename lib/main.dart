import 'package:flutter/material.dart';
import 'package:uptimer/home_screen.dart';
import 'package:uptimer/loading_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoadingScreen(),
    ),
  );
}
