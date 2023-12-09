import 'package:canteen_flow_app/screen/splsh_screen.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

void main() {
  runApp(const MyApp());
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
