// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Active _$$_ActiveFromJson(Map json) => _$_Active(
      rapidLinks: json['rapidLinks'] == null
          ? null
          : RapidLinks.fromJson(
              Map<String, dynamic>.from(json['rapidLinks'] as Map)),
    );

Map<String, dynamic> _$$_ActiveToJson(_$_Active instance) => <String, dynamic>{
      'rapidLinks': instance.rapidLinks?.toJson(),
    };
