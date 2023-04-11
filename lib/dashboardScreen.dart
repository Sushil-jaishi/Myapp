import 'package:flutter/material.dart';
import 'package:myapp/customWidgets/homeIcon.dart';
import 'package:myapp/imageSlider.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          ImageSlider(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  HomeIcon(text: 'Online Class', imageUrl: 'assets/images/teachingicon.png',),
                  HomeIcon(text: 'Timetable', icon: Icons.timer,),
                  HomeIcon(text: 'Attendace', icon: Icons.calendar_month,),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                  HomeIcon(text: 'Exams', imageUrl: 'assets/images/exam.png',),
                  HomeIcon(text: 'Leaves', imageUrl: 'assets/images/userclock.png',),
                  HomeIcon(text: 'Notice', icon: Icons.notifications,),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              HomeIcon(text: 'Complain', icon: Icons.message,),
              HomeIcon(text: 'More', imageUrl: 'assets/images/more.png',),
              HomeIcon(icon: Icons.calendar_month, text: 'Attendance'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Notice and Announcements',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text(
                'Notice 1',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text(
                'Notice 2',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.yellow,
            child: Center(
              child: Text(
                'Notice 3',
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
