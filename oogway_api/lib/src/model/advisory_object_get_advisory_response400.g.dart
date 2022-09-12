// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_object_get_advisory_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisoryObjectGetAdvisoryResponse400
    extends AdvisoryObjectGetAdvisoryResponse400 {
  @override
  final String? errorMessage;

  factory _$AdvisoryObjectGetAdvisoryResponse400(
          [void Function(AdvisoryObjectGetAdvisoryResponse400Builder)?
              updates]) =>
      (new AdvisoryObjectGetAdvisoryResponse400Builder()..update(updates))
          ._build();

  _$AdvisoryObjectGetAdvisoryResponse400._({this.errorMessage}) : super._();

  @override
  AdvisoryObjectGetAdvisoryResponse400 rebuild(
          void Function(AdvisoryObjectGetAdvisoryResponse400Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisoryObjectGetAdvisoryResponse400Builder toBuilder() =>
      new AdvisoryObjectGetAdvisoryResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisoryObjectGetAdvisoryResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AdvisoryObjectGetAdvisoryResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class AdvisoryObjectGetAdvisoryResponse400Builder
    implements
        Builder<AdvisoryObjectGetAdvisoryResponse400,
            AdvisoryObjectGetAdvisoryResponse400Builder> {
  _$AdvisoryObjectGetAdvisoryResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  AdvisoryObjectGetAdvisoryResponse400Builder() {
    AdvisoryObjectGetAdvisoryResponse400._defaults(this);
  }

  AdvisoryObjectGetAdvisoryResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisoryObjectGetAdvisoryResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisoryObjectGetAdvisoryResponse400;
  }

  @override
  void update(
      void Function(AdvisoryObjectGetAdvisoryResponse400Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AdvisoryObjectGetAdvisoryResponse400 build() => _build();

  _$AdvisoryObjectGetAdvisoryResponse400 _build() {
    final _$result = _$v ??
        new _$AdvisoryObjectGetAdvisoryResponse400._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
