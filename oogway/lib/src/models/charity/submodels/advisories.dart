import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oogway/src/models/charity/submodels/active.dart';

part 'advisories.freezed.dart';
part 'advisories.g.dart';

@freezed
class Advisories with _$Advisories {
  factory Advisories({
    dynamic severity,
    Active? active,
  }) = _Advisories;

  factory Advisories.fromJson(Map<String, dynamic> json) =>
      _$AdvisoriesFromJson(json);
}
