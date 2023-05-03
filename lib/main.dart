import 'package:flutter/material.dart';
import 'package:practice_xpage/pages/home_page.dart';

void main() => runApp(Shop());

class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo Shop',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blueGrey).copyWith(background: Colors.blue),
        ),
      home: HomePage(),
      );

  }
}
