// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Rating _$$_RatingFromJson(Map json) => _$_Rating(
      score: (json['score'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
    );

Map<String, dynamic> _$$_RatingToJson(_$_Rating instance) => <String, dynamic>{
      'score': instance.score,
      'rating': instance.rating,
    };
