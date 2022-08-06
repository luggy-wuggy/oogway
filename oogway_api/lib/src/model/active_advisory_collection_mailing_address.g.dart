// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_advisory_collection_mailing_address.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveAdvisoryCollectionMailingAddress
    extends ActiveAdvisoryCollectionMailingAddress {
  @override
  final String? city;
  @override
  final String? stateOrProvince;

  factory _$ActiveAdvisoryCollectionMailingAddress(
          [void Function(ActiveAdvisoryCollectionMailingAddressBuilder)?
              updates]) =>
      (new ActiveAdvisoryCollectionMailingAddressBuilder()..update(updates))
          .build();

  _$ActiveAdvisoryCollectionMailingAddress._({this.city, this.stateOrProvince})
      : super._();

  @override
  ActiveAdvisoryCollectionMailingAddress rebuild(
          void Function(ActiveAdvisoryCollectionMailingAddressBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveAdvisoryCollectionMailingAddressBuilder toBuilder() =>
      new ActiveAdvisoryCollectionMailingAddressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveAdvisoryCollectionMailingAddress &&
        city == other.city &&
        stateOrProvince == other.stateOrProvince;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, city.hashCode), stateOrProvince.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ActiveAdvisoryCollectionMailingAddress')
          ..add('city', city)
          ..add('stateOrProvince', stateOrProvince))
        .toString();
  }
}

class ActiveAdvisoryCollectionMailingAddressBuilder
    implements
        Builder<ActiveAdvisoryCollectionMailingAddress,
            ActiveAdvisoryCollectionMailingAddressBuilder> {
  _$ActiveAdvisoryCollectionMailingAddress? _$v;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _stateOrProvince;
  String? get stateOrProvince => _$this._stateOrProvince;
  set stateOrProvince(String? stateOrProvince) =>
      _$this._stateOrProvince = stateOrProvince;

  ActiveAdvisoryCollectionMailingAddressBuilder() {
    ActiveAdvisoryCollectionMailingAddress._defaults(this);
  }

  ActiveAdvisoryCollectionMailingAddressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city;
      _stateOrProvince = $v.stateOrProvince;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveAdvisoryCollectionMailingAddress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveAdvisoryCollectionMailingAddress;
  }

  @override
  void update(
      void Function(ActiveAdvisoryCollectionMailingAddressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActiveAdvisoryCollectionMailingAddress build() {
    final _$result = _$v ??
        new _$ActiveAdvisoryCollectionMailingAddress._(
            city: city, stateOrProvince: stateOrProvince);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
