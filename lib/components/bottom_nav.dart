import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTabSelected;

  const CustomBottomNav({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      index: selectedIndex,
      backgroundColor: Colors.transparent,
      color: Colors.deepPurple,
      buttonBackgroundColor: Colors.black,
      animationDuration: const Duration(milliseconds: 300),
      items: const [
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.people, color: Colors.white),
        Icon(Icons.schedule, color: Colors.white),
        Icon(Icons.payment, color: Colors.white),
        Icon(Icons.person, color: Colors.white),
      ],
      onTap: onTabSelected,
    );
  }
}
