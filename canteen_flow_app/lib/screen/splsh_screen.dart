import 'loging.dart';
import 'package:canteen_flow_app/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplshScreenState createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and then navigate to another screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WelcomeScreen()),
      );
    });
  }

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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Canteen Flow App ",
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: const SplshScreen(),
    );
  }
}
