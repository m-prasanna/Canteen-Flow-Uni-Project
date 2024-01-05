import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(
                    color: Color(0xFFF5B358),
                    fontSize: 30,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Create an account to give feedback to improve canteens.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF2A2D37),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Implement user button functionality
                      },
                      child: Text('User'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        // Implement admin button functionality
                      },
                      child: Text('Admin'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement sign-in functionality
                  },
                  child: Text('Sign in'),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    // Implement sign-up functionality
                  },
                  child: Text('Create new account'),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    // Navigate to login screen
                  },
                  child: Text('Already have an account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
