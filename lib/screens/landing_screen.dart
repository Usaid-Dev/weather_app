import 'package:flutter/material.dart';
import 'package:weather_app/screens/city-selection.dart';

class landing_Screen extends StatelessWidget {
  const landing_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              SizedBox(height: 300,
                child: Image.asset('images/text.png'),
              ),
              Positioned(
                  child: Column(
                      children: [
                        const SizedBox(height: 250),
                        Align(alignment: Alignment.center,
                          child: Image.asset('images/Group 3.png'),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push
                              (MaterialPageRoute(builder: (_) => const city_selection()));
                            },
                          child: Container(
                              height: 72,
                              margin: const EdgeInsets.only(left: 15,right: 15),
                              padding: const EdgeInsets.only(left: 20,right: 15),
                              decoration:
                              BoxDecoration(
                                  color: const Color(0xffE0E0E0),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Select Current Location",
                                    style: TextStyle(fontFamily: "PoppinsMed",fontSize: 20),
                                  ),
                                  Image.asset("images/back-arrow.png")
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (_) => const city_selection()));
                          },
                          child: Container(
                              height: 72,
                              margin: const EdgeInsets.only(left: 15,right: 15),
                              padding: const EdgeInsets.only(left: 20,right: 15),
                              decoration:
                              BoxDecoration(
                                  color: const Color(0xff6DC9EF),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text("Select City",
                                    style: TextStyle(fontFamily: "PoppinsMed",fontSize: 20,color: Colors.white),
                                  ),
                                  Image.asset("images/back-arrow.png")
                                ],
                              )
                          ),
                        ),
                        const SizedBox(height: 40,),
                      ],
                  ),
              )
            ]
        )
    );
  }
}
