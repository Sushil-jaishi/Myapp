import 'package:flutter/material.dart';
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
      body: ElevatedButton(
        onPressed: ()async{
          var isLoggedIn = await SharedPreferences.getInstance();
          isLoggedIn.setBool('LOGIN', false);
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return LoginScreen();
          },));
        },
        child: Text('LOGOUT'),
      ),
    );
  }
}
