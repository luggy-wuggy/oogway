// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentRating _$$_CurrentRatingFromJson(Map json) => _$_CurrentRating(
      score: (json['score'] as num?)?.toDouble(),
      ratingImage: json['ratingImage'] == null
          ? null
          : RatingImage.fromJson(
              Map<String, dynamic>.from(json['ratingImage'] as Map)),
      rapidLinks: json['rapidLinks'] == null
          ? null
          : RapidLinks.fromJson(
              Map<String, dynamic>.from(json['rapidLinks'] as Map)),
      financialRating: json['financialRating'] == null
          ? null
          : Rating.fromJson(
              Map<String, dynamic>.from(json['financialRating'] as Map)),
      accountabilityRating: json['accountabilityRating'] == null
          ? null
          : Rating.fromJson(
              Map<String, dynamic>.from(json['accountabilityRating'] as Map)),
    );

Map<String, dynamic> _$$_CurrentRatingToJson(_$_CurrentRating instance) =>
    <String, dynamic>{
      'score': instance.score,
      'ratingImage': instance.ratingImage?.toJson(),
      'rapidLinks': instance.rapidLinks?.toJson(),
      'financialRating': instance.financialRating?.toJson(),
      'accountabilityRating': instance.accountabilityRating?.toJson(),
    };
