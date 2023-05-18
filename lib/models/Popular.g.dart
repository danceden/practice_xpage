// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Popular.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Popular _$PopularFromJson(Map<String, dynamic> json) => Popular(
      json['id'] as int,
      json['section_id'] as int,
      json['title'] as String,
      json['measure'] as String,
      (json['addToCartCount'] as num).toDouble(),
      json['price'] as int,
      json['isFavorite'] as bool,
      json['inCart'] as bool,
      json['picture'] as String,
      json['leftInStorage'] as String,
    );

Map<String, dynamic> _$PopularToJson(Popular instance) => <String, dynamic>{
      'id': instance.id,
      'section_id': instance.sectionId,
      'title': instance.title,
      'measure': instance.measure,
      'addToCartCount': instance.addToCartCount,
      'price': instance.price,
      'isFavorite': instance.isFavorite,
      'inCart': instance.inCart,
      'picture': instance.picture,
      'leftInStorage': instance.leftInStorage,
    };
