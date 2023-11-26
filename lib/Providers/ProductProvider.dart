import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import '../Models/ProductModel.dart';


class ProductProvider extends ChangeNotifier {
  List<ProductModel> herbsproductlist = [];
  
  fetchherbsproductslist() async{
    QuerySnapshot value = await  FirebaseFirestore.instance.collection("HerbsProducts").get();
    value.docs.forEach((element) {
      print(element.data());
    });
  }
}