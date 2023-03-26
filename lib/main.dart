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

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  dynamic icon;
  dynamic iconChange;
  dynamic passText;
  void initState() {
    passText=true;
    icon=true;
    if(icon){
      iconChange=Icons.visibility;
    }else{
      iconChange=Icons.visibility_off;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.all(15),
      children: [
        Container(
          height: 130,
        ),
        /**********************************IMAGE****************************************/
        Container(
            height: 90,
            child: Center(child: Image.asset('assets/images/sofseetech.png'))),
        Container(
          height: 40,
        ),
        Container(
            child: Text(
          'Login',
          style: TextStyle(
              fontSize: 25, color: Colors.black54, fontWeight: FontWeight.w500),
        )),
        Container(
          height: 15,
        ),
        /**********************************USERNAME**************************************/
        TextField(
          decoration: InputDecoration(
              prefixIcon:
                  Icon(Icons.person, color: Color.fromRGBO(0, 0, 100, 1)),
              labelText: 'Username',
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    width: 1.9,
                    color: Color.fromRGBO(0, 0, 100, 1),
                  ))),
        ),
        Container(
          height: 15,
        ),
        /**********************************PASSWORD**************************************/
        TextField(
          obscureText: passText,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock, color: Color.fromRGBO(0, 0, 100, 1)),
              labelText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  icon=!icon;
                  passText=!passText;
                  if(icon){
                    iconChange=Icons.visibility;
                  }else{
                    iconChange=Icons.visibility_off;
                  }
                  setState(() {});
                },
                icon: Icon(iconChange),
              ),
              enabledBorder:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    width: 1.9,
                    color: Color.fromRGBO(0, 0, 100, 1),
                  ))),
        ),
        Container(
          height: 10,
        ),
        Container(
          alignment: Alignment.topRight,
          child: Text('Forgot Password?'),
        ),
        Container(
          height: 10,
        ),
        /**********************************LOGIN BUTTON**************************************/
        Container(
          width: double.infinity,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border:
                  Border.all(width: 1.9, color: Color.fromRGBO(0, 0, 100, 1))),
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'LOGIN',
              style: TextStyle(color: Color.fromRGBO(0, 0, 100, 1)),
            ),
          ),
        )
      ],
    ));
  }
}
