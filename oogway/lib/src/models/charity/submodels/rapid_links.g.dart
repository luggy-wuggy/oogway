// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rapid_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RapidLinks _$$_RapidLinksFromJson(Map<String, dynamic> json) =>
    _$_RapidLinks(
      related: json['related'] == null
          ? null
          : Related.fromJson(json['related'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RapidLinksToJson(_$_RapidLinks instance) =>
    <String, dynamic>{
      'related': instance.related,
    };
