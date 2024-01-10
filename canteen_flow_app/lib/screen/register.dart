import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> register() async {
    await dotenv.load();

    String backend = dotenv.env['BACKEND'] as String;

    final String apiUrl =
        '$backend/registration';

    // Validate password and confirm password
    if (passwordController.text != confirmPasswordController.text) {
      // Passwords do not match
      print('Passwords do not match');
      return;
    } else {
      print("Passwords match");
      print(emailController.text);
      print(passwordController.text);
    }

    var data = {
      'email': emailController.text,
      'password': passwordController.text,
    };

    try {
      Dio dio = Dio();

      // Increase the timeout (adjust as needed)
      dio.options.connectTimeout = const Duration(seconds: 5);

      final response = await dio.post(
        apiUrl,
        data: {
          'email': emailController.text,
          'password': passwordController.text
        },
      );
      // Handle response as needed
      print(response.data); // You may want to log or process the response
    } catch (e) {
      print(e);
      // Handle error as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Account'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Create Account',
              style: TextStyle(
                color: Color(0xFFF5B358),
                fontSize: 40,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Create an account so you can Give feedbacks to improving canteens.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF2A2D37),
                fontSize: 15,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const SizedBox(height: 74),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4FF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4FF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4FF),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Confirm your password',
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 70),
                Container(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: register,
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromRGBO(245, 179, 88, 1),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 357,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Already have an account',
                          style: TextStyle(
                            color: Color(0xFF2A2D37),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: RegisterScreen(),
    ),
  );
}
