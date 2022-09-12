// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_advisory_collection_get_all_active_advisories_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404
    extends ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 {
  @override
  final String? errorMessage;

  factory _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404(
          [void Function(
                  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder)?
              updates]) =>
      (new ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder()
            ..update(updates))
          ._build();

  _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404._(
      {this.errorMessage})
      : super._();

  @override
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 rebuild(
          void Function(
                  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder
      toBuilder() =>
          new ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder
    implements
        Builder<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404,
            ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder> {
  _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder() {
    ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404._defaults(this);
  }

  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404;
  }

  @override
  void update(
      void Function(
              ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 build() => _build();

  _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 _build() {
    final _$result = _$v ??
        new _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
