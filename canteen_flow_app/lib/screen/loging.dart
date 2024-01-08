import 'package:canteen_flow_app/screen/home.dart';
import 'package:canteen_flow_app/screen/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 400,
                height: 750,
                padding: const EdgeInsets.only(
                  left: 36,
                  right: 35,
                ),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Login here',
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
                      'Welcome back you’ve been missed!',
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
                            color: const Color(0xFFF1F4FF),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
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
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Forgot your password?',
                                style: TextStyle(
                                  color: Color(0xFF2A2D37),
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: 320,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(245, 179, 88, 1),
                            ),
                            child: const Text(
                              'Sign In',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                                onPressed: () { Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                                 ); },
                                child: const Text(
                                  'Create new account',
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
            ],
          ),
        ),
      ),
    );
  }
}
