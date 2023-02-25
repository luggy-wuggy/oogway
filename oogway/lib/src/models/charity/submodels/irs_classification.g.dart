// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irs_classification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IrsClassification _$$_IrsClassificationFromJson(Map json) =>
    _$_IrsClassification(
      deductibility: json['deductibility'] as String?,
      subsection: json['subsection'] as String?,
      assetAmount: json['assetAmount'] as int?,
      nteeType: json['nteeType'] as String?,
      incomeAmount: json['incomeAmount'] as int?,
      nteeSuffix: json['nteeSuffix'] as String?,
      filingRequirement: json['filingRequirement'] as String?,
      classification: json['classification'] as String?,
      latest990: json['latest990'] as String?,
      rulingDate: json['rulingDate'] as String?,
      nteeCode: json['nteeCode'] as String?,
      groupName: json['groupName'],
      affiliation: json['affiliation'] as String?,
      deductibilityCode: json['deductibilityCode'] as String?,
      foundationStatus: json['foundationStatus'] as String?,
      nteeClassification: json['nteeClassification'] as String?,
      accountingPeriod: json['accountingPeriod'] as String?,
      exemptOrgStatus: json['exemptOrgStatus'] as String?,
      deductibilityDetail: json['deductibilityDetail'],
      exemptOrgStatusCode: json['exemptOrgStatusCode'] as String?,
      nteeLetter: json['nteeLetter'] as String?,
    );

Map<String, dynamic> _$$_IrsClassificationToJson(
        _$_IrsClassification instance) =>
    <String, dynamic>{
      'deductibility': instance.deductibility,
      'subsection': instance.subsection,
      'assetAmount': instance.assetAmount,
      'nteeType': instance.nteeType,
      'incomeAmount': instance.incomeAmount,
      'nteeSuffix': instance.nteeSuffix,
      'filingRequirement': instance.filingRequirement,
      'classification': instance.classification,
      'latest990': instance.latest990,
      'rulingDate': instance.rulingDate,
      'nteeCode': instance.nteeCode,
      'groupName': instance.groupName,
      'affiliation': instance.affiliation,
      'deductibilityCode': instance.deductibilityCode,
      'foundationStatus': instance.foundationStatus,
      'nteeClassification': instance.nteeClassification,
      'accountingPeriod': instance.accountingPeriod,
      'exemptOrgStatus': instance.exemptOrgStatus,
      'deductibilityDetail': instance.deductibilityDetail,
      'exemptOrgStatusCode': instance.exemptOrgStatusCode,
      'nteeLetter': instance.nteeLetter,
    };
