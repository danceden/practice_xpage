import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Category.dart';
class CategoryContainer extends StatefulWidget {
  const CategoryContainer({Key? key,}) : super(key: key);

  @override
  _CategoryContainerState createState() => _CategoryContainerState();
}

class _CategoryContainerState extends State<CategoryContainer> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) => const Divider(height: 10),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: categoryList.length,
      itemBuilder: (ctx, i) {
        return GestureDetector(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  constraints: const BoxConstraints.expand(height: 60),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage(categoryList[i].image),
                          fit: BoxFit.cover)),
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Align(
                        alignment: const Alignment(-0.9, 0),
                        child: Text(
                          categoryList[i].name,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
