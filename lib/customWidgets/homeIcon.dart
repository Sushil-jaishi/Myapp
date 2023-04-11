import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget{
  final IconData? icon;
  final String text;
  final String imageUrl;
  HomeIcon({required this.text,this.icon=null, this.imageUrl='',});
  @override
  Widget build(BuildContext context) {
    if (icon !=null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
          ),
          Text(
            'Attendace',
            style: TextStyle(fontSize: 16),
          )
        ],
      );
    }else{
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

}