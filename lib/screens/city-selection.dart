import 'package:flutter/material.dart';
import 'package:weather_app/screens/home.dart';

class city_selection extends StatelessWidget {
  const city_selection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22,top: 80),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: ()=>onback_pressed(context),
                      child: const Icon(Icons.arrow_back)
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22 , top: 10, bottom:20),
              child: Row(
                children: const [
                  Text("Select City",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black)
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15,right: 15),
              padding:  const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  style: const TextStyle(color: Colors.black, fontSize: 15,fontWeight: FontWeight.w500),
                  decoration: const InputDecoration(
                    hintText: "Enter your city name",
                )
            ),
            ),
            const SizedBox(height: 22),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 59,
              color: const Color(0xffF6F6F6),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const home()));
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                      child: Image.asset("images/point.png")
                    ),
                    const SizedBox(width: 15),
                    const Text("Current Location",
                      style:
                      TextStyle(fontSize: 25,
                          fontFamily: "PoppinsMed",
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 59,
              color: const Color(0xffF6F6F6),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const home()));
                    },
                  child: Row(
                    children: const [
                      SizedBox(width: 40),
                      Text("Karachi , Pakistan",
                        style:
                        TextStyle(fontSize: 25,
                            fontFamily: "PoppinsMed",
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
            ),
            const SizedBox(height: 25),
            Container(
                height: 59,
                color: const Color(0xffF6F6F6),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const home()));
                  },
                  child: Row(
                    children: const [
                      SizedBox(width: 40),
                      Text("Sydney , Australia",
                        style:
                        TextStyle(fontSize: 25,
                            fontFamily: "PoppinsMed",
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
            ),
            const SizedBox(height: 25),
            Container(
                height: 59,
                color: const Color(0xffF6F6F6),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const home()));
                  },
                  child: Row(
                    children: const [
                      SizedBox(width: 40),
                      Text("Barcelona , Argentina",
                        style:
                        TextStyle(fontSize: 25,
                            fontFamily: "PoppinsMed",
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
  onback_pressed(BuildContext context) {
    Navigator.pop(context);
  }
}
