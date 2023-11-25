import 'package:flutter/material.dart';
Widget TitleAndShowAllRow(String title){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
        Text('Show All',style: TextStyle(fontSize: 15,color: Colors.black),)
      ],
    ),
  );
}