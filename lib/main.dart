import 'package:flutter/material.dart';
import 'package:myapp/splashScreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: SplashScreen(),
    );
  }
}
