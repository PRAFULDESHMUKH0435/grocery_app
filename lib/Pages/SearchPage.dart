import 'package:flutter/material.dart';
import 'package:grocery_app/Constants/constants.dart';
import 'package:grocery_app/Constants/searchcontainer.dart';
import '../Constants/singleitemcard.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search',style: appbartitlestyle),backgroundColor: appbarcolor,actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined,color: Colors.black,weight: 5,))
      ],),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         /// SEARCH FIELD
          SearchContainer(),
          /// SEARCH LIST
          Expanded(
            child: Container(
              height: double.infinity,
              child: ListView(
                children: [
                  SingleItemCard(true),
                  SingleItemCard(true)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
