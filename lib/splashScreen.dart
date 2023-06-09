import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/navigation.dart';
import 'package:myapp/loginScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Container(
            height: 90,
            child: Center(child: Image.asset('assets/images/sofseetech.png'))),
      ),
    );
  }

  void checkLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? isLoggedIn = pref.getBool('login');
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          if (isLoggedIn != null) {
            if (isLoggedIn) {
              return Navigation();
            } else {
              return LoginScreen();
            }
          } else {
            return LoginScreen();
          }
        },
      ));
    });
  }
}
