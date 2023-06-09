import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool icon = true;
  IconData iconChange = Icons.visibility;
  bool passText = true;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _key = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: EdgeInsets.all(15),
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      //Image
                      Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.2),
                          height: 90,
                          child: Center(
                              child:
                                  Image.asset('assets/images/sofseetech.png'))),
                      Container(
                        child: Form(
                          key: _key,
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
                              //Username
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: usernameController,
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
                              //Password
                              TextFormField(
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Required';
                                  } else if (value.length < 6) {
                                    return 'Weak password';
                                  } else {
                                    return null;
                                  }
                                },
                                controller: passwordController,
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
                              //Login Button
                              Container(
                                width: double.infinity,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(
                                        width: 1.6,
                                        color: Color.fromRGBO(0, 0, 100, 1))),
                                child: OutlinedButton(
                                  onPressed: () {
                                    if (_key.currentState!.validate()) {
                                      userlogin();
                                    }
                                  },
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
                      ),
                    ],
                  ),
                ),
                //Footer Icon
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
                          child: Image.asset('assets/images/sofseetech.png'))
                    ],
                  ),
                ),
              ],
            )));
  }

  void userlogin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text.toString(),
          password: passwordController.text.toString());
      var isloggedin = await SharedPreferences.getInstance();
      isloggedin.setBool('login', true);
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Navigation();
        },
      ));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('wrong username')));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('wrong password')));
      }
    }
  }
}
