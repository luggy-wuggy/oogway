// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _Address.fromJson(json);
}

/// @nodoc
mixin _$Address {
  dynamic get country => throw _privateConstructorUsedError;
  String? get stateOrProvince => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get streetAddress1 => throw _privateConstructorUsedError;
  String? get streetAddress2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {dynamic country,
      String? stateOrProvince,
      String? city,
      String? postalCode,
      String? streetAddress1,
      String? streetAddress2});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? stateOrProvince = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateOrProvince: freezed == stateOrProvince
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress2: freezed == streetAddress2
          ? _value.streetAddress2
          : streetAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_AddressCopyWith(
          _$_Address value, $Res Function(_$_Address) then) =
      __$$_AddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic country,
      String? stateOrProvince,
      String? city,
      String? postalCode,
      String? streetAddress1,
      String? streetAddress2});
}

/// @nodoc
class __$$_AddressCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_Address>
    implements _$$_AddressCopyWith<$Res> {
  __$$_AddressCopyWithImpl(_$_Address _value, $Res Function(_$_Address) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? stateOrProvince = freezed,
    Object? city = freezed,
    Object? postalCode = freezed,
    Object? streetAddress1 = freezed,
    Object? streetAddress2 = freezed,
  }) {
    return _then(_$_Address(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stateOrProvince: freezed == stateOrProvince
          ? _value.stateOrProvince
          : stateOrProvince // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      postalCode: freezed == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress1: freezed == streetAddress1
          ? _value.streetAddress1
          : streetAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      streetAddress2: freezed == streetAddress2
          ? _value.streetAddress2
          : streetAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Address implements _Address {
  _$_Address(
      {this.country,
      this.stateOrProvince,
      this.city,
      this.postalCode,
      this.streetAddress1,
      this.streetAddress2});

  factory _$_Address.fromJson(Map<String, dynamic> json) =>
      _$$_AddressFromJson(json);

  @override
  final dynamic country;
  @override
  final String? stateOrProvince;
  @override
  final String? city;
  @override
  final String? postalCode;
  @override
  final String? streetAddress1;
  @override
  final String? streetAddress2;

  @override
  String toString() {
    return 'Address(country: $country, stateOrProvince: $stateOrProvince, city: $city, postalCode: $postalCode, streetAddress1: $streetAddress1, streetAddress2: $streetAddress2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Address &&
            const DeepCollectionEquality().equals(other.country, country) &&
            (identical(other.stateOrProvince, stateOrProvince) ||
                other.stateOrProvince == stateOrProvince) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.streetAddress1, streetAddress1) ||
                other.streetAddress1 == streetAddress1) &&
            (identical(other.streetAddress2, streetAddress2) ||
                other.streetAddress2 == streetAddress2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(country),
      stateOrProvince,
      city,
      postalCode,
      streetAddress1,
      streetAddress2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      __$$_AddressCopyWithImpl<_$_Address>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressToJson(
      this,
    );
  }
}

abstract class _Address implements Address {
  factory _Address(
      {final dynamic country,
      final String? stateOrProvince,
      final String? city,
      final String? postalCode,
      final String? streetAddress1,
      final String? streetAddress2}) = _$_Address;

  factory _Address.fromJson(Map<String, dynamic> json) = _$_Address.fromJson;

  @override
  dynamic get country;
  @override
  String? get stateOrProvince;
  @override
  String? get city;
  @override
  String? get postalCode;
  @override
  String? get streetAddress1;
  @override
  String? get streetAddress2;
  @override
  @JsonKey(ignore: true)
  _$$_AddressCopyWith<_$_Address> get copyWith =>
      throw _privateConstructorUsedError;
}
