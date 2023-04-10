import 'package:flutter/material.dart';
import 'package:myapp/changePassword.dart';
import 'package:myapp/loginScreen.dart';
import 'package:myapp/userDetails.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
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
          SizedBox(
            height: 10,
          ),
          Text('username',
              style: TextStyle(fontSize: 30, color: Colors.black54)),
          SizedBox(
            height: 5,
          ),
          Text(
            'name@example.com',
            style: TextStyle(fontSize: 20, color: Colors.black54),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return UserDetails();
                  },
                ));
              },
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'USER DETAILS',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 60,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ChangePassword();
                  },
                ));
              },
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'CHANGE PASSWORD',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 60,
            child: ElevatedButton(
              onPressed: () async {
                var isloggedin = await SharedPreferences.getInstance();
                isloggedin.setBool('login', false);
                Navigator.pushReplacement(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              child: Row(
                children: [
                  Icon(Icons.logout),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'LOGOUT',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
