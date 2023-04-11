import 'package:flutter/material.dart';

class HomeIconFromImage extends StatelessWidget{
  final String imageUrl;
  final String text;
  HomeIconFromImage( {required this.imageUrl,required this.text });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 45,
          height: 45,
          child: Image.asset(imageUrl),
        ),
        SizedBox(
          height: 5,
        ),
        Text(text,
          style: TextStyle(fontSize: 16),
        )
      ],
    );
  }

}