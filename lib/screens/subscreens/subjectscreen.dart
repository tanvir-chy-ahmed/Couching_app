import 'package:flutter/material.dart';

class Subject6Screen extends StatelessWidget {
  const Subject6Screen({super.key});

  // Dummy subject data grouped by class
  final List<Map<String, dynamic>> classGroups = const [
    {
      'className': 'Class 9',
      'subjects': [
        {
          'title': 'Science',
          'description': 'Physics, Chemistry, Biology basics',
          'image': 'assets/science.png',
        },
        {
          'title': 'Mathematics',
          'description': 'Algebra, Geometry, Trigonometry',
          'image': 'assets/math.png',
        },
      ],
    },
    {
      'className': 'Class 10',
      'subjects': [
        {
          'title': 'Bangla Literature',
          'description': 'Poetry, novels, and grammar',
          'image': 'assets/bangla.png',
        },
        {
          'title': 'ICT',
          'description': 'Basics of Information & Tech',
          'image': 'assets/ict.png',
        },
      ],
    },
    {
      'className': 'HSC (Class 11-12)',
      'subjects': [
        {
          'title': 'Accounting',
          'description': 'Financial, cost & management accounting',
          'image': 'assets/accounting.png',
        },
        {
          'title': 'Economics',
          'description': 'Micro & Macro Economics',
          'image': 'assets/economics.png',
        },
        {
          'title': 'Biology',
          'description': 'Human anatomy, botany, genetics',
          'image': 'assets/biology.png',
        },
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subjects by Class'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: classGroups.length,
        itemBuilder: (context, index) {
          final classData = classGroups[index];
          final subjects = classData['subjects'] as List;

          return ExpansionTile(
            title: Text(
              classData['className'],
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            children: subjects.map<Widget>((subject) {
              return ListTile(
                leading: Image.asset(
                  subject['image'],
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
                title: Text(subject['title']),
                subtitle: Text(subject['description']),
                onTap: () {
                  // TODO: Navigate to subject details if needed
                },
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
