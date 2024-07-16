import 'package:ecospot_local/app_page/home_page.dart';
import 'package:flutter/material.dart';

class OnBoarding5 extends StatelessWidget {
  const OnBoarding5({super.key});

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
                Image.asset('assets/images/img4.png', height: 125, width: 350),
                SizedBox(height: 50.0),

                Image.asset('assets/textLocationServices.png'),
                SizedBox(height: 30.0),

                Text(
                    "To help you find local eco-friendly\n businesses, please turn on your\n location services.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30.0),

                Text(
                    "This will allow us to know your location\n and provide accurate listings in your area.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        height: 1.2,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),

                Text("• Location Services",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    )),
                SizedBox(height: 28.0),

                //Next Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Image.asset('assets/onLocationButton.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
