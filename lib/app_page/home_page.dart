import 'package:ecospot_local/app_page/donationsPage.dart';
import 'package:ecospot_local/app_page/eventsPage.dart';
import 'package:ecospot_local/auth/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Center(child: Text('Page 1')),
    Center(child: Text('Home Page')),
    Center(child: Text('Page 2')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Widget for OverFlow
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 25.0),
              child: Row(
                // Icon
                children: [
                  Image.asset("assets/images/eco-icon.png",
                      width: 30, height: 30),

                  // Register and Login
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 80.0),
                    child: Row(
                      children: [
                        // Register Button Functionality
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child:
                              Image.asset("assets/regButton.png", height: 50),
                        ),

                        // Login Button Functionality
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child:
                              Image.asset("assets/loginButton.png", height: 50),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // EcoSpot Banner
            Image.asset("assets/images/ecospot-banner.png"),
            SizedBox(height: 10.0),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_back),
            label: 'Events Program',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_forward),
            label: 'Donation Drives',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
