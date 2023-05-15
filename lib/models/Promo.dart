import 'package:json_annotation/json_annotation.dart';


@JsonSerializable()
class Promo{
  @JsonKey(name : 'id')
  final String id;
  @JsonKey(name : 'title')
  final String title;
  @JsonKey(name : 'data')
  final String data;
  @JsonKey(name : 'imageLink')
  final String imageLink;

  Promo(
      this.id,
      this.title,
      this.data,
      this.imageLink
      );
}

List<Promo> promosList = [
  Promo("1", "Больше — выгодней", "c 18 февраля по 16 марта", "assets/images/stocks/meal.jpeg"),
  Promo("2", "Больше — выгодней", "c 18 февраля по 16 марта", "assets/images/stocks/avokado.jpeg"),
];