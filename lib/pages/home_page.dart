import 'package:flutter/material.dart';
import 'package:practice_xpage/widgets/categoryContainer.dart';
import 'package:practice_xpage/widgets/productContainer.dart';
import 'package:practice_xpage/models/Product.dart';
import 'package:practice_xpage/widgets/stockContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Text(
                  "Акции",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                child: StockContainer(),
              ),
              SizedBox(
                height: 15,
              ),

              Container(
                child:
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Популярное',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Смотреть все > ',
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color: Colors.deepOrangeAccent),
                        ),
                      ],
                    )
                  ],
                )

              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                child: ProductContainer(),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Категории товаров",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: CategoryContainer(),
                height: 200,
              ),
              SizedBox(
                height: 15,
              ),

            ],
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black26,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Каталог'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Профиль'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined),
              label: 'Избранное'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Магазины'
          ),
        ],
      ),

    );

  }
}