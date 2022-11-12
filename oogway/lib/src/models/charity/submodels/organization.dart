import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/submodels/rapid_links.dart';

part 'organization.freezed.dart';
part 'organization.g.dart';

@freezed
class Organization with _$Organization {
  factory Organization({
    String? charityName,
    String? ein,
    String? charityNavigatorUrl,
    RapidLinks? rapidLinks,
  }) = _Organization;

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);
}
