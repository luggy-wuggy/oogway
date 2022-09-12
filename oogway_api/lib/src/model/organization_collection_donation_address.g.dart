// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_donation_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionDonationAddress
    extends OrganizationCollectionDonationAddress {
  @override
  final String? streetAddress1;
  @override
  final String? streetAddress2;
  @override
  final String? city;
  @override
  final String? stateOrProvince;
  @override
  final String? postalCode;
  @override
  final String? country;

  factory _$OrganizationCollectionDonationAddress(
          [void Function(OrganizationCollectionDonationAddressBuilder)?
              updates]) =>
      (new OrganizationCollectionDonationAddressBuilder()..update(updates))
          ._build();

  _$OrganizationCollectionDonationAddress._(
      {this.streetAddress1,
      this.streetAddress2,
      this.city,
      this.stateOrProvince,
      this.postalCode,
      this.country})
      : super._();

  @override
  OrganizationCollectionDonationAddress rebuild(
          void Function(OrganizationCollectionDonationAddressBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionDonationAddressBuilder toBuilder() =>
      new OrganizationCollectionDonationAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionDonationAddress &&
        streetAddress1 == other.streetAddress1 &&
        streetAddress2 == other.streetAddress2 &&
        city == other.city &&
        stateOrProvince == other.stateOrProvince &&
        postalCode == other.postalCode &&
        country == other.country;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, streetAddress1.hashCode),
                        streetAddress2.hashCode),
                    city.hashCode),
                stateOrProvince.hashCode),
            postalCode.hashCode),
        country.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OrganizationCollectionDonationAddress')
          ..add('streetAddress1', streetAddress1)
          ..add('streetAddress2', streetAddress2)
          ..add('city', city)
          ..add('stateOrProvince', stateOrProvince)
          ..add('postalCode', postalCode)
          ..add('country', country))
        .toString();
  }
}

class OrganizationCollectionDonationAddressBuilder
    implements
        Builder<OrganizationCollectionDonationAddress,
            OrganizationCollectionDonationAddressBuilder> {
  _$OrganizationCollectionDonationAddress? _$v;

  String? _streetAddress1;
  String? get streetAddress1 => _$this._streetAddress1;
  set streetAddress1(String? streetAddress1) =>
      _$this._streetAddress1 = streetAddress1;

  String? _streetAddress2;
  String? get streetAddress2 => _$this._streetAddress2;
  set streetAddress2(String? streetAddress2) =>
      _$this._streetAddress2 = streetAddress2;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _stateOrProvince;
  String? get stateOrProvince => _$this._stateOrProvince;
  set stateOrProvince(String? stateOrProvince) =>
      _$this._stateOrProvince = stateOrProvince;

  String? _postalCode;
  String? get postalCode => _$this._postalCode;
  set postalCode(String? postalCode) => _$this._postalCode = postalCode;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  OrganizationCollectionDonationAddressBuilder() {
    OrganizationCollectionDonationAddress._defaults(this);
  }

  OrganizationCollectionDonationAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streetAddress1 = $v.streetAddress1;
      _streetAddress2 = $v.streetAddress2;
      _city = $v.city;
      _stateOrProvince = $v.stateOrProvince;
      _postalCode = $v.postalCode;
      _country = $v.country;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionDonationAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionDonationAddress;
  }

  @override
  void update(
      void Function(OrganizationCollectionDonationAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCollectionDonationAddress build() => _build();

  _$OrganizationCollectionDonationAddress _build() {
    final _$result = _$v ??
        new _$OrganizationCollectionDonationAddress._(
            streetAddress1: streetAddress1,
            streetAddress2: streetAddress2,
            city: city,
            stateOrProvince: stateOrProvince,
            postalCode: postalCode,
            country: country);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas