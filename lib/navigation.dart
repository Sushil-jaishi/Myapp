import 'package:flutter/material.dart';
import 'package:myapp/eLearning.dart';
import 'package:myapp/payments.dart';
import 'package:myapp/profileScreen.dart';
import 'dashboardScreen.dart';

class Navigation extends StatefulWidget {
  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int Index = 0;
  String pagename = 'Home';
  final List<Widget> tabs = [
    DashboardScreen(),
    ELearning(),
    Payments(),
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
        iconSize: 25,
        selectedFontSize: 15,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(fontSize: 12),
        currentIndex: Index,
        selectedIconTheme: IconThemeData(
          size: 30,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'E-Learning',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payments',
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
            pagename = 'E-Learning';
          } else if (index == 2) {
            pagename = 'Payments';
          } else if (index == 3) {
            pagename = 'Profile';
          }
          setState(() {});
        },
      ),
    );
  }
}
