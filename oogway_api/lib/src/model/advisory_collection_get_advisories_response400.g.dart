// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_collection_get_advisories_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisoryCollectionGetAdvisoriesResponse400
    extends AdvisoryCollectionGetAdvisoriesResponse400 {
  @override
  final String? errorMessage;

  factory _$AdvisoryCollectionGetAdvisoriesResponse400(
          [void Function(AdvisoryCollectionGetAdvisoriesResponse400Builder)?
              updates]) =>
      (new AdvisoryCollectionGetAdvisoriesResponse400Builder()..update(updates))
          .build();

  _$AdvisoryCollectionGetAdvisoriesResponse400._({this.errorMessage})
      : super._();

  @override
  AdvisoryCollectionGetAdvisoriesResponse400 rebuild(
          void Function(AdvisoryCollectionGetAdvisoriesResponse400Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisoryCollectionGetAdvisoriesResponse400Builder toBuilder() =>
      new AdvisoryCollectionGetAdvisoriesResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisoryCollectionGetAdvisoriesResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'AdvisoryCollectionGetAdvisoriesResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class AdvisoryCollectionGetAdvisoriesResponse400Builder
    implements
        Builder<AdvisoryCollectionGetAdvisoriesResponse400,
            AdvisoryCollectionGetAdvisoriesResponse400Builder> {
  _$AdvisoryCollectionGetAdvisoriesResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  AdvisoryCollectionGetAdvisoriesResponse400Builder() {
    AdvisoryCollectionGetAdvisoriesResponse400._defaults(this);
  }

  AdvisoryCollectionGetAdvisoriesResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisoryCollectionGetAdvisoriesResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisoryCollectionGetAdvisoriesResponse400;
  }

  @override
  void update(
      void Function(AdvisoryCollectionGetAdvisoriesResponse400Builder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdvisoryCollectionGetAdvisoriesResponse400 build() {
    final _$result = _$v ??
        new _$AdvisoryCollectionGetAdvisoriesResponse400._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
