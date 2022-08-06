// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_group.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationGroup extends OrganizationGroup {
  @override
  final String? groupName;
  @override
  final String? groupDescription;
  @override
  final BuiltList<OrgListEntry>? organizations;

  factory _$OrganizationGroup(
          [void Function(OrganizationGroupBuilder)? updates]) =>
      (new OrganizationGroupBuilder()..update(updates)).build();

  _$OrganizationGroup._(
      {this.groupName, this.groupDescription, this.organizations})
      : super._();

  @override
  OrganizationGroup rebuild(void Function(OrganizationGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationGroupBuilder toBuilder() =>
      new OrganizationGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationGroup &&
        groupName == other.groupName &&
        groupDescription == other.groupDescription &&
        organizations == other.organizations;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, groupName.hashCode), groupDescription.hashCode),
        organizations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationGroup')
          ..add('groupName', groupName)
          ..add('groupDescription', groupDescription)
          ..add('organizations', organizations))
        .toString();
  }
}

class OrganizationGroupBuilder
    implements Builder<OrganizationGroup, OrganizationGroupBuilder> {
  _$OrganizationGroup? _$v;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _groupDescription;
  String? get groupDescription => _$this._groupDescription;
  set groupDescription(String? groupDescription) =>
      _$this._groupDescription = groupDescription;

  ListBuilder<OrgListEntry>? _organizations;
  ListBuilder<OrgListEntry> get organizations =>
      _$this._organizations ??= new ListBuilder<OrgListEntry>();
  set organizations(ListBuilder<OrgListEntry>? organizations) =>
      _$this._organizations = organizations;

  OrganizationGroupBuilder() {
    OrganizationGroup._defaults(this);
  }

  OrganizationGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupName = $v.groupName;
      _groupDescription = $v.groupDescription;
      _organizations = $v.organizations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationGroup;
  }

  @override
  void update(void Function(OrganizationGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationGroup build() {
    _$OrganizationGroup _$result;
    try {
      _$result = _$v ??
          new _$OrganizationGroup._(
              groupName: groupName,
              groupDescription: groupDescription,
              organizations: _organizations?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizations';
        _organizations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrganizationGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
