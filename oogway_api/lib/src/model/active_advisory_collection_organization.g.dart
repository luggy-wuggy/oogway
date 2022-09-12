// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_advisory_collection_organization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveAdvisoryCollectionOrganization
    extends ActiveAdvisoryCollectionOrganization {
  @override
  final String? ein;
  @override
  final String? charityName;
  @override
  final String? charityNavigatorURL;

  factory _$ActiveAdvisoryCollectionOrganization(
          [void Function(ActiveAdvisoryCollectionOrganizationBuilder)?
              updates]) =>
      (new ActiveAdvisoryCollectionOrganizationBuilder()..update(updates))
          ._build();

  _$ActiveAdvisoryCollectionOrganization._(
      {this.ein, this.charityName, this.charityNavigatorURL})
      : super._();

  @override
  ActiveAdvisoryCollectionOrganization rebuild(
          void Function(ActiveAdvisoryCollectionOrganizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveAdvisoryCollectionOrganizationBuilder toBuilder() =>
      new ActiveAdvisoryCollectionOrganizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveAdvisoryCollectionOrganization &&
        ein == other.ein &&
        charityName == other.charityName &&
        charityNavigatorURL == other.charityNavigatorURL;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, ein.hashCode), charityName.hashCode),
        charityNavigatorURL.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActiveAdvisoryCollectionOrganization')
          ..add('ein', ein)
          ..add('charityName', charityName)
          ..add('charityNavigatorURL', charityNavigatorURL))
        .toString();
  }
}

class ActiveAdvisoryCollectionOrganizationBuilder
    implements
        Builder<ActiveAdvisoryCollectionOrganization,
            ActiveAdvisoryCollectionOrganizationBuilder> {
  _$ActiveAdvisoryCollectionOrganization? _$v;

  String? _ein;
  String? get ein => _$this._ein;
  set ein(String? ein) => _$this._ein = ein;

  String? _charityName;
  String? get charityName => _$this._charityName;
  set charityName(String? charityName) => _$this._charityName = charityName;

  String? _charityNavigatorURL;
  String? get charityNavigatorURL => _$this._charityNavigatorURL;
  set charityNavigatorURL(String? charityNavigatorURL) =>
      _$this._charityNavigatorURL = charityNavigatorURL;

  ActiveAdvisoryCollectionOrganizationBuilder() {
    ActiveAdvisoryCollectionOrganization._defaults(this);
  }

  ActiveAdvisoryCollectionOrganizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ein = $v.ein;
      _charityName = $v.charityName;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveAdvisoryCollectionOrganization other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveAdvisoryCollectionOrganization;
  }

  @override
  void update(
      void Function(ActiveAdvisoryCollectionOrganizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActiveAdvisoryCollectionOrganization build() => _build();

  _$ActiveAdvisoryCollectionOrganization _build() {
    final _$result = _$v ??
        new _$ActiveAdvisoryCollectionOrganization._(
            ein: ein,
            charityName: charityName,
            charityNavigatorURL: charityNavigatorURL);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
