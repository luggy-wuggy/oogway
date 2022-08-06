// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_advisory_collection_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveAdvisoryCollectionItem extends ActiveAdvisoryCollectionItem {
  @override
  final ActiveAdvisoryCollectionMailingAddress? mailingAddress;
  @override
  final ActiveAdvisoryCollectionOrganization organization;
  @override
  final AdvisoryRollup? advisories;

  factory _$ActiveAdvisoryCollectionItem(
          [void Function(ActiveAdvisoryCollectionItemBuilder)? updates]) =>
      (new ActiveAdvisoryCollectionItemBuilder()..update(updates)).build();

  _$ActiveAdvisoryCollectionItem._(
      {this.mailingAddress, required this.organization, this.advisories})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        organization, 'ActiveAdvisoryCollectionItem', 'organization');
  }

  @override
  ActiveAdvisoryCollectionItem rebuild(
          void Function(ActiveAdvisoryCollectionItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveAdvisoryCollectionItemBuilder toBuilder() =>
      new ActiveAdvisoryCollectionItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveAdvisoryCollectionItem &&
        mailingAddress == other.mailingAddress &&
        organization == other.organization &&
        advisories == other.advisories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, mailingAddress.hashCode), organization.hashCode),
        advisories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActiveAdvisoryCollectionItem')
          ..add('mailingAddress', mailingAddress)
          ..add('organization', organization)
          ..add('advisories', advisories))
        .toString();
  }
}

class ActiveAdvisoryCollectionItemBuilder
    implements
        Builder<ActiveAdvisoryCollectionItem,
            ActiveAdvisoryCollectionItemBuilder> {
  _$ActiveAdvisoryCollectionItem? _$v;

  ActiveAdvisoryCollectionMailingAddressBuilder? _mailingAddress;
  ActiveAdvisoryCollectionMailingAddressBuilder get mailingAddress =>
      _$this._mailingAddress ??=
          new ActiveAdvisoryCollectionMailingAddressBuilder();
  set mailingAddress(
          ActiveAdvisoryCollectionMailingAddressBuilder? mailingAddress) =>
      _$this._mailingAddress = mailingAddress;

  ActiveAdvisoryCollectionOrganizationBuilder? _organization;
  ActiveAdvisoryCollectionOrganizationBuilder get organization =>
      _$this._organization ??=
          new ActiveAdvisoryCollectionOrganizationBuilder();
  set organization(ActiveAdvisoryCollectionOrganizationBuilder? organization) =>
      _$this._organization = organization;

  AdvisoryRollupBuilder? _advisories;
  AdvisoryRollupBuilder get advisories =>
      _$this._advisories ??= new AdvisoryRollupBuilder();
  set advisories(AdvisoryRollupBuilder? advisories) =>
      _$this._advisories = advisories;

  ActiveAdvisoryCollectionItemBuilder() {
    ActiveAdvisoryCollectionItem._defaults(this);
  }

  ActiveAdvisoryCollectionItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mailingAddress = $v.mailingAddress?.toBuilder();
      _organization = $v.organization.toBuilder();
      _advisories = $v.advisories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveAdvisoryCollectionItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveAdvisoryCollectionItem;
  }

  @override
  void update(void Function(ActiveAdvisoryCollectionItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActiveAdvisoryCollectionItem build() {
    _$ActiveAdvisoryCollectionItem _$result;
    try {
      _$result = _$v ??
          new _$ActiveAdvisoryCollectionItem._(
              mailingAddress: _mailingAddress?.build(),
              organization: organization.build(),
              advisories: _advisories?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mailingAddress';
        _mailingAddress?.build();
        _$failedField = 'organization';
        organization.build();
        _$failedField = 'advisories';
        _advisories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ActiveAdvisoryCollectionItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
