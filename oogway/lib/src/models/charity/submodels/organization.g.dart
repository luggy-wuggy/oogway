// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Organization _$$_OrganizationFromJson(Map<String, dynamic> json) =>
    _$_Organization(
      charityName: json['charityName'] as String?,
      ein: json['ein'] as String?,
      charityNavigatorUrl: json['charityNavigatorUrl'] as String?,
      rapidLinks: json['rapidLinks'] == null
          ? null
          : RapidLinks.fromJson(json['rapidLinks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrganizationToJson(_$_Organization instance) =>
    <String, dynamic>{
      'charityName': instance.charityName,
      'ein': instance.ein,
      'charityNavigatorUrl': instance.charityNavigatorUrl,
      'rapidLinks': instance.rapidLinks,
    };
