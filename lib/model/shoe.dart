import 'package:flutter/material.dart';

class Shoe {
  String image;
  String name;
  double price;
  List<String> sizes;
  List<Color> colors;

  Shoe(this.image, this.name, this.price, this.sizes, this.colors);

  static List<Shoe> shoes = [
    Shoe(
      "images/shoe1.png",
      "Air Max 200",
      179.99,
      ["US 7", "US 8", "US 9", "US 10"],
      [Colors.black, Colors.white, Colors.red],
    ),
    Shoe(
      "images/shoe2.png",
      "KD13 EP",
      169.99,
      ["US 8", "US 9", "US 10", "US 11"],
      [Colors.green, Colors.black, Colors.white],
    ),
    Shoe(
      "images/shoe3.png",
      "Air Max 97",
      199.99,
      ["US 7", "US 8", "US 9"],
      [Colors.black, Colors.white, Colors.yellow],
    ),
    Shoe(
      "images/shoe4.png",
      "React Presto",
      149.99,
      ["US 6", "US 7", "US 8"],
      [Colors.blue, Colors.yellow, Colors.red],
    ),
  ];
}
