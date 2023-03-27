import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  dynamic icon;
  dynamic iconChange;
  dynamic passText;

  void initState() {
    passText = true;
    icon = true;
    if (icon) {
      iconChange = Icons.visibility;
    } else {
      iconChange = Icons.visibility_off;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(15),
                child: Stack(
                  children: [
                    /**********************************IMAGE****************************************/
                    Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.2),
                        height: 90,
                        child: Center(
                            child:
                                Image.asset('assets/images/sofseetech.png'))),
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.35),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          /********************************USERNAME**************************************/
                          TextField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person,
                                    color: Color.fromRGBO(0, 0, 100, 1)),
                                labelText: 'Username',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                      width: 1.6,
                                      color: Color.fromRGBO(0, 0, 100, 1),
                                    ))),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          /**********************************PASSWORD**************************************/
                          TextField(
                            obscureText: passText,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,
                                    color: Color.fromRGBO(0, 0, 100, 1)),
                                labelText: 'Password',
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    icon = !icon;
                                    passText = !passText;
                                    if (icon) {
                                      iconChange = Icons.visibility;
                                    } else {
                                      iconChange = Icons.visibility_off;
                                    }
                                    setState(() {});
                                  },
                                  icon: Icon(iconChange),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(7),
                                    borderSide: BorderSide(
                                      width: 1.6,
                                      color: Color.fromRGBO(0, 0, 100, 1),
                                    ))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text('Forgot Password?'),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          /**********************************LOGIN BUTTON**************************************/
                          Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(
                                    width: 1.6,
                                    color: Color.fromRGBO(0, 0, 100, 1))),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 100, 1)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    /*****************************************FOOTER ICON****************************************/
                    Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.88,
                          left: MediaQuery.of(context).size.width * 0.3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Powered by'),
                          Container(
                              height: 40,
                              child:
                                  Image.asset('assets/images/sofseetech.png'))
                        ],
                      ),
                    ),
                  ],
                ))));
  }
}
