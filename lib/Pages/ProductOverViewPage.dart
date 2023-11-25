import 'package:flutter/material.dart';
import 'package:grocery_app/Constants/constants.dart';
class ProductOverViewPage extends StatelessWidget {
  String imgurl;
  String name;
  int price;
  ProductOverViewPage({required this.imgurl,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarcolor,
        title: Text('Product OverView',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: productoverviewtitlestyle,),
              Text('$price\$/Gram',style: productoverviewpricestyle,),
              Center(
                child: Container(
                  height: 180,
                  width: 180,
                  child: Image.network(imgurl),
                ),
              ),
              Text('Available Options',style: availableoptionsstyle,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(child: Icon(Icons.circle,color: Colors.black,),),
                  Text('50\$',style: TextStyle(fontSize: 25),),
                  OutlinedButton(onPressed: (){}, child: Text('+ ADD'))
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  child: Text('About The Product',style: productoverviewaboutstyle,)),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  child: Text('fruit, the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds. Thus, apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.',style: productoverviewdescriptionstyle,))
            ],
          ),
        ),
      ),
      bottomNavigationBar:  Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite_outline,color: Colors.white,),
                  Text('Add To WishList',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Text('Go To Cart',style: TextStyle(fontSize: 22,color: Colors.white,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
