import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(190), // Set preferred height for the app bar
        child: AppBar(
          flexibleSpace: Container(
            height: 600,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Resualt 1.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
              'About',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                
              ),
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context); // Navigate back when the button is pressed
            },
          ),
          title: Text('Back'),
        ),
      ),
      body:Column(
          children: [
            Container(
              width: 428,
              height: 450,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24),
                          child: Text(
                            'back',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 40, left: 30, right: 30),
                    child: SizedBox(
                      width: 308,
                      height: 300,
                      child: Text(
                        'Our Canteen Flow mobile application build to access to the canteens from anywhere, make easier to see the available meals, what kind of rush and to decide what canteen is suitable for that available time. Stay turned with us for upcoming features.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      
    );
  }
}
