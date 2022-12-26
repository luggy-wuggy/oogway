// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Charity _$$_CharityFromJson(Map json) => _$_Charity(
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
      mission: json['mission'] as String?,
      websiteURL: json['websiteURL'] as String?,
      tagLine: json['tagLine'] as String?,
      charityName: json['charityName'] as String?,
      ein: json['ein'] as String?,
      currentRating: json['currentRating'] == null
          ? null
          : CurrentRating.fromJson(
              Map<String, dynamic>.from(json['currentRating'] as Map)),
      category: json['category'] == null
          ? null
          : Category.fromJson(
              Map<String, dynamic>.from(json['category'] as Map)),
      cause: json['cause'] == null
          ? null
          : Cause.fromJson(Map<String, dynamic>.from(json['cause'] as Map)),
      irsClassification: json['irsClassification'] == null
          ? null
          : IrsClassification.fromJson(
              Map<String, dynamic>.from(json['irsClassification'] as Map)),
      mailingAddress: json['mailingAddress'] == null
          ? null
          : Address.fromJson(
              Map<String, dynamic>.from(json['mailingAddress'] as Map)),
      donationAddress: json['donationAddress'] == null
          ? null
          : Address.fromJson(
              Map<String, dynamic>.from(json['donationAddress'] as Map)),
      advisories: json['advisories'] == null
          ? null
          : Advisories.fromJson(
              Map<String, dynamic>.from(json['advisories'] as Map)),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(
              Map<String, dynamic>.from(json['organization'] as Map)),
    );

Map<String, dynamic> _$$_CharityToJson(_$_Charity instance) =>
    <String, dynamic>{
      'charityNavigatorURL': instance.charityNavigatorURL,
      'mission': instance.mission,
      'websiteURL': instance.websiteURL,
      'tagLine': instance.tagLine,
      'charityName': instance.charityName,
      'ein': instance.ein,
      'currentRating': instance.currentRating?.toJson(),
      'category': instance.category?.toJson(),
      'cause': instance.cause?.toJson(),
      'irsClassification': instance.irsClassification?.toJson(),
      'mailingAddress': instance.mailingAddress?.toJson(),
      'donationAddress': instance.donationAddress?.toJson(),
      'advisories': instance.advisories?.toJson(),
      'organization': instance.organization?.toJson(),
    };
