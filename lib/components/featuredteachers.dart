import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageRowDemo extends StatelessWidget {
  const ImageRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // List of images with names and subjects
    final List<Map<String, String>> imageData = [
      {'path': 'assets/pra.jpg', 'name': 'Prashant', 'subject': 'Economics'},
      {'path': 'assets/tan.png', 'name': 'Tanvir', 'subject': 'CS'},
      {'path': 'assets/badol.jpg', 'name': 'Badol', 'subject': 'Physics'},
      {'path': 'assets/pavel.png', 'name': 'Pavel', 'subject': 'Robotics'},
      {'path': 'assets/me.jpg', 'name': 'Areesha', 'subject': 'CS'},
      {'path': 'assets/putin.png', 'name': 'Putin', 'subject': 'History'},
      {'path': 'assets/asor.jpg', 'name': 'Afsor', 'subject': 'Biology'},
      {'path': 'assets/elon.png', 'name': 'Elon', 'subject': 'Buissness'},
      {'path': 'assets/recep.jpg', 'name': 'Recep', 'subject': 'Politics'},
      {'path': 'assets/user1.png', 'name': 'Afnan', 'subject': 'Biology'},
      {'path': 'assets/user2.png', 'name': 'Ayesha', 'subject': 'English'},
      {'path': 'assets/user3.png', 'name': 'Inaya', 'subject': 'Economics'},
      {'path': 'assets/user4.png', 'name': 'Rahid', 'subject': 'Science'},
      {'path': 'assets/user5.png', 'name': 'Joglo', 'subject': 'Geography'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: imageData.map((item) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      item['path']!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    item['name']!,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    item['subject']!,
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
