import 'package:flutter/material.dart';
Widget MyListTile(String title,IconData icon){
  return ListTile(
    title:Text(title,style: TextStyle(fontSize: 22,color: Colors.black),),
    leading: Icon(icon,size: 28,weight: 5),
  );
}