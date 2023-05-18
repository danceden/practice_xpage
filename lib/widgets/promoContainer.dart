import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Promo.dart';
import 'package:practice_xpage/service/dio_client.dart';

class PromoContainer extends StatefulWidget {
  const PromoContainer({Key? key}) : super(key: key);

  @override
  _PromoContainerState createState() => _PromoContainerState();
}

class _PromoContainerState extends State<PromoContainer> {
  final DioClient _dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Promo>?>(
        future: _dioClient.getPromo(),
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
                Promo promo = snapshot.data![i];
                return GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      textDirection: TextDirection.ltr,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: Image.network(
                            promo.imageLink,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 23, left: 23, bottom: 4),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            promo.data,
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(top: 10, left: 23, bottom: 16),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            promo.title,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        });
  }
}
