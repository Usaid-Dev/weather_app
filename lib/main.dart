import 'package:flutter/material.dart';
import 'package:weather_app/Screens/Home.dart';
import 'package:weather_app/screens/city-selection.dart';
import 'package:weather_app/screens/landing_screen.dart';
import 'package:weather_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        Map<String, Widget> pages = {
          "/": const splash_screen(),
          "/selection": landing_Screen(),
          "/selectCity": city_selection(),
          "/home": Home(),
        };
        var pageToShow = pages[settings.name] ?? const splash_screen();
        if (settings.name == "/") {
          pageToShow = const splash_screen();
        } else if (settings.name == "/selection") {
          pageToShow = landing_Screen();
        } else if (settings.name == "/selectCity") {
          pageToShow = city_selection();
        } else if (settings.name == "/home") {
          if (settings.arguments != null) {
            // print();
            pageToShow = Home(
                position: (settings.arguments as Map<String,dynamic>)['position'],
                city:(settings.arguments as Map<String,dynamic>)['city']
            );
          }
        }
        return MaterialPageRoute<String>(
            builder: (ctx) => pageToShow, settings: settings);
      },
      home: const splash_screen(),
    );
  }
}