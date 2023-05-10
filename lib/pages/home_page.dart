import 'package:flutter/material.dart';
import 'package:practice_xpage/widgets/categoryContainer.dart';
import 'package:practice_xpage/widgets/productContainer.dart';
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
              SizedBox(
                height: 13,
              ),
                Text(
                  "Акции",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.32,
                width: MediaQuery.of(context).size.width,
                child: StockContainer(),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Популярное',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap
                      ),
                      child: Text(
                        'Смотреть все >',
                        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.orange),)
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.40,
                child: ProductContainer(),
              ),
              SizedBox(
                height: 30,
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
                height: MediaQuery.of(context).size.height,
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black54,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Главная',

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