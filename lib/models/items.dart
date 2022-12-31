import 'package:flutter/cupertino.dart';

class Item {
  String img;
  String name;
  String metreAway;
  String price;

  Item({
    required this.img,
    required this.metreAway,
    required this.name,
    required this.price,
  });
}

class itmF {
  static List<Item> itemData() {
    return [
      Item(
          img: 'assets/maiz.png',
          metreAway: '8m Away',
          name: '1 bag of rice',
          price: '₦46,000'),
      Item(
          img: 'assets/maiz.png',
          metreAway: '8m Away',
          name: '1 bag of rice',
          price: '₦46,000'),
      Item(
          img: 'assets/maiz.png',
          metreAway: '8m Away',
          name: '1 bag of rice',
          price: '₦46,000')
    ];
  }
}
