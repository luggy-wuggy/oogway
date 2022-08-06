// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_cause.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionCause extends OrganizationCollectionCause {
  @override
  final String? causeID;
  @override
  final String? causeName;

  factory _$OrganizationCollectionCause(
          [void Function(OrganizationCollectionCauseBuilder)? updates]) =>
      (new OrganizationCollectionCauseBuilder()..update(updates)).build();

  _$OrganizationCollectionCause._({this.causeID, this.causeName}) : super._();

  @override
  OrganizationCollectionCause rebuild(
          void Function(OrganizationCollectionCauseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionCauseBuilder toBuilder() =>
      new OrganizationCollectionCauseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionCause &&
        causeID == other.causeID &&
        causeName == other.causeName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, causeID.hashCode), causeName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationCollectionCause')
          ..add('causeID', causeID)
          ..add('causeName', causeName))
        .toString();
  }
}

class OrganizationCollectionCauseBuilder
    implements
        Builder<OrganizationCollectionCause,
            OrganizationCollectionCauseBuilder> {
  _$OrganizationCollectionCause? _$v;

  String? _causeID;
  String? get causeID => _$this._causeID;
  set causeID(String? causeID) => _$this._causeID = causeID;

  String? _causeName;
  String? get causeName => _$this._causeName;
  set causeName(String? causeName) => _$this._causeName = causeName;

  OrganizationCollectionCauseBuilder() {
    OrganizationCollectionCause._defaults(this);
  }

  OrganizationCollectionCauseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _causeID = $v.causeID;
      _causeName = $v.causeName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionCause other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionCause;
  }

  @override
  void update(void Function(OrganizationCollectionCauseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationCollectionCause build() {
    final _$result = _$v ??
        new _$OrganizationCollectionCause._(
            causeID: causeID, causeName: causeName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
