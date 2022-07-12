import 'package:flutter/material.dart';
import 'package:weather_app/screens/landing_screen.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => SplashScreen();
}

class SplashScreen extends State<splash_screen> {
  @override
  void initState() {super.initState(); _navigateToDashboard();}
  _navigateToDashboard() async{
    await Future.delayed(const Duration (milliseconds: 5000),() {});
    Navigator.push(context, MaterialPageRoute(builder: (context) =>  landing_Screen()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Stack(
            children: [
              SizedBox(
                  child:
                  Center(
                    child: Image.asset('images/frame.png'),
                  )
              ),
              const Align(alignment:Alignment.bottomCenter,
                child:Padding(
                  padding: EdgeInsets.all(61),
                  child: Text("Powered By Tech Idara",
                      style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 17,
                          color:Color(0xff000000),
                      )
                  ),
                ),
              ),
            ]
        )
    );
  }
}