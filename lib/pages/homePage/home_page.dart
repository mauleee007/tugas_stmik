import 'package:adrian_maulana_firdaus_2142425/utils/color/colors.dart';
import 'package:adrian_maulana_firdaus_2142425/utils/dimention/dimentions.dart';
import 'package:flutter/material.dart';

import '../../utils/widget/small_text.dart';
import '../activityPage/activity_page.dart';
import '../berandaPage/beranda_page.dart';
import '../profilePage/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    // Add your pages here
    Beranda(),
    ActivityPage(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: Dimensi.blockSizeVertical! * 1.5,
          unselectedFontSize: Dimensi.blockSizeVertical! * 1.2,
          iconSize: Dimensi.blockSizeVertical! * 3,
          elevation: 0,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.collections_rounded),
              label: 'Activity',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: ColorTheme.primaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
