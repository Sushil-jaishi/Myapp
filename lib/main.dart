import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/splashScreen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  final Future<FirebaseApp> _initialization=Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
        builder: (context,snapshot){
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sofsee',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: SplashScreen(),
      );
    });


  }
}
