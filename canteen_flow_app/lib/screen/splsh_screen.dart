import 'package:canteen_flow_app/screen/loging.dart';
import 'package:flutter/material.dart';

class SplshScreen extends StatefulWidget {
  const SplshScreen({Key? key}) : super(key: key);

  @override
  _SplshScreenState createState() => _SplshScreenState();
}

class _SplshScreenState extends State<SplshScreen> {
  @override
  void initState() {
    super.initState();
    // Delay for 2 seconds and then navigate to another screen
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInPage()),
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
