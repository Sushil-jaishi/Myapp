import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyApp',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: HomeScreen(),
    );
  }

}

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(25),
        child: Column(
          children: [
            Expanded(
              flex: 8,
                /**********************************LOGO IMAGE**************************************/
                child: Container(
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                          ),
                          Container(
                            width: 200,
                              child: Image.asset('assets/images/sofseetech.png')
                          )
                        ],
                      ),

                  ),
                )
            ),
            Expanded(
              flex: 10,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.black54,fontWeight: FontWeight.w500),)
                    ),
                    Container(
                      height: 10,
                    ),
                    /**********************************USERNAME**************************************/
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: Color.fromRGBO(0, 0, 100, 1)),
                        labelText: 'Username',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            width: 1.9,
                            color: Color.fromRGBO(0, 0, 100, 1),
                          )

                        )
                      ),
                    ),
                    Container(height: 15,),
                    /**********************************PASSWORD**************************************/
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Color.fromRGBO(0, 0, 100, 1)),
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {

                              });
                            },
                            icon: Icon(Icons.visibility),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7),
                              borderSide: BorderSide(
                                width: 1.9,
                                color: Color.fromRGBO(0, 0, 100, 1),
                              )

                          )
                      ),
                    ),
                    Container(
                      height: 15,
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text('Forgot Password?'),
                    ),
                    Container(height: 15,),
                    /**********************************LOGIN BUTTON**************************************/
                    Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(width: 1.9,color: Color.fromRGBO(0, 0, 100, 1)
                        )
                      ),
                      child: OutlinedButton(
                        onPressed: (){},
                        child: Text('LOGIN',style: TextStyle(color: Color.fromRGBO(0, 0, 100, 1)),),
                          ),
                    )
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}