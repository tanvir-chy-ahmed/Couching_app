import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final List<Map<String, String>> allSchedule = [
    {
      "day": "Monday",
      "subject": "Math 101",
      "category": "Math",
      "image": "assets/mark.jpg",
    },
    {
      "day": "Tuesday",
      "subject": "Science 101",
      "category": "Science",
      "image": "assets/squid.jpg",
    },
    {
      "day": "Wednesday",
      "subject": "Math 102",
      "category": "Math",
      "image": "assets/ai.jpg",
    },
    {
      "day": "Thursday",
      "subject": "Science 102",
      "category": "Science",
      "image": "assets/phy.jpg",
    },
    {
      "day": "Friday",
      "subject": "Math 103",
      "category": "Math",
      "image": "assets/munjareen.png",
    },
    {
      "day": "Saturday",
      "subject": "Science 103",
      "category": "Science",
      "image": "assets/buis.png",
    },
    {
      "day": "Sunday",
      "subject": "Free Day",
      "category": "All",
      "image": "assets/pra.jpg",
    },
  ];

  final List<String> filters = ["All Classes", "Math", "Science"];
  String selectedFilter = "All Classes";

  List<Map<String, String>> get filteredSchedule {
    if (selectedFilter == "All Classes") return allSchedule;
    return allSchedule
        .where((item) => item["category"] == selectedFilter)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Class Schedule",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Filter Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: filters.map((filter) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: FilterChip(
                    label: Text(filter),
                    labelStyle: TextStyle(
                      color: selectedFilter == filter ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    selected: selectedFilter == filter,
                    onSelected: (val) {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    backgroundColor: Colors.grey[200],
                    selectedColor: Colors.deepPurple,
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),
          // Schedule List
          Expanded(
            child: ListView.builder(
              itemCount: filteredSchedule.length,
              itemBuilder: (context, index) {
                final item = filteredSchedule[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Text Section
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["day"]!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              item["subject"]!,
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Image Section
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          item["image"]!,
                          height: 60,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
