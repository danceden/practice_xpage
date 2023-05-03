import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Product.dart';
class ProductContainer extends StatefulWidget {
  const ProductContainer({Key? key}) : super(key: key);

  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: productList.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          child: Container(
            constraints: BoxConstraints(maxWidth: 200),
            margin: EdgeInsets.only(right: i == productList.length - 1 ? 0 : 15.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5),
                  child:
                  IconButton(
                      alignment: Alignment.topLeft,
                      icon: Icon(Icons.favorite_border_outlined),
                      iconSize: 20,
                      color: Colors.deepOrangeAccent,
                      onPressed: () {  },
                  ),
                ),
                Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Hero(
                        tag: i,
                        child: Image.network(
                          "${productList[i].imageUrl}",
                          fit: BoxFit.contain,
                        ),
                      ),
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(5),
                  child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productList[i].title,
                          ),
                          Text(
                            "${productList[i].price}" + " руб/кг",
                          ),
                        ],
                      )
                ),

                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(width: 2, color: Colors.green),
                      ),
                  ),
                    onPressed: () {},
                    child: Icon(Icons.shopping_basket_outlined, color: Colors.deepOrangeAccent)
                )
              ],

            ),
          ),
        );
      },
    );
  }
}