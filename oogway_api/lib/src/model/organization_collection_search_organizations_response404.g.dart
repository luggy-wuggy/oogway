// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_search_organizations_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionSearchOrganizationsResponse404
    extends OrganizationCollectionSearchOrganizationsResponse404 {
  @override
  final String? errorMessage;

  factory _$OrganizationCollectionSearchOrganizationsResponse404(
          [void Function(
                  OrganizationCollectionSearchOrganizationsResponse404Builder)?
              updates]) =>
      (new OrganizationCollectionSearchOrganizationsResponse404Builder()
            ..update(updates))
          .build();

  _$OrganizationCollectionSearchOrganizationsResponse404._({this.errorMessage})
      : super._();

  @override
  OrganizationCollectionSearchOrganizationsResponse404 rebuild(
          void Function(
                  OrganizationCollectionSearchOrganizationsResponse404Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionSearchOrganizationsResponse404Builder toBuilder() =>
      new OrganizationCollectionSearchOrganizationsResponse404Builder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionSearchOrganizationsResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'OrganizationCollectionSearchOrganizationsResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class OrganizationCollectionSearchOrganizationsResponse404Builder
    implements
        Builder<OrganizationCollectionSearchOrganizationsResponse404,
            OrganizationCollectionSearchOrganizationsResponse404Builder> {
  _$OrganizationCollectionSearchOrganizationsResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  OrganizationCollectionSearchOrganizationsResponse404Builder() {
    OrganizationCollectionSearchOrganizationsResponse404._defaults(this);
  }

  OrganizationCollectionSearchOrganizationsResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionSearchOrganizationsResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionSearchOrganizationsResponse404;
  }

  @override
  void update(
      void Function(
              OrganizationCollectionSearchOrganizationsResponse404Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationCollectionSearchOrganizationsResponse404 build() {
    final _$result = _$v ??
        new _$OrganizationCollectionSearchOrganizationsResponse404._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
