import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

part 'Popular.g.dart';

@JsonSerializable()
class Popular{
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'section_id')
  final int sectionId;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'measure')
  final String measure;
  @JsonKey(name: 'addToCartCount')
  final double addToCartCount;
  @JsonKey(name: 'price')
  final int price;
  @JsonKey(name: 'isFavorite')
  final bool isFavorite;
  @JsonKey(name: 'inCart')
  final bool inCart;
  @JsonKey(name: 'picture')
  final String picture;
  @JsonKey(name: 'leftInStorage')
  final String leftInStorage;

  Popular(
      this.id,
      this.sectionId,
      this.title,
      this.measure,
      this.addToCartCount,
      this.price,
      this.isFavorite,
      this.inCart,
      this.picture,
      this.leftInStorage
      );

  factory Popular.fromJson(Map<String, dynamic> json) => _$PopularFromJson(json);

  Map<String, dynamic> toJson() => _$PopularToJson(this);

}

