import 'package:flutter/material.dart';
import 'package:weather_app/screens/landing_screen.dart';
import 'package:weather_app/screens/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: splash_screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}