// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CharityList _$$_CharityListFromJson(Map<String, dynamic> json) =>
    _$_CharityList(
      charities: (json['charities'] as List<dynamic>?)
              ?.map((e) => Charity.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CharityListToJson(_$_CharityList instance) =>
    <String, dynamic>{
      'charities': instance.charities,
    };
