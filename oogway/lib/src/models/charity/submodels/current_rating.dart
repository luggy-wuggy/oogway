import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/submodels/rapid_links.dart';
import 'package:oogway/src/models/charity/submodels/rating.dart';
import 'package:oogway/src/models/charity/submodels/rating_image.dart';

part 'current_rating.freezed.dart';
part 'current_rating.g.dart';

@freezed
class CurrentRating with _$CurrentRating {
  factory CurrentRating({
    double? score,
    RatingImage? ratingImage,
    RapidLinks? rapidLinks,
    Rating? financialRating,
    Rating? accountabilityRating,
  }) = _CurrentRating;

  factory CurrentRating.fromJson(Map<String, dynamic> json) =>
      _$CurrentRatingFromJson(json);
}
