import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Widget for OverFlow
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 25.0),
              child: Row(
                //Icon
                children: [
                  Image.asset("assets/images/eco-icon.png",
                      width: 30, height: 30),

                  //Register and Login
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 80.0),
                    child: Row(
                      children: [
                        Image.asset("assets/regButton.png", height: 50),
                        Image.asset("assets/loginButton.png", height: 50),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            //Banner
            Image.asset("assets/images/ecospot-banner.png"),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}
