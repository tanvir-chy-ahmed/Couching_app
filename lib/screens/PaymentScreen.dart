
import 'package:flutter/material.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedClass = 'All';
  String selectedMonth = 'June';
  String selectedStatus = 'All';

  List<Map<String, String>> students = [
    {
      'name': 'Tanvir Chowdhury',
      'class': '11th',
      'status': 'Paid',
      'image': 'assets/tan.png'
    },
    {
      'name': 'Aresha Chowhury',
      'class': '11th',
      'status': 'Paid',
      'image': 'assets/m1.png'
    },
    {
      'name': 'Olivia Bennett',
      'class': '12th',
      'status': 'Unpaid',
      'image': 'assets/user2.png'
    },
    {
      'name': 'Noah Thompson',
      'class': '12th',
      'status': 'Paid',
      'image': 'assets/user3.png'
    },
    {
      'name': 'Inaya Khan',
      'class': '10th',
      'status': 'Paid',
      'image': 'assets/m2.png'
    },
    {
      'name': 'Ayesha hanum',
      'class': '12th',
      'status': 'Unpaid',
      'image': 'assets/f3.png'
    },
    {
      'name': 'Olivia Bennett',
      'class': '12th',
      'status': 'Unpaid',
      'image': 'assets/user2.png'
    },
    {
      'name': 'Khan ahmed',
      'class': '12th',
      'status': 'Paid',
      'image': 'assets/khan.jpg'
    },

  ];

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> filteredStudents = students.where((student) {
      final matchClass = selectedClass == 'All' || student['class'] == selectedClass;
      final matchStatus = selectedStatus == 'All' || student['status'] == selectedStatus;
      return matchClass && matchStatus;
    }).toList();

    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  dropdown('Class', ['All', '9D', '10A', '11B', '12C'], (val) {
                    setState(() => selectedClass = val);
                  }),
                  dropdown('Month', ['June', 'May', 'April'], (val) {
                    setState(() => selectedMonth = val);
                  }),
                  dropdown('Status', ['All', 'Paid', 'Unpaid'], (val) {
                    setState(() => selectedStatus = val);
                  }),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredStudents.length,
                itemBuilder: (context, index) {
                  final student = filteredStudents[index];
                  return studentCard(
                    name: student['name']!,
                    className: student['class']!,
                    status: student['status']!,
                    image: student['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget dropdown(String label, List<String> options, ValueChanged<String> onChanged) {
    String currentValue = label == 'Class'
        ? selectedClass
        : label == 'Month'
        ? selectedMonth
        : selectedStatus;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(
        value: currentValue,
        icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
        dropdownColor: Colors.grey[900],
        style: const TextStyle(color: Colors.white),
        underline: const SizedBox(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            onChanged(newValue);
          }
        },
        items: options.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }


  Widget studentCard({
    required String name,
    required String className,
    required String status,
    required String image,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey, // Grey border
          // width: 1,           // Width 2
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Student', style: TextStyle(color: Colors.grey)),
                Text(
                  name,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text('Class $className', style: const TextStyle(color: Colors.blue)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: status == 'Paid' ? Colors.blue[50] : Colors.grey[200],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Icon(
                  status == 'Paid' ? Icons.check : Icons.close,
                  size: 16,
                  color: status == 'Paid' ? Colors.blue : Colors.black54,
                ),
                const SizedBox(width: 4),
                Text(status),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
