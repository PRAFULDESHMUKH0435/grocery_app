import 'package:flutter/material.dart';
import 'package:grocery_app/Pages/ProductOverViewPage.dart';
class HerbsCard extends StatelessWidget {
  String imgurl;
  String name;
  int price;
  HerbsCard({required this.imgurl,required this.name,required this.price});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductOverViewPage(imgurl: imgurl,name: name,price: price,)));
      },
      child: Card(
        color: Colors.grey,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.0))
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                width: 220,
                child: Image.network(imgurl),
              ),
              Text(name,style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),),
              Text('$price\$ /Gram',style: TextStyle(fontSize: 18),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: (){},
                        ),
                      ),
                      Text('1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3),
                        child: CircleAvatar(
                          child: IconButton(
                            icon: Icon(Icons.add),
                            onPressed: (){},
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(width: 8,),
                  Row(
                    children: [
                      OutlinedButton(
                          onPressed: (){}, child: Text('+ ADD',style: TextStyle(fontSize: 18,color: Colors.black),))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );;
  }
}
