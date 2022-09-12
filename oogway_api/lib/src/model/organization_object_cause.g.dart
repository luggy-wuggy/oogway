// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_object_cause.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationObjectCause extends OrganizationObjectCause {
  @override
  final String? causeID;
  @override
  final String? causeName;
  @override
  final String? image;
  @override
  final String? charityNavigatorURL;

  factory _$OrganizationObjectCause(
          [void Function(OrganizationObjectCauseBuilder)? updates]) =>
      (new OrganizationObjectCauseBuilder()..update(updates))._build();

  _$OrganizationObjectCause._(
      {this.causeID, this.causeName, this.image, this.charityNavigatorURL})
      : super._();

  @override
  OrganizationObjectCause rebuild(
          void Function(OrganizationObjectCauseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationObjectCauseBuilder toBuilder() =>
      new OrganizationObjectCauseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationObjectCause &&
        causeID == other.causeID &&
        causeName == other.causeName &&
        image == other.image &&
        charityNavigatorURL == other.charityNavigatorURL;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, causeID.hashCode), causeName.hashCode), image.hashCode),
        charityNavigatorURL.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganizationObjectCause')
          ..add('causeID', causeID)
          ..add('causeName', causeName)
          ..add('image', image)
          ..add('charityNavigatorURL', charityNavigatorURL))
        .toString();
  }
}

class OrganizationObjectCauseBuilder
    implements
        Builder<OrganizationObjectCause, OrganizationObjectCauseBuilder> {
  _$OrganizationObjectCause? _$v;

  String? _causeID;
  String? get causeID => _$this._causeID;
  set causeID(String? causeID) => _$this._causeID = causeID;

  String? _causeName;
  String? get causeName => _$this._causeName;
  set causeName(String? causeName) => _$this._causeName = causeName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _charityNavigatorURL;
  String? get charityNavigatorURL => _$this._charityNavigatorURL;
  set charityNavigatorURL(String? charityNavigatorURL) =>
      _$this._charityNavigatorURL = charityNavigatorURL;

  OrganizationObjectCauseBuilder() {
    OrganizationObjectCause._defaults(this);
  }

  OrganizationObjectCauseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _causeID = $v.causeID;
      _causeName = $v.causeName;
      _image = $v.image;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationObjectCause other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationObjectCause;
  }

  @override
  void update(void Function(OrganizationObjectCauseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationObjectCause build() => _build();

  _$OrganizationObjectCause _build() {
    final _$result = _$v ??
        new _$OrganizationObjectCause._(
            causeID: causeID,
            causeName: causeName,
            image: image,
            charityNavigatorURL: charityNavigatorURL);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
