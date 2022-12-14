import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating.freezed.dart';
part 'rating.g.dart';

@freezed
class Rating with _$Rating {
  factory Rating({
    double? score,
    int? rating,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}
