import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:canteen_flow_app/screen/home.dart';
import 'package:canteen_flow_app/screen/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 4) {
      return 'Password must be at least 4 characters long';
    }
    return null;
  }

  Future<void> loginUser() async {
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      // Show a message or perform an action indicating that fields are empty
      print('Please enter both email and password');
      return;
    } else {
      // Print entered email and password
      print('Entered Email: ${_emailController.text}');
      print('Entered Password: ${_passwordController.text}');
    }

    var reqBody = {
      "email": _emailController.text,
      "password": _passwordController.text,
    };

    try {
      await dotenv.load();
      String backend = dotenv.env['BACKEND'] as String;
      final String loginUrl = '$backend/login';

      Dio dio = Dio();

      final Response response = await dio.post(
        loginUrl,
        data: reqBody,
      );

      var jsonResponse = response.data;
      if (jsonResponse['status']) {
        var myToken = jsonResponse['token'];

        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', myToken);

        setState(() {
          // Trigger a rebuild to update the UI
        });

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(token: myToken, userEmail: _emailController.text),
          ),
        );

      } else {
        print('Login failed: ${jsonResponse['message']}');
        // Handle login failure, show an error message or perform other actions
      }
    } catch (error) {
      print("Login failed: $error");
      // Handle error, such as showing a snackbar or an alert dialog
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: 'Enter your email',
                              filled: true,
                              fillColor: Color(0xFFF1F4FF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            validator: _validateEmail,
                          ),
                          const SizedBox(height: 30),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              filled: true,
                              fillColor: Color(0xFFF1F4FF),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                                borderSide: BorderSide(
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            validator: _validatePassword,
                            style: TextStyle(color: Colors.black),
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
                                if (_formKey.currentState!.validate()) {
                                  loginUser();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color.fromRGBO(245, 179, 88, 1),
                              ),
                              child: const Text(
                                'Sign In',
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const RegisterScreen(),
                                      ),
                                    );
                                  },
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
      ),
    );
  }
}
