import 'package:flutter/material.dart';

class MainCafeteriaMenuList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 428,
          height: 1024,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 131,
                top: 81,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Main',
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
                      left: 61,
                      top: 0,
                      child: Text(
                        'Cafeteria',
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
                left: 32,
                top: 45,
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      top: 0,
                      child: Text(
                        'back',
                        style: TextStyle(
                          color: Color(0xFF292D32),
                          fontSize: 20,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 24,
                top: 139,
                child: Container(
                  width: 450,
                  height: 33,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 150,
                        top: 0,
                        child: Container(
                          width: 104,
                          height: 33,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF5B358),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 5.48,
                        child: SizedBox(
                          width: 115,
                          height: 20.82,
                          child: Text(
                            'Rice and Curry',
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 16,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 163,
                        top: 5,
                        child: SizedBox(
                          width: 78,
                          height: 21,
                          child: Text(
                            'Fried Rice',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 274,
                        top: 6,
                        child: SizedBox(
                          width: 176,
                          height: 21,
                          child: Text(
                            'Snacks & Short Eats',
                            style: TextStyle(
                              color: Color(0xFF292D32),
                              fontSize: 16,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 195,
                child: Container(
                  width: 428,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0x19292D32),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 225,
                child: Container(
                  width: 356,
                  height: 106,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 356,
                          height: 106,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF7F7F7),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 2,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFF5B358),
                              ),
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 17,
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/72x72"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 17,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Veggie',
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 65,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Rs. 120',
                            style: TextStyle(
                              color: Color(0xFFF5B358),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 41,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Fried Rice',
                            style: TextStyle(
                              color: Color(0xFFA6A6AD),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 46,
                        child: SizedBox(
                          width: 24,
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 279,
                        top: 46,
                        child: Container(
                          width: 14,
                          height: 14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.67,
                                top: 4.67,
                                child: Opacity(
                                  opacity: 0.40,
                                  child: Container(
                                    width: 4.67,
                                    height: 4.67,
                                    child: Stack(children: []),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 361,
                child: Container(
                  width: 356,
                  height: 106,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 356,
                          height: 106,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF7F7F7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 17,
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/72x72"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 17,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Egg',
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 65,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Rs. 170',
                            style: TextStyle(
                              color: Color(0xFFF5B358),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 41,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Fried Rice',
                            style: TextStyle(
                              color: Color(0xFFA6A6AD),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 46,
                        child: SizedBox(
                          width: 24,
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 279,
                        top: 46,
                        child: Container(
                          width: 14,
                          height: 14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.67,
                                top: 4.67,
                                child: Opacity(
                                  opacity: 0.40,
                                  child: Container(
                                    width: 4.67,
                                    height: 4.67,
                                    child: Stack(children: []),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 497,
                child: Container(
                  width: 356,
                  height: 106,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 356,
                          height: 106,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF7F7F7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 17,
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/72x72"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 17,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Omlet',
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 65,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Rs. 170',
                            style: TextStyle(
                              color: Color(0xFFF5B358),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 41,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Fried Rice',
                            style: TextStyle(
                              color: Color(0xFFA6A6AD),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 46,
                        child: SizedBox(
                          width: 24,
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 279,
                        top: 46,
                        child: Container(
                          width: 14,
                          height: 14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.67,
                                top: 4.67,
                                child: Opacity(
                                  opacity: 0.40,
                                  child: Container(
                                    width: 4.67,
                                    height: 4.67,
                                    child: Stack(children: []),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 633,
                child: Container(
                  width: 356,
                  height: 106,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 356,
                          height: 106,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF7F7F7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 17,
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/72x72"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 17,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Fish',
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 65,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Rs. 200',
                            style: TextStyle(
                              color: Color(0xFFF5B358),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 41,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Fried Rice',
                            style: TextStyle(
                              color: Color(0xFFA6A6AD),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 46,
                        child: SizedBox(
                          width: 24,
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 279,
                        top: 46,
                        child: Container(
                          width: 14,
                          height: 14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.67,
                                top: 4.67,
                                child: Opacity(
                                  opacity: 0.40,
                                  child: Container(
                                    width: 4.67,
                                    height: 4.67,
                                    child: Stack(children: []),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 31,
                top: 769,
                child: Container(
                  width: 356,
                  height: 106,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 356,
                          height: 106,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF7F7F7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        top: 17,
                        child: Container(
                          width: 72,
                          height: 72,
                          decoration: ShapeDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://via.placeholder.com/72x72"),
                              fit: BoxFit.fill,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(19),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 17,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Chicken',
                            style: TextStyle(
                              color: Color(0xFF2A2D37),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 112,
                        top: 65,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Rs. 270',
                            style: TextStyle(
                              color: Color(0xFFF5B358),
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 113,
                        top: 41,
                        child: SizedBox(
                          width: 145,
                          child: Text(
                            'Fried Rice',
                            style: TextStyle(
                              color: Color(0xFFA6A6AD),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 300,
                        top: 46,
                        child: SizedBox(
                          width: 24,
                          child: Text(
                            'Add',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 279,
                        top: 46,
                        child: Container(
                          width: 14,
                          height: 14,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 4.67,
                                top: 4.67,
                                child: Opacity(
                                  opacity: 0.40,
                                  child: Container(
                                    width: 4.67,
                                    height: 4.67,
                                    child: Stack(children: []),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 36,
                top: 917,
                child: Container(
                  width: 356,
                  height: 77,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 356,
                          height: 77,
                          decoration: ShapeDecoration(
                            color: Color(0xFFF5B358),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37,
                        top: 20,
                        child: SizedBox(
                          width: 86,
                          child: Text(
                            'Total',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 214,
                        top: 21,
                        child: SizedBox(
                          width: 115,
                          child: Text(
                            'Rs. 270',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 37,
                        top: 44,
                        child: SizedBox(
                          width: 86,
                          child: Text(
                            'amount to pay',
                            style: TextStyle(
                              color: Color(0x7F2A2D37),
                              fontSize: 12,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
