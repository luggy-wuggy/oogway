import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/submodels/submodels.dart';

part 'charity.freezed.dart';
part 'charity.g.dart';

@freezed
class Charity with _$Charity {
  factory Charity({
    String? charityNavigatorUrl,
    String? mission,
    String? websiteUrl,
    String? tagLine,
    String? charityName,
    String? ein,
    CurrentRating? currentRating,
    Category? category,
    Cause? cause,
    IrsClassification? irsClassification,
    Address? mailingAddress,
    Address? donationAddress,
    Advisories? advisories,
    Organization? organization,
  }) = _Charity;

  factory Charity.fromJson(Map<String, dynamic> json) =>
      _$CharityFromJson(json);
}
