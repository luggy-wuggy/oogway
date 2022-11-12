// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Charity _$$_CharityFromJson(Map<String, dynamic> json) => _$_Charity(
      charityNavigatorUrl: json['charityNavigatorUrl'] as String?,
      mission: json['mission'] as String?,
      websiteUrl: json['websiteUrl'] as String?,
      tagLine: json['tagLine'] as String?,
      charityName: json['charityName'] as String?,
      ein: json['ein'] as String?,
      currentRating: json['currentRating'] == null
          ? null
          : CurrentRating.fromJson(
              json['currentRating'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      cause: json['cause'] == null
          ? null
          : Cause.fromJson(json['cause'] as Map<String, dynamic>),
      irsClassification: json['irsClassification'] == null
          ? null
          : IrsClassification.fromJson(
              json['irsClassification'] as Map<String, dynamic>),
      mailingAddress: json['mailingAddress'] == null
          ? null
          : Address.fromJson(json['mailingAddress'] as Map<String, dynamic>),
      donationAddress: json['donationAddress'] == null
          ? null
          : Address.fromJson(json['donationAddress'] as Map<String, dynamic>),
      advisories: json['advisories'] == null
          ? null
          : Advisories.fromJson(json['advisories'] as Map<String, dynamic>),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CharityToJson(_$_Charity instance) =>
    <String, dynamic>{
      'charityNavigatorUrl': instance.charityNavigatorUrl,
      'mission': instance.mission,
      'websiteUrl': instance.websiteUrl,
      'tagLine': instance.tagLine,
      'charityName': instance.charityName,
      'ein': instance.ein,
      'currentRating': instance.currentRating,
      'category': instance.category,
      'cause': instance.cause,
      'irsClassification': instance.irsClassification,
      'mailingAddress': instance.mailingAddress,
      'donationAddress': instance.donationAddress,
      'advisories': instance.advisories,
      'organization': instance.organization,
    };
