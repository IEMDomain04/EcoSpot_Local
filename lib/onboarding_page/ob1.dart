import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget for OverFlow
      body: SingleChildScrollView(
        child: Column(
          //Title
          children: [
            Text(
              "Welcome\n to\n EcoSpot Local",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 21, 255, 0),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),

            //Icon
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Image.asset("assets/images/eco-icon.png",
                    width: 150, height: 150),
              ),
            ),
            SizedBox(height: 20),

            //Next Button
            Image.asset("assets/nextButton.png"),
          ],
        ),
      ),
    );
  }
}
