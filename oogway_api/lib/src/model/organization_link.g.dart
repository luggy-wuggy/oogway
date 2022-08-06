// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationLink extends OrganizationLink {
  @override
  final String ein;
  @override
  final String? charityName;
  @override
  final BuiltMap<String, JsonObject> links;

  factory _$OrganizationLink(
          [void Function(OrganizationLinkBuilder)? updates]) =>
      (new OrganizationLinkBuilder()..update(updates)).build();

  _$OrganizationLink._(
      {required this.ein, this.charityName, required this.links})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ein, 'OrganizationLink', 'ein');
    BuiltValueNullFieldError.checkNotNull(links, 'OrganizationLink', 'links');
  }

  @override
  OrganizationLink rebuild(void Function(OrganizationLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationLinkBuilder toBuilder() =>
      new OrganizationLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationLink &&
        ein == other.ein &&
        charityName == other.charityName &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, ein.hashCode), charityName.hashCode), links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationLink')
          ..add('ein', ein)
          ..add('charityName', charityName)
          ..add('links', links))
        .toString();
  }
}

class OrganizationLinkBuilder
    implements Builder<OrganizationLink, OrganizationLinkBuilder> {
  _$OrganizationLink? _$v;

  String? _ein;
  String? get ein => _$this._ein;
  set ein(String? ein) => _$this._ein = ein;

  String? _charityName;
  String? get charityName => _$this._charityName;
  set charityName(String? charityName) => _$this._charityName = charityName;

  MapBuilder<String, JsonObject>? _links;
  MapBuilder<String, JsonObject> get links =>
      _$this._links ??= new MapBuilder<String, JsonObject>();
  set links(MapBuilder<String, JsonObject>? links) => _$this._links = links;

  OrganizationLinkBuilder() {
    OrganizationLink._defaults(this);
  }

  OrganizationLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ein = $v.ein;
      _charityName = $v.charityName;
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationLink;
  }

  @override
  void update(void Function(OrganizationLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationLink build() {
    _$OrganizationLink _$result;
    try {
      _$result = _$v ??
          new _$OrganizationLink._(
              ein: BuiltValueNullFieldError.checkNotNull(
                  ein, 'OrganizationLink', 'ein'),
              charityName: charityName,
              links: links.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrganizationLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
