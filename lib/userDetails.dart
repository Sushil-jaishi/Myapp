import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget{
  var title=[
    'Name :','Gender :','Class :','Phone No. :'
  ];
  var value=[
    'Sushil','Boy','12','1234567890'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Username"),
      ),
      body:ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Row(
          children: [
            Text(title[index],style: TextStyle(fontWeight: FontWeight.bold),),
            Text(value[index])
          ],
        ),);
      },
      itemCount: 4,
      )
    );

  }

}