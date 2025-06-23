import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  final List<Map<String, String>> notifications = const [
    {
      'title': 'Class Reminder',
      'message': 'Your Math class starts at 10 AM today.',
      'time': '2 hrs ago',
      'icon': '📘'
    },
    {
      'title': 'New Assignment',
      'message': 'You’ve received a new assignment in Science.',
      'time': '5 hrs ago',
      'icon': '🧪'
    },
    {
      'title': 'Exam Schedule',
      'message': 'Mid-term exam schedule has been published.',
      'time': '1 day ago',
      'icon': '📅'
    },
    {
      'title': 'Fee Payment',
      'message': 'Your tuition fee is due next week.',
      'time': '3 days ago',
      'icon': '💰'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final item = notifications[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Text(
                item['icon']!,
                style: const TextStyle(fontSize: 28),
              ),
              title: Text(item['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(item['message']!),
              trailing: Text(
                item['time']!,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
          );
        },
      ),
    );
  }
}
