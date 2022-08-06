// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'org_list_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrgListEntry extends OrgListEntry {
  @override
  final int? rank;
  @override
  final String? groupDescription;
  @override
  final String? groupName;
  @override
  final OrganizationLink? organization;

  factory _$OrgListEntry([void Function(OrgListEntryBuilder)? updates]) =>
      (new OrgListEntryBuilder()..update(updates)).build();

  _$OrgListEntry._(
      {this.rank, this.groupDescription, this.groupName, this.organization})
      : super._();

  @override
  OrgListEntry rebuild(void Function(OrgListEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgListEntryBuilder toBuilder() => new OrgListEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgListEntry &&
        rank == other.rank &&
        groupDescription == other.groupDescription &&
        groupName == other.groupName &&
        organization == other.organization;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, rank.hashCode), groupDescription.hashCode),
            groupName.hashCode),
        organization.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgListEntry')
          ..add('rank', rank)
          ..add('groupDescription', groupDescription)
          ..add('groupName', groupName)
          ..add('organization', organization))
        .toString();
  }
}

class OrgListEntryBuilder
    implements Builder<OrgListEntry, OrgListEntryBuilder> {
  _$OrgListEntry? _$v;

  int? _rank;
  int? get rank => _$this._rank;
  set rank(int? rank) => _$this._rank = rank;

  String? _groupDescription;
  String? get groupDescription => _$this._groupDescription;
  set groupDescription(String? groupDescription) =>
      _$this._groupDescription = groupDescription;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  OrganizationLinkBuilder? _organization;
  OrganizationLinkBuilder get organization =>
      _$this._organization ??= new OrganizationLinkBuilder();
  set organization(OrganizationLinkBuilder? organization) =>
      _$this._organization = organization;

  OrgListEntryBuilder() {
    OrgListEntry._defaults(this);
  }

  OrgListEntryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rank = $v.rank;
      _groupDescription = $v.groupDescription;
      _groupName = $v.groupName;
      _organization = $v.organization?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgListEntry other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrgListEntry;
  }

  @override
  void update(void Function(OrgListEntryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgListEntry build() {
    _$OrgListEntry _$result;
    try {
      _$result = _$v ??
          new _$OrgListEntry._(
              rank: rank,
              groupDescription: groupDescription,
              groupName: groupName,
              organization: _organization?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organization';
        _organization?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrgListEntry', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
