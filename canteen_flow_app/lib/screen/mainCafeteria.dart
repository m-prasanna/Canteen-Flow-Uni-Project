import 'package:flutter/material.dart';

class MainCafeteria extends StatelessWidget {
  const MainCafeteria({super.key, required String cafeteriaName});

  Widget buildMenuItem(
      String imageUrl, String title, String subtitle, String price) {
    return Container(
      width: 256,
      height: 100,
      margin: EdgeInsets.only(bottom: 20),
      decoration: ShapeDecoration(
        color: Color(0xFFF7F7F7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 72,
            height: 72,
            margin: EdgeInsets.only(left: 20, top: 17),
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(19),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 145,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF2A2D37),
                    fontSize: 20,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 24),
              SizedBox(
                width: 145,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: Color(0xFFA6A6AD),
                    fontSize: 12,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 145,
                child: Text(
                  price,
                  style: TextStyle(
                    color: Color(0xFFF5B358),
                    fontSize: 20,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: 24,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTotalSection(String totalAmount) {
    return Container(
      width: 356,
      height: 77,
      decoration: ShapeDecoration(
        color: Color(0xFFF5B358),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          SizedBox(width: 37),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 86,
                child: Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: 86,
                child: Text(
                  'amount to pay',
                  style: TextStyle(
                    color: Color(0x7F2A2D37),
                    fontSize: 12,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          SizedBox(
            width: 115,
            child: Text(
              totalAmount,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(width: 37),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Replace with your UI implementation
          // ...

          // Example usage of buildMenuItem
          buildMenuItem("https://via.placeholder.com/72x72", 'Veggie',
              'Rice and Curry', 'Rs. 80'),
          SizedBox(height: 20),
          buildMenuItem("https://via.placeholder.com/72x72", 'Egg',
              'Rice and Curry', 'Rs. 150'),
          SizedBox(height: 20),
          buildMenuItem("https://via.placeholder.com/72x72", 'Omlet',
              'Rice and Curry', 'Rs. 150'),

          // ...

          // Example usage of buildTotalSection
          SizedBox(height: 20),
          buildTotalSection('Rs. 260'),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainCafeteria(cafeteriaName: "Your Cafeteria Name"),
  ));
}
