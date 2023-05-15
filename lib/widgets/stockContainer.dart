import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Promo.dart';
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
      itemCount: promosList.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
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
                  child: Image.asset(promosList[i].imageLink,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 23, left: 23, bottom: 4),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    promosList[i].data,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 23, bottom: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    promosList[i].title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
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