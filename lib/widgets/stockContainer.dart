import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getwidget/getwidget.dart';
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
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            //elevation: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              textDirection: TextDirection.ltr,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.17,
                  child: Image.asset(stocksList[i].image,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 23, left: 23, bottom: 4),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    stocksList[i].subTitle,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 23, bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    stocksList[i].title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          )
        );
      },
    );
  }
}