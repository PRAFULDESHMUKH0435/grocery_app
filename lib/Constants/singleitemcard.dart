import 'package:flutter/material.dart';
Widget SingleItemCard(bool issearch){
  return Container(
    height: 150,
    margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 5.0),
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(12.0)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVSEjapQI3hdUcC3Warw5q6a-ggAMIc91fTEcNXd_2WYMY9E5aNvC6lBvbxXWS2Zi4p9w&usqp=CAU',fit: BoxFit.cover,),
        ),
        Expanded(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Fresh Basil',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
            Text('\$50',style: TextStyle(color: Colors.black,fontSize: 18),),
            OutlinedButton(onPressed: (){}, child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('50 Gram',),
                Icon(Icons.arrow_downward)],))
        ],)),
        issearch?
        OutlinedButton(
            onPressed: (){}, child: Text('+ ADD'))
            :
        OutlinedButton(
            onPressed: (){}, child: Icon(Icons.delete,color: Colors.red,))
      ],
    ),
  );
}