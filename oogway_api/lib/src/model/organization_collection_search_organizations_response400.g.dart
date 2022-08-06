// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_search_organizations_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionSearchOrganizationsResponse400
    extends OrganizationCollectionSearchOrganizationsResponse400 {
  @override
  final String? errorMessage;

  factory _$OrganizationCollectionSearchOrganizationsResponse400(
          [void Function(
                  OrganizationCollectionSearchOrganizationsResponse400Builder)?
              updates]) =>
      (new OrganizationCollectionSearchOrganizationsResponse400Builder()
            ..update(updates))
          .build();

  _$OrganizationCollectionSearchOrganizationsResponse400._({this.errorMessage})
      : super._();

  @override
  OrganizationCollectionSearchOrganizationsResponse400 rebuild(
          void Function(
                  OrganizationCollectionSearchOrganizationsResponse400Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionSearchOrganizationsResponse400Builder toBuilder() =>
      new OrganizationCollectionSearchOrganizationsResponse400Builder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionSearchOrganizationsResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'OrganizationCollectionSearchOrganizationsResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class OrganizationCollectionSearchOrganizationsResponse400Builder
    implements
        Builder<OrganizationCollectionSearchOrganizationsResponse400,
            OrganizationCollectionSearchOrganizationsResponse400Builder> {
  _$OrganizationCollectionSearchOrganizationsResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  OrganizationCollectionSearchOrganizationsResponse400Builder() {
    OrganizationCollectionSearchOrganizationsResponse400._defaults(this);
  }

  OrganizationCollectionSearchOrganizationsResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionSearchOrganizationsResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionSearchOrganizationsResponse400;
  }

  @override
  void update(
      void Function(
              OrganizationCollectionSearchOrganizationsResponse400Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationCollectionSearchOrganizationsResponse400 build() {
    final _$result = _$v ??
        new _$OrganizationCollectionSearchOrganizationsResponse400._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
