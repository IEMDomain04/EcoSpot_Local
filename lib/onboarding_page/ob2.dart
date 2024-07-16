import 'package:ecospot_local/onboarding_page/ob3.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget for OverFlow
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120.0),
            child: Column(
              //Title
              children: [
                Image.asset('assets/images/img1.png', height: 220, width: 220),
                SizedBox(height: 50.0),

                Text(
                    "EcoSpot Local is a directory\n of eco-friendly business\n in your area.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        height: 1.2,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 50.0),

                //Next Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnBoarding3(),
                      ),
                    );
                  },
                  child: Image.asset('assets/nextButton.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
