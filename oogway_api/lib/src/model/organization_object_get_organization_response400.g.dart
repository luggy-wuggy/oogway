// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_object_get_organization_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationObjectGetOrganizationResponse400
    extends OrganizationObjectGetOrganizationResponse400 {
  @override
  final String? errorMessage;

  factory _$OrganizationObjectGetOrganizationResponse400(
          [void Function(OrganizationObjectGetOrganizationResponse400Builder)?
              updates]) =>
      (new OrganizationObjectGetOrganizationResponse400Builder()
            ..update(updates))
          ._build();

  _$OrganizationObjectGetOrganizationResponse400._({this.errorMessage})
      : super._();

  @override
  OrganizationObjectGetOrganizationResponse400 rebuild(
          void Function(OrganizationObjectGetOrganizationResponse400Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationObjectGetOrganizationResponse400Builder toBuilder() =>
      new OrganizationObjectGetOrganizationResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationObjectGetOrganizationResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OrganizationObjectGetOrganizationResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class OrganizationObjectGetOrganizationResponse400Builder
    implements
        Builder<OrganizationObjectGetOrganizationResponse400,
            OrganizationObjectGetOrganizationResponse400Builder> {
  _$OrganizationObjectGetOrganizationResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  OrganizationObjectGetOrganizationResponse400Builder() {
    OrganizationObjectGetOrganizationResponse400._defaults(this);
  }

  OrganizationObjectGetOrganizationResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationObjectGetOrganizationResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationObjectGetOrganizationResponse400;
  }

  @override
  void update(
      void Function(OrganizationObjectGetOrganizationResponse400Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationObjectGetOrganizationResponse400 build() => _build();

  _$OrganizationObjectGetOrganizationResponse400 _build() {
    final _$result = _$v ??
        new _$OrganizationObjectGetOrganizationResponse400._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
