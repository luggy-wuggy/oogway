// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map json) => _$_Address(
      country: json['country'],
      stateOrProvince: json['stateOrProvince'] as String?,
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      streetAddress1: json['streetAddress1'] as String?,
      streetAddress2: json['streetAddress2'] as String?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'country': instance.country,
      'stateOrProvince': instance.stateOrProvince,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
    };
