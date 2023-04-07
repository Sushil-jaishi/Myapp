import 'package:flutter/material.dart';
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
          Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/teachingicon.png'),
                        ),
                        Text(
                          'Online Class',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
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
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
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
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/exam.png'),
                        ),
                        Text(
                          'Exams',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/userclock.png'),
                        ),
                        Text(
                          'Leaves',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
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
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
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
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 45,
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
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.27,
                    height: MediaQuery.of(context).size.width * 0.27,
                    child: Column(
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
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text('Notice and Announcements',style: TextStyle(fontSize: 20),),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 100,
            color: Colors.red,
           child: Center(
             child: Text('Notice 1',style: TextStyle(fontSize: 16),),
           ),
          ),Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text('Notice 1',style: TextStyle(fontSize: 16),),
            ),
          ),Container(
            height: 100,
            color: Colors.yellow,
            child: Center(
              child: Text('Notice 1',style: TextStyle(fontSize: 16),),
            ),
          )
        ],
      ),
    ));
  }
}
