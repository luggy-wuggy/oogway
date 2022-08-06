// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_object_get_advisory_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisoryObjectGetAdvisoryResponse404
    extends AdvisoryObjectGetAdvisoryResponse404 {
  @override
  final String? errorMessage;

  factory _$AdvisoryObjectGetAdvisoryResponse404(
          [void Function(AdvisoryObjectGetAdvisoryResponse404Builder)?
              updates]) =>
      (new AdvisoryObjectGetAdvisoryResponse404Builder()..update(updates))
          .build();

  _$AdvisoryObjectGetAdvisoryResponse404._({this.errorMessage}) : super._();

  @override
  AdvisoryObjectGetAdvisoryResponse404 rebuild(
          void Function(AdvisoryObjectGetAdvisoryResponse404Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisoryObjectGetAdvisoryResponse404Builder toBuilder() =>
      new AdvisoryObjectGetAdvisoryResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisoryObjectGetAdvisoryResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdvisoryObjectGetAdvisoryResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class AdvisoryObjectGetAdvisoryResponse404Builder
    implements
        Builder<AdvisoryObjectGetAdvisoryResponse404,
            AdvisoryObjectGetAdvisoryResponse404Builder> {
  _$AdvisoryObjectGetAdvisoryResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  AdvisoryObjectGetAdvisoryResponse404Builder() {
    AdvisoryObjectGetAdvisoryResponse404._defaults(this);
  }

  AdvisoryObjectGetAdvisoryResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisoryObjectGetAdvisoryResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisoryObjectGetAdvisoryResponse404;
  }

  @override
  void update(
      void Function(AdvisoryObjectGetAdvisoryResponse404Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdvisoryObjectGetAdvisoryResponse404 build() {
    final _$result = _$v ??
        new _$AdvisoryObjectGetAdvisoryResponse404._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
