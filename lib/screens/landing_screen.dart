import 'package:flutter/material.dart';

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
                      ]
                  )
              )
            ]
        )
    );
  }
}
