import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // FrontEnd Code
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background Color.
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // App Logo
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Image.asset(
                  'assets/images/eco-icon.png',
                  width: 150, // Set the width as needed
                  height: 180, // Set the height as needed
                ),
              ),

              // App Title
              SizedBox(height: 0),
              Text(
                'Login Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 30),

              // Email or Username TxtField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 3.0),
                    child: TextField(
                      //controller: _usernameController,
                      textInputAction: TextInputAction.go,
                      cursorColor: Colors.black,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email or Username',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // Password TxtField
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 3.0),
                    child: TextField(
                      //controller: _passwordController,
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.go,
                      style: TextStyle(color: Colors.black),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Pink Login button
              ElevatedButton(
                onPressed: () async {},
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: Size(200, 40),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  elevation: 10, // Add a shadow
                ),
              ),
              SizedBox(height: 20),

              // ----or----
              Text(
                '------- OR -------',
                style: TextStyle(color: Colors.black),
              ),

              // Icons in Socmed
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Facebook Sign in.
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/facebookicon.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),

                  // Google Sign in.
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/googleicon.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),

                  // IG Sign in.
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/instagramicon.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Bottom sheet button
              TextButton(
                onPressed: () {},
                child: Text('Don\'t have an account?'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black,
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
