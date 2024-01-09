<<<<<<< Updated upstream
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

=======
import 'package:canteen_flow_app/screen/home.dart';
import 'package:canteen_flow_app/screen/register.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
>>>>>>> Stashed changes
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
<<<<<<< Updated upstream
            child: Column(
          children: [
            Container(
              width: 400,
              height: 750,
              padding: const EdgeInsets.only(
                // top: 176,
                left: 36,
                right: 35,
                // bottom: 176,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 1,
                          top: 0,
                          child: Text(
                            'Login here',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFF5B358),
                              fontSize: 30,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 71,
                          child: Text(
                            'Welcome back you’ve\nbeen missed!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 20,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 74),
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 357,
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 20,
                                right: 35,
                                bottom: 20,
                              ),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF1F4FF),
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 2, color: Color(0xFFF5B358)),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Email',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFA6A6AD),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 29),
                            Container(
                              width: 357,
                              padding: const EdgeInsets.only(
                                top: 20,
                                left: 20,
                                right: 35,
                                bottom: 20,
                              ),
                              decoration: ShapeDecoration(
                                color: Color(0xFFF1F4FF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Password',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFFA6A6AD),
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
=======
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
                            color: Color(0xFFF1F4FF),
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
>>>>>>> Stashed changes
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
<<<<<<< Updated upstream
                        const Text(
                          'Forgot your password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF2A2D37),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
=======
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
>>>>>>> Stashed changes
                          ),
                        ),
                        const SizedBox(height: 30),
                        Container(
<<<<<<< Updated upstream
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 357,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                decoration: ShapeDecoration(
                                  color: Color(0xFFF5B358),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadows: const [
                                    BoxShadow(
                                      color: Color(0xFFCAD6FF),
                                      blurRadius: 20,
                                      offset: Offset(0, 10),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sign in',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 30),
                              Container(
                                width: 357,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Create new account',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF2A2D37),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ],
=======
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
>>>>>>> Stashed changes
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
<<<<<<< Updated upstream
                  ),
                ],
              ),
            ),
          ],
        )),
=======
                  ],
                ),
              ),
            ],
          ),
        ),
>>>>>>> Stashed changes
      ),
    );
  }
}
