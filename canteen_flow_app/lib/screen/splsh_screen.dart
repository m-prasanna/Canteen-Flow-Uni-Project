import 'package:flutter/material.dart';

class SplshScreen extends StatelessWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/splash.png',
          // Adjust the width and height as needed
          width: 500,
          height: 200,
          // Ensure the image fills the container
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
