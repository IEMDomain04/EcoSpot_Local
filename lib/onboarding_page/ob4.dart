import 'package:ecospot_local/onboarding_page/ob5.dart';
import 'package:flutter/material.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({super.key});

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
                Image.asset('assets/images/img3.png', height: 220, width: 220),
                SizedBox(height: 50.0),

                Text(
                    "Allows users to review and\n support environmentally\n conscious businesses.",
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
                        builder: (context) => const OnBoarding5(),
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
