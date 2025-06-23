import 'package:flutter/material.dart';
import 'package:success_academy_v1/screens/subscreens/DeveloperScreen.dart';
import 'package:success_academy_v1/screens/subscreens/NotificationScreen.dart';
import 'package:success_academy_v1/screens/subscreens/subjectscreen.dart';

class TopDrawer extends StatelessWidget {
  const TopDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Drawer Header
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            accountName: Text("Success Academy"),
            accountEmail: Text("support@successacademy.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/sa.png'), // Replace with your logo
            ),
          ),

          // Navigation items
          ListTile(
            leading: Icon(Icons.home, color: Colors.deepPurple),
            title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.book, color: Colors.deepPurple),
            title: Text("Subjects"),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Subject6Screen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.grade, color: Colors.deepPurple),
            title: Text("Results"),
            onTap: () {
              // Button click logic
              ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Currently Result is not Published")),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications, color: Colors.deepPurple),
            title: Text("Notifications"),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> NotificationScreen()));
            },
          ),

          Divider(),

          // Developer Section
          ListTile(
            leading: Icon(Icons.developer_mode, color: Colors.teal),
            title: Text("Developer"),
            subtitle: Text("Tanvir Ahmed (Chy)"),
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=> DeveloperScreen()));
            },
          ),
          ListTile(
            leading: Icon(Icons.info_outline, color: Colors.blueGrey),
            title: Text("App Version"),
            subtitle: Text("1.0.0"),
            onTap: () {},
          ),

          Divider(),

          // Logout
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text("Logout"),
            onTap: () {
              // Show confirmation
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Logout"),
                  content: Text("Are you sure you want to logout?"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Cancel"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // TODO: Add logout logic
                      },
                      child: Text("Logout"),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
