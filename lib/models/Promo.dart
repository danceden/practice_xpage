import 'package:json_annotation/json_annotation.dart';

part 'Promo.g.dart';

@JsonSerializable()
class Promo{
  @JsonKey(name : 'id')
  final int id;
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

  factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);

  Map<String, dynamic> toJson() => _$PromoToJson(this);
}
