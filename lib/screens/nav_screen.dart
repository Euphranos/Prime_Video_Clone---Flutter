import 'package:flutter/material.dart';
import 'package:prime_video_clone/screens/screens.dart';
import 'package:prime_video_clone/widgets/custom_bottom_nav_bar.dart';

class NavScreen extends StatefulWidget {
  NavScreen({Key? key}) : super(key: key);

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  List bottomBarItems = [
    {
      'icon': const Icon(
        Icons.home_outlined,
      ),
      'activeIcon': const Icon(Icons.home),
      'label': 'Home',
    },
    {
      'icon': const Icon(Icons.download_outlined),
      'activeIcon': const Icon(Icons.download),
      'label': 'Downloads',
    },
    {
      'icon': const Icon(Icons.search),
      'activeIcon': const Icon(Icons.search),
      'label': 'Find',
    },
  ];

  int selectedIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    const Downloadscreen(),
    const FindScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
          bottomBarItems: bottomBarItems,
          selectedIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          }),
      body: IndexedStack(
        index: selectedIndex,
        children: screens,
      ),
    );
  }
}
