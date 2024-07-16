import 'package:ecospot_local/onboarding_page/ob2.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget for OverFlow
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Column(
            //Title
            children: [
              Text("Welcome\n to\n EcoSpot Local",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    height: 1.2,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30.0),

              //Icon
              Center(
                child: Image.asset("assets/images/eco-icon.png",
                    width: 180, height: 180),
              ),
              SizedBox(height: 70),

              //Next Button
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoarding2(),
                    ),
                  );
                },
                child: Image.asset('assets/nextButton.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
