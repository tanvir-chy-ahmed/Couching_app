import 'package:flutter/material.dart';
import 'package:success_academy_v1/components/top_bar.dart';
import 'package:success_academy_v1/components/bottom_nav.dart';
import 'package:success_academy_v1/components/top_drawer.dart';
import 'package:success_academy_v1/screens/HomeScreen.dart';
import 'package:success_academy_v1/screens/PaymentScreen.dart';
import 'package:success_academy_v1/screens/ProfileScreen.dart';
import 'package:success_academy_v1/screens/ScheduleScreen.dart';
import 'package:success_academy_v1/screens/TeachersScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    TeachersScreen(),
    ScheduleScreen(),
    PaymentScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: TopDrawer(),
      appBar: const CustomTopBar(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomBottomNav(
        selectedIndex: _selectedIndex,
        onTabSelected: _onItemTapped,
      ),
    );
  }
}
