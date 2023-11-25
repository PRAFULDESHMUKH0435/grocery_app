import 'package:flutter/material.dart';
import 'package:grocery_app/Constants/constants.dart';
import 'package:grocery_app/Constants/searchcontainer.dart';

import '../Constants/singleitemcard.dart';
class ReviewCartPage extends StatelessWidget {
  const ReviewCartPage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Review Cart',style: appbartitlestyle,),backgroundColor: appbarcolor,),
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
                    SingleItemCard(false),
                    SingleItemCard(false)
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}
