import 'package:dio/dio.dart';
import 'package:practice_xpage/models/Popular.dart';
import 'package:practice_xpage/models/Promo.dart';
import 'package:practice_xpage/models/Catalog.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://html.xpager.ru/example_project',
      connectTimeout: const Duration(milliseconds: 5000),
      receiveTimeout: const Duration(milliseconds: 3000),
    )
  );

  Future<List<Promo>?> getPromo() async {
    List<Promo> promoList = [];
    try {
      var response =
      await _dio.get('https://html.xpager.ru/example_project/promo.json');
      if (response.statusCode == 200) {
        final res = response.data as List<dynamic>;
        promoList.addAll(
            res.map((e) => Promo.fromJson(e as Map<String, dynamic>)).toList());
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return promoList;
  }

  Future<List<Popular>?> getPopular() async {
    List<Popular> popularList = [];
    try {
      var response =
      await _dio.get('https://html.xpager.ru/example_project/popular.json');
      if (response.statusCode == 200) {
        final res = response.data as List<dynamic>;
        popularList.addAll(
            res.map((e) => Popular.fromJson(e as Map<String, dynamic>)).toList());
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return popularList;
  }

  Future<List<Catalog>?> getCatalog() async {
    List<Catalog> catalogList = [];
    try {
      var response =
      await _dio.get('https://html.xpager.ru/example_project/catalog.json');
      if (response.statusCode == 200) {
        final res = response.data as List<dynamic>;
        catalogList.addAll(
            res.map((e) => Catalog.fromJson(e as Map<String, dynamic>)).toList());
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
    return catalogList;
  }
}
