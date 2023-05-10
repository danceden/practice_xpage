import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';

class Product{
  final String id;
  final String title;
  final String price;
  final String description;
  // final Category category;
  final bool isFavorite;
  final String image;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.isFavorite,
    required this.image,
  });
}

List<Product> productList = [
  Product(id: '1', title: 'Авокадо', description: "плод", isFavorite: false, price: "1234", image: "assets/images/products/avocado2.jpeg"),
  Product(id: '2', title: 'Клубника', description: "ягода", isFavorite: true, price: "1234", image: "assets/images/products/strawbery.png"),
];