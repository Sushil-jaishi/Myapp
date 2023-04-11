import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool icon1 = true;
  IconData iconChange1 = Icons.visibility;
  bool passText1 = true;
  bool icon2 = true;
  IconData iconChange2 = Icons.visibility;
  bool passText2 = true;
  bool icon3 = true;
  IconData iconChange3 = Icons.visibility;
  bool passText3 = true;

  TextEditingController passwordController1 = TextEditingController();
  TextEditingController passwordController2 = TextEditingController();
  TextEditingController passwordController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Change Password'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    controller: passwordController1,
                    obscureText: passText1,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,
                            color: Color.fromRGBO(0, 0, 100, 1)),
                        labelText: 'Old Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            icon1 = !icon1;
                            passText1 = !passText1;
                            if (icon1) {
                              iconChange1 = Icons.visibility;
                            } else {
                              iconChange1 = Icons.visibility_off;
                            }
                            setState(() {});
                          },
                          icon: Icon(iconChange1),
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
                    height: 20,
                  ),
                  TextField(
                    controller: passwordController2,
                    obscureText: passText2,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,
                            color: Color.fromRGBO(0, 0, 100, 1)),
                        labelText: 'New Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            icon2 = !icon2;
                            passText2 = !passText1;
                            if (icon2) {
                              iconChange2 = Icons.visibility;
                            } else {
                              iconChange2 = Icons.visibility_off;
                            }
                            setState(() {});
                          },
                          icon: Icon(iconChange2),
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
                    height: 20,
                  ),
                  TextField(
                    controller: passwordController3,
                    obscureText: passText3,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,
                            color: Color.fromRGBO(0, 0, 100, 1)),
                        labelText: 'Verify Password',
                        suffixIcon: IconButton(
                          onPressed: () {
                            icon3 = !icon3;
                            passText3 = !passText3;
                            if (icon3) {
                              iconChange3 = Icons.visibility;
                            } else {
                              iconChange3 = Icons.visibility_off;
                            }
                            setState(() {});
                          },
                          icon: Icon(iconChange3),
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
                    height: 30,
                  ),
                  //Password change button
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(
                            width: 1.6, color: Color.fromRGBO(0, 0, 100, 1))),
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Change Password',
                        style: TextStyle(color: Color.fromRGBO(0, 0, 100, 1)),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
