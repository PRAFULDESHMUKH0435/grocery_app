import 'package:flutter/material.dart';
import 'package:grocery_app/Constants/constants.dart';
import 'package:grocery_app/Constants/drawer.dart';
import 'package:grocery_app/Pages/ReviewCartPage.dart';
import 'package:grocery_app/Pages/SearchPage.dart';

import '../Constants/banner1.dart';
import '../Constants/herbasseasonings.dart';
import '../Constants/titleandshowallrow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      /// APPBAR
      appBar: AppBar(
        title: Text('Home',style: appbartitlestyle,),
        backgroundColor: appbarcolor,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              child: IconButton(
                icon: Icon(Icons.search_outlined),
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchPage())),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              child: IconButton(
                icon: Icon(Icons.shopping_bag_outlined),
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ReviewCartPage())),
              ),
            ),
          ),
        ],
      ),
      /// DRAWER
      drawer: MyDrawer(),
      ///BODY
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Banner1(),
              TitleAndShowAllRow('Herbs Seasonings'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: HerbasSeasoningsRow()),
              SizedBox(height: 10,),
              TitleAndShowAllRow('Fresh Fruits'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                  child: HerbasSeasoningsRow()),
              Banner1(),
              SizedBox(height: 10,),
              TitleAndShowAllRow('Fresh Groceries'),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: HerbasSeasoningsRow()),
            ],
          ),
        ),
      ),
    );
  }
}
