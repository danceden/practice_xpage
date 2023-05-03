import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Stock.dart';
class StockContainer extends StatefulWidget {
  const StockContainer({Key? key}) : super(key: key);

  @override
  _StockContainerState createState() => _StockContainerState();
}

class _StockContainerState extends State<StockContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: stocksList.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          child: Container(
            padding: EdgeInsets.all(5),
            constraints: BoxConstraints(minWidth: 400),
            margin: EdgeInsets.only(right: i == stocksList.length - 1 ? 0 : 15.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child:
                  Align(
                    alignment: Alignment.center,
                    child: Hero(
                      tag: i,
                      child: Image.network(
                        stocksList[i].imgUrl,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  )
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      stocksList[i].subTitle,
                      style: TextStyle(fontSize: 8),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      stocksList[i].title,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

              ],

            ),
          ),
        );
      },
    );
  }
}