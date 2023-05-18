import 'package:flutter/material.dart';
import 'package:practice_xpage/models/Catalog.dart';
import '../service/dio_client.dart';

class CatalogContainer extends StatefulWidget {
  const CatalogContainer({
    Key? key,
  }) : super(key: key);

  @override
  _CatalogContainerState createState() => _CatalogContainerState();
}

class _CatalogContainerState extends State<CatalogContainer> {
  final DioClient _dioClient = DioClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Catalog>?>(
        future: _dioClient.getCatalog(),
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
          return ListView.separated(
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(height: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data!.length,
              itemBuilder: (ctx, i) {
                Catalog catalog = snapshot.data![i];
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
                                image: NetworkImage(catalog.imageUrl),
                                fit: BoxFit.cover)),
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            Align(
                              alignment: const Alignment(-0.9, 0),
                              child: Text(
                                catalog.title,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ));
              });
        });
  }
}
