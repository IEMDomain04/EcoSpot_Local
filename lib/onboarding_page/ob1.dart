import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Logo Center
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Welcome\n to\n EcoSpot Local"),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Image.asset("assets/images/eco-icon.png",
                    width: 150, height: 150),
              ),
            ),
            SizedBox(height: 20),

            //Text
            Text("Enter"),
          ],
        ),
      ),
    );
  }
}
