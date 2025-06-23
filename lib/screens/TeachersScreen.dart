import 'package:flutter/material.dart';
import 'package:success_academy_v1/MainScreen.dart';
import 'package:success_academy_v1/screens/HomeScreen.dart';

class TeachersScreen extends StatelessWidget {
  final List<Map<String, String>> teachers = [
    {
      "name": "Ms. Evelyn Reed",
      "subject": "Math",
      "image": "assets/user1.png",
    },
    {
      "name": "Mr. Ethan Carter",
      "subject": "Science",
      "image": "assets/user2.png",
    },
    {
      "name": "Ms. Olivia Hayes",
      "subject": "English",
      "image": "assets/user3.png",
    },
    {
      "name": "Mr. Noah Bennett",
      "subject": "History",
      "image": "assets/user4.png",
    },
    {
      "name": "Ms. Amelia Foster",
      "subject": "Physics",
      "image": "assets/user5.png",
    },
    {
      "name": "Mr. Lucas Parker",
      "subject": "Chemistry",
      "image": "assets/me.jpg",
    },
    {
      "name": "Tanvir ahmed (chy)",
      "subject": "Computer Science",
      "image": "assets/tan.png",
    },
    {
      "name": "Mr. Badol Khan",
      "subject": "Accounting",
      "image": "assets/badol.jpg",
    },
    {
      "name": "Professor Hachink",
      "subject": "Law",
      "image": "assets/recep.jpg",
    },
    {
      "name": "Professor Putin",
      "subject": "Political",
      "image": "assets/putin.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Teachers", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        // leading: InkWell(onTap: () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => MainScreen())
        //   );
        // }, child: Icon(Icons.arrow_back_ios, color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: teachers.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2.4, // ⬅️ Increase height here
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final teacher = teachers[index];
            return Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(teacher["image"]!),
                    radius: 28, // Increased slightly for better visual
                  ),
                  SizedBox(height: 10),
                  Text(
                    teacher["name"]!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 6),
                  Text(
                    teacher["subject"]!,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          },
        ),

      ),
    );
  }
}
