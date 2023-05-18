import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Popular.dart';
import 'package:practice_xpage/service/dio_client.dart';

class PopularContainer extends StatefulWidget {
  const PopularContainer({Key? key}) : super(key: key);

  @override
  _PopularContainerState createState() => _PopularContainerState();
}

class _PopularContainerState extends State<PopularContainer> {
  final DioClient _dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Popular>?>(
        future: _dioClient.getPopular(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text("Ошибка"),
            );
          }
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (ctx, i) {
                Popular popular = snapshot.data![i];
                return GestureDetector(
                  child: Container(
                    constraints: const BoxConstraints(maxWidth: 200),
                    margin: EdgeInsets.only(
                        right: i == snapshot.data!.length - 1 ? 0 : 15.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          constraints: const BoxConstraints.expand(height: 120),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                  image: NetworkImage(popular.picture),
                                  fit: BoxFit.cover)),
                          alignment: Alignment.center,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 5,
                                left: 5,
                                child: IconButton(
                                  icon: const Icon(
                                      Icons.favorite_border_outlined),
                                  iconSize: 30,
                                  color: Colors.orange,
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, bottom: 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                popular.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 12, bottom: 4),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "${popular.price} руб/кг",
                                style: const TextStyle(
                                    color: Colors.orange,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: const BorderSide(
                                      width: 2, color: Colors.green),
                                ),
                              ),
                              onPressed: () {},
                              child: const Icon(Icons.shopping_basket_outlined,
                                  color: Colors.orange)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                );
              });
        });
  }
}
