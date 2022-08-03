// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final List bottomBarItems;
  final int selectedIndex;
  final Function(int) onTap;
  const CustomBottomNavBar({
    Key? key,
    required this.bottomBarItems,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      currentIndex: selectedIndex,
      onTap: onTap,
      unselectedItemColor: Colors.white.withOpacity(0.6),
      selectedItemColor: Colors.white,
      iconSize: 30,
      selectedFontSize: 16,
      unselectedFontSize: 16,
      items: List.generate(bottomBarItems.length, (index) {
        return BottomNavigationBarItem(
            icon: bottomBarItems[index]['icon'],
            activeIcon: bottomBarItems[index]['activeIcon'],
            label: bottomBarItems[index]['label']);
      }),
    );
  }
}
