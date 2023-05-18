import 'dart:core';
import 'package:json_annotation/json_annotation.dart';

part 'Catalog.g.dart';

@JsonSerializable()
class Catalog {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'imageUrl')
  final String imageUrl;

  Catalog({required this.id, required this.title, required this.imageUrl});

  factory Catalog.fromJson(Map<String, dynamic> json) => _$CatalogFromJson(json);

  Map<String, dynamic> toJson() => _$CatalogToJson(this);
}
