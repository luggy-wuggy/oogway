// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_rollup.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisoryRollup extends AdvisoryRollup {
  @override
  final Severity? severity;
  @override
  final AdvisoryCollectionLink? active;

  factory _$AdvisoryRollup([void Function(AdvisoryRollupBuilder)? updates]) =>
      (new AdvisoryRollupBuilder()..update(updates))._build();

  _$AdvisoryRollup._({this.severity, this.active}) : super._();

  @override
  AdvisoryRollup rebuild(void Function(AdvisoryRollupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisoryRollupBuilder toBuilder() =>
      new AdvisoryRollupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisoryRollup &&
        severity == other.severity &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, severity.hashCode), active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdvisoryRollup')
          ..add('severity', severity)
          ..add('active', active))
        .toString();
  }
}

class AdvisoryRollupBuilder
    implements Builder<AdvisoryRollup, AdvisoryRollupBuilder> {
  _$AdvisoryRollup? _$v;

  Severity? _severity;
  Severity? get severity => _$this._severity;
  set severity(Severity? severity) => _$this._severity = severity;

  AdvisoryCollectionLinkBuilder? _active;
  AdvisoryCollectionLinkBuilder get active =>
      _$this._active ??= new AdvisoryCollectionLinkBuilder();
  set active(AdvisoryCollectionLinkBuilder? active) => _$this._active = active;

  AdvisoryRollupBuilder() {
    AdvisoryRollup._defaults(this);
  }

  AdvisoryRollupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _severity = $v.severity;
      _active = $v.active?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisoryRollup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisoryRollup;
  }

  @override
  void update(void Function(AdvisoryRollupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvisoryRollup build() => _build();

  _$AdvisoryRollup _build() {
    _$AdvisoryRollup _$result;
    try {
      _$result = _$v ??
          new _$AdvisoryRollup._(severity: severity, active: _active?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'active';
        _active?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AdvisoryRollup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
