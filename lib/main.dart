import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(), // Set the SplashScreen as the initial route
      routes: {
        '/home': (context) => HomeScreen(), // Define the home screen route
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay using a Timer
    Timer(
      Duration(seconds: 2), // Set the duration of the splash screen
      () {
        Navigator.pushReplacementNamed(context, '/home');
        // Use pushReplacementNamed to prevent users from going back to the splash screen
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlutterLogo(
            size: 500), // Replace this with your splash screen content
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Image.asset(
          'assets/img/Splash_Screen.png', // Replace this with your image path
          width: 200, // Adjust width as needed
          height: 200, // Adjust height as needed
        ),
      ),
    );
  }
}
