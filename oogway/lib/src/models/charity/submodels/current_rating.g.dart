// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CurrentRating _$$_CurrentRatingFromJson(Map<String, dynamic> json) =>
    _$_CurrentRating(
      score: (json['score'] as num?)?.toDouble(),
      ratingImage: json['ratingImage'] == null
          ? null
          : RatingImage.fromJson(json['ratingImage'] as Map<String, dynamic>),
      rapidLinks: json['rapidLinks'] == null
          ? null
          : RapidLinks.fromJson(json['rapidLinks'] as Map<String, dynamic>),
      financialRating: json['financialRating'] == null
          ? null
          : Rating.fromJson(json['financialRating'] as Map<String, dynamic>),
      accountabilityRating: json['accountabilityRating'] == null
          ? null
          : Rating.fromJson(
              json['accountabilityRating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CurrentRatingToJson(_$_CurrentRating instance) =>
    <String, dynamic>{
      'score': instance.score,
      'ratingImage': instance.ratingImage,
      'rapidLinks': instance.rapidLinks,
      'financialRating': instance.financialRating,
      'accountabilityRating': instance.accountabilityRating,
    };
