import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/HomePage.dart';
import 'package:grocery_app/Providers/ProductProvider.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../Constants/constants.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Flutter Grocery Shop',style: splashscreentitlestyle,),
          Center(
            child: Container(
              height: 300,
              child: Lottie.asset('assets/Lottie/animation.json'),
            ),
          )
        ],
      ),
    );
  }
}
