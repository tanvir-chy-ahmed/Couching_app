import 'package:flutter/material.dart';

// 🔹 Define the list widget as a method
Widget subjectListWidget() {
  final List<Map<String, String>> subjects = [
    {
      'class': 'Class 12',
      'subject': 'IELTS',
      'description': 'Study cell biology, genetics, and human physiology',
      'image': 'assets/munjareen.png',
    },
    {
      'class': 'Class 11',
      'subject': 'Accounting',
      'description':
          'Understand financial statements and bookkeeping fundamentals',
      'image': 'assets/squid.jpg',
    },
    {
      'class': 'Class 11',
      'subject': 'Physics',
      'description': 'Explore mechanics, waves, and thermodynamics in-depth',
      'image': 'assets/phy.jpg',
    },
    {
      'class': 'Class 11',
      'subject': 'Business Studies',
      'description': 'Learn about management, marketing, and business ethics',
      'image': 'assets/buis.png',
    },
    {
      'class': 'Class all',
      'subject': 'Ai',
      'description':
          'Basic ML,LLM,MCP & Agent ',
      'image': 'assets/ai.jpg',
    },
    {
      'class': 'Class 12',
      'subject': 'Chemistry',
      'description': 'Dive into organic, inorganic, and physical chemistry',
      'image': 'assets/chem.jpg',
    },
    {
      'class': 'Class 11',
      'subject': 'Finance & Banking',
      'description':
          'Learn about interest, savings, and modern banking systems',
      'image': 'assets/fn.png',
    },
    {
      'class': 'Class 12',
      'subject': 'ML',
      'description': 'Explore calculus, matrices, and advanced algebra',
      'image': 'assets/aii.jpg',
    },
  ];

  return SizedBox(
    height: 500,
    child: ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: subjects.length,
      itemBuilder: (context, index) {
        final item = subjects[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text section
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['class']!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item['subject']!,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item['description']!,
                      style: const TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              // Image section
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  item['image']!,
                  height: 80,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
