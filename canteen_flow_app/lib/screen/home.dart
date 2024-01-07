import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
                width: 428,
                height: 926,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 134,
                      top: 41,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Text(
                              'Canteen',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF101314),
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: -1.44,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 99,
                            top: 0,
                            child: Text(
                              'Flow.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFFF5B358),
                                fontSize: 24,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w800,
                                height: 0,
                                letterSpacing: -1.44,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 141,
                      child: Container(
                        width: 356,
                        height: 223,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 356,
                                height: 223,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/Resualt 1.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 69,
                              top: 94,
                              child: Text(
                                'Main Cafeteria',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 396,
                      child: Container(
                        width: 356,
                        height: 223,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 356,
                                height: 223,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/Resualt 1.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 51,
                              top: 94,
                              child: Text(
                                'Gallery Cafeteria',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 37,
                      top: 651,
                      child: Container(
                        width: 356,
                        height: 223,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 356,
                                height: 223,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/Resualt 1.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 100,
                              top: 94,
                              child: Text(
                                'G Canteen',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    
                  ],
                ),
              )
        ],
      ),
    );
  }
}
