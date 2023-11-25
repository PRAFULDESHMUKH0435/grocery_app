import 'package:flutter/material.dart';
import 'package:grocery_app/Constants/constants.dart';
import 'package:grocery_app/Pages/SplashPage.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: appbarcolor,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
