import 'package:ecospot_local/onboarding_page/ob4.dart';
import 'package:flutter/material.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

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
                Image.asset('assets/images/img2.png', height: 220, width: 220),
                SizedBox(height: 50.0),

                Text(
                    "Maps and lists local businesses\n committed to eco-friendly\n practices.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 50.0),

                //Next Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OnBoarding4(),
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
