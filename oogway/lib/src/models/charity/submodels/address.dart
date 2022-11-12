import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  factory Address({
    dynamic country,
    String? stateOrProvince,
    String? city,
    String? postalCode,
    String? streetAddress1,
    String? streetAddress2,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
