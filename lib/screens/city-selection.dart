import 'package:flutter/material.dart';

class city_selection extends StatelessWidget {
  city_selection({Key? key}) : super(key: key);

  List<String> Cities = [
    "Karachi",
    "Dubai",
    "London",
    "Lahore",
    "Islamabad",
    "Maldives",
    "Faisalabad",
    "Swat",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/selection");
            },
            child: Container(
                margin: const EdgeInsets.only(top: 60, left: 20),
                child: Image.asset("images/back-arrow.png")
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20, left: 22),
              child: const Text(
                "Select City",
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: "PoppinsMed",
                ),
              )
          ),
          Container(
            margin: const EdgeInsets.only(top: 40, left: 22, right: 22),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(color: Colors.grey, width: 1)
            ),
            padding: const EdgeInsets.all(8),
            child: const TextField(
              style: TextStyle(color: Colors.black, fontSize: 15),
              decoration: InputDecoration(
                  hintText: "Enter your city name",
                  hintStyle: TextStyle(color: Color(0xFFA8A8A8), fontSize: 16),
                  border: InputBorder.none),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: Cities.length,
                itemBuilder: (ctx, idx) => cityWidget(ctx, idx)),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget cityWidget(BuildContext ctx, int idx) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(ctx, "/home",arguments: {
          "city":Cities[idx]
        });
      },
      child: Container(
          width: MediaQuery.of(ctx).size.width,
          height: 75,
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: const Color(0xffF6F6F6)
          ),
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Text(
                Cities[idx],
                style: const TextStyle(fontFamily: "PoppinsMed", fontSize: 17),
              ),
            ],
          )
      ),
    );
  }
}