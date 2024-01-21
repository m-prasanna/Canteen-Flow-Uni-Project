import 'package:canteen_flow_app/screen/about.dart';
import 'package:canteen_flow_app/screen/feedback.dart';
import 'package:canteen_flow_app/screen/navdrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final token;

  const HomeScreen({@required this.token, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Image.asset(
          "assets/splash.png",
          height: 120,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      drawer: AppDrawer(
        about: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const About()),
          );
        },
        feedback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FeedbackScreen()),
          );
        },
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 428,
                height: 750,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      _buildCafeteriaContainer(
                        imageAsset: "assets/Resualt 1.png",
                        title: 'Main Cafeteria',
                      ),
                      SizedBox(height: 10),
                      _buildCafeteriaContainer(
                        imageAsset: "assets/Resualt 1.png",
                        title: 'Gallery Cafeteria',
                      ),
                      SizedBox(height: 10),
                      _buildCafeteriaContainer(
                        imageAsset: "assets/Resualt 1.png",
                        title: 'G Canteen',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCafeteriaContainer(
      {required String imageAsset, required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        height: 240,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 223,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageAsset),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(11),
              ),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality here
                },
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
