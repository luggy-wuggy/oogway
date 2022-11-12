// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Advisories _$$_AdvisoriesFromJson(Map<String, dynamic> json) =>
    _$_Advisories(
      severity: json['severity'],
      active: json['active'] == null
          ? null
          : Active.fromJson(json['active'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AdvisoriesToJson(_$_Advisories instance) =>
    <String, dynamic>{
      'severity': instance.severity,
      'active': instance.active,
    };
