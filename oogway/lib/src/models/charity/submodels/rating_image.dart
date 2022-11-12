import 'package:freezed_annotation/freezed_annotation.dart';

part 'rating_image.freezed.dart';
part 'rating_image.g.dart';

@freezed
class RatingImage with _$RatingImage {
  factory RatingImage({
    String? small,
    String? large,
  }) = _RatingImage;

  factory RatingImage.fromJson(Map<String, dynamic> json) =>
      _$RatingImageFromJson(json);
}
