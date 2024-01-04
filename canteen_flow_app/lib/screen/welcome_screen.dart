import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Resualt 1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 5,
                      ),
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFFFDFDFF),
                          fontSize: 23,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                    Container(
                      width: 400,
                      height: 329,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/splash.png",
                            height: 120,
                          ),
                          const SizedBox(height: 8.0),
                          const Text(
                            'Explore all the existing foods based on your interest',
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 20.0),
                          SizedBox(
                            width: 200, // Adjust the width of the buttons as needed
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(245, 179, 88, 1), // Set your desired background color
                              ),
                              child: const Text('Login'),
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          SizedBox(
                            width: 200, // Adjust the width of the buttons as needed
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromARGB(255, 248, 248, 248),
                                elevation: 5, // Set the elevation for the box shadow
                                shadowColor: Colors.black, // Set your desired background color
                              ),
                              child: const Text('Register'),
                            ),
                          ),
                        ],
                      ),
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
