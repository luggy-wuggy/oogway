// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rapid_links.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RapidLinks _$$_RapidLinksFromJson(Map json) => _$_RapidLinks(
      related: json['related'] == null
          ? null
          : Related.fromJson(Map<String, dynamic>.from(json['related'] as Map)),
    );

Map<String, dynamic> _$$_RapidLinksToJson(_$_RapidLinks instance) =>
    <String, dynamic>{
      'related': instance.related?.toJson(),
    };
