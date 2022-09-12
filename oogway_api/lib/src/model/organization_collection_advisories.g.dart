// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_advisories.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionAdvisories
    extends OrganizationCollectionAdvisories {
  @override
  final Severity? severity;
  @override
  final AdvisoryCollectionLink? active;

  factory _$OrganizationCollectionAdvisories(
          [void Function(OrganizationCollectionAdvisoriesBuilder)? updates]) =>
      (new OrganizationCollectionAdvisoriesBuilder()..update(updates))._build();

  _$OrganizationCollectionAdvisories._({this.severity, this.active})
      : super._();

  @override
  OrganizationCollectionAdvisories rebuild(
          void Function(OrganizationCollectionAdvisoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionAdvisoriesBuilder toBuilder() =>
      new OrganizationCollectionAdvisoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionAdvisories &&
        severity == other.severity &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, severity.hashCode), active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganizationCollectionAdvisories')
          ..add('severity', severity)
          ..add('active', active))
        .toString();
  }
}

class OrganizationCollectionAdvisoriesBuilder
    implements
        Builder<OrganizationCollectionAdvisories,
            OrganizationCollectionAdvisoriesBuilder> {
  _$OrganizationCollectionAdvisories? _$v;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  AdvisoryCollectionLinkBuilder? _active;
  AdvisoryCollectionLinkBuilder get active =>
      _$this._active ??= new AdvisoryCollectionLinkBuilder();
  set active(AdvisoryCollectionLinkBuilder? active) => _$this._active = active;

  OrganizationCollectionAdvisoriesBuilder() {
    OrganizationCollectionAdvisories._defaults(this);
  }

  OrganizationCollectionAdvisoriesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _severity = $v.severity;
      _active = $v.active?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionAdvisories other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionAdvisories;
  }

  @override
  void update(void Function(OrganizationCollectionAdvisoriesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCollectionAdvisories build() => _build();

  _$OrganizationCollectionAdvisories _build() {
    _$OrganizationCollectionAdvisories _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCollectionAdvisories._(
              severity: severity, active: _active?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'active';
        _active?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationCollectionAdvisories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
