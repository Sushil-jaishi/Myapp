import 'package:flutter/material.dart';
import 'package:myapp/PasswordChangeScreen.dart';
import 'package:myapp/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Stack(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 30),
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/profile.png'),
                        ),
                      ),
                    ),
                  ),

                ]
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  children: [


                    Text('username',
                        style: TextStyle(fontSize: 30, color: Colors.black54)),
                    SizedBox(height: 5,),
                    Text('name@example.com',
                      style: TextStyle(fontSize: 20, color: Colors.black54),),
                    SizedBox(height: 20,),
                    Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width * 0.8,
                        height: 60,
                        child:  ElevatedButton(
                          onPressed: (){},
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(width: 15,),
                              Text('USER DETAILS',style: TextStyle(fontSize: 15),)
                            ],
                          ),
                        ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.8,
                      height: 60,
                      child:  ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return PasswordChange();
                          },));
                        },
                        child: Row(
                          children: [
                            Icon(Icons.lock),
                            SizedBox(width: 15,),
                            Text('CHANGE PASSWORD',style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.8,
                      height: 60,
                      child:  ElevatedButton(
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                            return LoginScreen();
                          },));
                        },
                        child: Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(width: 15,),
                            Text('LOGOUT',style: TextStyle(fontSize: 15),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
    );
  }

}