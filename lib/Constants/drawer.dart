import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/HomePage.dart';
import 'package:grocery_app/Pages/LoginPage.dart';

import 'mylisttile.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.yellow,
      child: Column(
        children: [
          DrawerHeader(
            child: Container(
            height: 150,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://www.pngitem.com/pimgs/m/404-4042710_circle-profile-picture-png-transparent-png.png'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Welcome Guest',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      OutlinedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage())), child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),))
                    ],
                  )
                ],
              ),
          ),
          ),
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
            },
              child: MyListTile('Home',Icons.home_outlined)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('Review Cart',Icons.add_shopping_cart_outlined)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('My Profile',Icons.person_outline)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('Notification',Icons.notifications_active_outlined)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('Rating & Reviews',Icons.reviews_outlined)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('WishList',Icons.favorite_outline)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('Raise A Complaint',Icons.question_mark_outlined)),
          InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: MyListTile('FAQ\'s',Icons.question_answer_outlined)),
        ],
      ),
    );
  }
}
