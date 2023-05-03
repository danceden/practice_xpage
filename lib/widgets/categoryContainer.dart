import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Category.dart';
import 'package:practice_xpage/models/Stock.dart';
class CategoryContainer extends StatefulWidget {
  const CategoryContainer({Key? key,}) : super(key: key);

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => Divider(height: 10),
      scrollDirection: Axis.vertical,
      itemCount: categoryList.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          child: Container(
            padding: EdgeInsets.all(10.0),
            //constraints: BoxConstraints(minWidth: 121),
            //margin: EdgeInsets.only(right: i == categoryList.length - 1 ? 0 : 15.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              //border: Border(bottom: BorderSide())
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: [
                    Image.network(categoryList[i].imgUrl),
                    Text(categoryList[i].name)
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
