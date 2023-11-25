import 'package:flutter/material.dart';
Widget SearchContainer(){
  return Container(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderRadius: BorderRadius.circular(18.0),
                borderSide: BorderSide(style: BorderStyle.solid)
            ),
            hintText: 'Search For Items In Store ',
            filled: true,
            fillColor: Colors.grey,
            suffixIcon: Icon(Icons.search_outlined)
        ),
      ),
    ),
  );
}