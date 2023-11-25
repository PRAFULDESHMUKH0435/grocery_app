import 'package:flutter/material.dart';
import 'herbscard.dart';
Widget HerbasSeasoningsRow(){
  return Row(
    children: [
      HerbsCard(imgurl: 'https://w7.pngwing.com/pngs/291/563/png-transparent-root-crop-vegetable-illustration-sugar-beet-carpaccio-beetroot-food-beetroot-natural-foods-leaf-vegetable-recipe-thumbnail.png', name: 'Beet Root', price: 20),
      HerbsCard(imgurl: 'https://pngimg.com/d/orange_PNG794.png', name: 'Orange', price: 50),
      HerbsCard(imgurl: 'https://img.freepik.com/premium-photo/ripe-mango-with-green-leaf-isolated-white_252965-182.jpg', name: 'Mango', price: 28),
    ],
  );
}