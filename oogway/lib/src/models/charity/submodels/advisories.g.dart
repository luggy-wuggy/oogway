// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Advisories _$$_AdvisoriesFromJson(Map json) => _$_Advisories(
      severity: json['severity'],
      active: json['active'] == null
          ? null
          : Active.fromJson(Map<String, dynamic>.from(json['active'] as Map)),
    );

Map<String, dynamic> _$$_AdvisoriesToJson(_$_Advisories instance) =>
    <String, dynamic>{
      'severity': instance.severity,
      'active': instance.active?.toJson(),
    };
