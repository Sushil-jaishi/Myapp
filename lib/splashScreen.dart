import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/NavigationBar.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 1), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Navigation();
        },
      ));
    });
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
}
