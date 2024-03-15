import 'package:canteen_flow_app/screen/about.dart';
import 'package:canteen_flow_app/screen/feedback.dart';
import 'package:canteen_flow_app/screen/gCanteen.dart';
import 'package:canteen_flow_app/screen/galleryCafeteria.dart';
import 'package:canteen_flow_app/screen/mainCafeteria.dart';
import 'package:canteen_flow_app/screen/navdrawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final token;

  const HomeScreen({@required this.token, Key? key, required String userEmail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/splash.png",
          height: 100,
        ),
       
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
        }, userEmail: '',
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
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainCafeteria(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10),
                      _buildCafeteriaContainer(
                        imageAsset: "assets/Gallary.jpg",
                        title: 'Gallery Cafeteria',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GalleryCafeteria(),
                            ),
                          );
                        },
                      ),
                      SizedBox(height: 10),
                      _buildCafeteriaContainer(
                        imageAsset: "assets/G.jpg",
                        title: 'G Canteen',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => GCanteen(),
                            ),
                          );
                        },
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

  Widget _buildCafeteriaContainer({
    required String imageAsset,
    required String title,
    required VoidCallback onTap,
  }) {
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
                onPressed: onTap,
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
