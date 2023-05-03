import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';

class Product{
  final String id;
  final String title;
  final String price;
  final String description;
  // final Category category;
  // final bool isFavorite = false;
  final String imageUrl;

  Product({
    required this.id,
    required this.title,
    required this.description,
    // required this.isFavorite,
    required this.price,
    required this.imageUrl,
  });
}

List<Product> productList = [
  Product(id: '1', title: 'Авокадо', description: "плод", price: "200", imageUrl: "https://fajar.co.id/wp-content/uploads/2019/05/daun-alpukat.jpg"),
  Product(id: '2', title: 'Апельсин', description: "плод", price: "400", imageUrl: ""),
  Product(id: '3', title: 'Помидор', description: "плод", price: "150", imageUrl: ""),
  Product(id: '3', title: 'Помидор', description: "плод", price: "150", imageUrl: ""),
  Product(id: '3', title: 'Помидор', description: "плод", price: "150", imageUrl: "")
];