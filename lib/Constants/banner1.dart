import 'package:flutter/material.dart';
import 'package:grocery_app/Constants/constants.dart';
Widget Banner1(){
  return Card(
    shadowColor: Colors.green,
    child: Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
          color: Colors.grey,
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage('https://img.freepik.com/premium-psd/vegetable-grocery-delivery-promotion-web-banner-facebook-cover-instagram-template_502896-109.jpg')
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
              child: Text('30% Off ',style: bannertitlestyle1,)),
          Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('On All Vegetables',style: bannertitlestyle2,))
        ],
      ),
    ),
  );
}