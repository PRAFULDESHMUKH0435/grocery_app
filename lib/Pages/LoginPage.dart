import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

import '../Constants/constants.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Images/background.png'),fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Sign In To Continue',style: signinstyle,),
                Text('Vegi',style: vegistyle,)
              ],
            ),
          ),
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SignInButton(Buttons.google, onPressed: (){}),
                SignInButton(Buttons.apple, onPressed: (){}),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('By Signing You Are Agreeing To Our',style: signingstyle,),
                  Text('Terms and Privacy Policy',style: termsandprivacypolicy,)
                ],
              ),
            ),

        ],
      ),
    );
  }
}
