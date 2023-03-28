import 'package:flutter/material.dart';
import 'package:myapp/profileScreen.dart';

import 'dashboardScreen.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var Index = 0;
  var pagename = 'Home';
  final tabs = [
    DashboardScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(pagename),
      ),
      body: tabs[Index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Index,
        selectedIconTheme: IconThemeData(size: 30),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (index) {
          Index = index;
          if (index == 0) {
            pagename = 'Home';
          } else if (index == 1) {
            pagename = 'Profile';
          }
          setState(() {});
        },
      ),
    );
  }
}
