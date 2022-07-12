import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/Services/GeoLocator.dart';

class landing_Screen extends StatelessWidget {
  landing_Screen({Key? key}) : super(key: key);

  GeoLocator geo = GeoLocator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.only(top: 68, right: 75),
              child: Image.asset("images/text.png")),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 30, right: 1),
              child: Image.asset("images/Group 3.png", fit: BoxFit.fill)
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              onCurrentLocation(context);
            },
            child: Container(
                height: 72,
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(left: 20, right: 15),
                decoration: BoxDecoration(
                    color: const Color(0xffE0E0E0),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Select Current Location",
                      style: TextStyle(fontFamily: "PoppinsMed", fontSize: 20),
                    ),
                    Image.asset("images/right-arrow.png")
                  ],
                )
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/selectCity");
            },
            child: Container(
                height: 72,
                margin: const EdgeInsets.only(left: 15, right: 15),
                padding: const EdgeInsets.only(left: 20, right: 15),
                decoration: BoxDecoration(
                    color: const Color(0xff6DC9EF),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Select City",
                      style: TextStyle(
                          fontFamily: "PoppinsMed",
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Image.asset("images/down-arrow.png")
                  ],
                )),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }

  void onCurrentLocation(context) async{
    GeoLocator geoLocator = GeoLocator();
    Position  position=await geoLocator.determinePosition();

    Navigator.pushNamed(context, "/home",arguments: {
      "position":position
    }
    );

  }
}