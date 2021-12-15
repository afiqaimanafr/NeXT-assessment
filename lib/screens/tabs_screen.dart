// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:iss_next_assessment/constant.dart';
import 'package:iss_next_assessment/screens/extension_b_screen.dart';
import 'package:iss_next_assessment/screens/home_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/bottom-tabs';
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    HomeScreen(),
    ExtensionBScreen(),
  ];

  int _selectedPageIndex = 0;

  @override
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: kPrimaryColor,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Extension A and C'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            title: Text('Extension B'),
          ),
        ],
      ),
    );
  }
}
