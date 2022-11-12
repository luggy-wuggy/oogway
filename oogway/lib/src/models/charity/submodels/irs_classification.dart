import 'package:freezed_annotation/freezed_annotation.dart';

part 'irs_classification.freezed.dart';
part 'irs_classification.g.dart';

@freezed
class IrsClassification with _$IrsClassification {
  factory IrsClassification({
    String? deductibility,
    String? subsection,
    int? assetAmount,
    String? nteeType,
    int? incomeAmount,
    String? nteeSuffix,
    String? filingRequirement,
    String? classification,
    String? latest990,
    String? rulingDate,
    String? nteeCode,
    dynamic groupName,
    String? affiliation,
    String? deductibilityCode,
    String? foundationStatus,
    String? nteeClassification,
    String? accountingPeriod,
    String? exemptOrgStatus,
    dynamic deductibilityDetail,
    String? exemptOrgStatusCode,
    String? nteeLetter,
  }) = _IrsClassification;

  factory IrsClassification.fromJson(Map<String, dynamic> json) =>
      _$IrsClassificationFromJson(json);
}
