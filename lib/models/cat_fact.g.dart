// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFact _$$_CatFactFromJson(Map<String, dynamic> json) => _$_CatFact(
      id: json['_id'] as String? ?? CustomStrings.EMPTY,
      text: json['text'] as String? ?? CustomStrings.EMPTY,
      createdAt: json['createdAt'] as String? ?? CustomStrings.EMPTY,
    );

Map<String, dynamic> _$$_CatFactToJson(_$_CatFact instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'text': instance.text,
      'createdAt': instance.createdAt,
    };
