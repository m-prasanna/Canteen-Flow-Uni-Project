import 'package:canteen_flow_app/screen/splsh_screen.dart';
import 'package:canteen_flow_app/screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Future main() async{
  await dotenv.load(fileName: ".env");
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
