import 'package:canteen_flow_app/screen/loging.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final Function() about;
  final Function() feedback;
  final String userEmail;

  const AppDrawer({Key? key, required this.about, required this.feedback, required this.userEmail});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Resualt 1.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  userEmail,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('About'),
            onTap: about,
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('feedback & rate'),
            onTap: feedback,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('exit'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

