// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_advisory_collection_get_all_active_advisories_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400
    extends ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 {
  @override
  final String? errorMessage;

  factory _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400(
          [void Function(
                  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder)?
              updates]) =>
      (new ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder()
            ..update(updates))
          .build();

  _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400._(
      {this.errorMessage})
      : super._();

  @override
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 rebuild(
          void Function(
                  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder
      toBuilder() =>
          new ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder
    implements
        Builder<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400,
            ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder> {
  _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder() {
    ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400._defaults(this);
  }

  ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400;
  }

  @override
  void update(
      void Function(
              ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 build() {
    final _$result = _$v ??
        new _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
