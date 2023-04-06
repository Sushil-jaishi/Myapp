import 'package:flutter/material.dart';
import 'package:myapp/imageSlider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Stack(
          children: [
            ImageSlider(),
            Container(margin: EdgeInsets.only(top: 180),
              child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent:
                        (MediaQuery.of(context).size.width * 0.33)),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:50,
                        height: 50,
                        child: Image.asset('assets/images/teachingicon.png'),
                      ),
                      Text(
                        'Online Class',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timer,
                        size: 50,
                      ),
                      Text(
                        'Timetable',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 50,
                      ),
                      Text(
                        'Attendace',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:50,
                        height: 50,
                        child: Image.asset('assets/images/exam.png'),
                      ),
                      Text(
                        'Exams',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:50,
                        height: 50,
                        child: Image.asset('assets/images/userclock.png'),
                      ),
                      Text(
                        'Leaves',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications,
                        size: 50,
                      ),
                      Text(
                        'Notice',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.message,
                        size: 50,
                      ),
                      Text(
                        'Complain',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width:45,
                        height: 45,
                        child: Image.asset('assets/images/more.png'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'More',
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
