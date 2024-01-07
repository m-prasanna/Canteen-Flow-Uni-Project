import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            
            decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Resualt 1.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ), child: null,
            
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('About'),
            onTap: () {
              // Add functionality for the Home drawer item
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('feedback & rate'),
            onTap: () {
              // Add functionality for the Settings drawer item
              Navigator.pop(context); // Close the drawer
            },
          ),

          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('exit'),
            onTap: () {
              // Add functionality for the Settings drawer item
              Navigator.pop(context); // Close the drawer
            },
          ),
          // Add more ListTile widgets for additional items
        ],
      ),
    );
  }
}
