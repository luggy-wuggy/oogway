// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_object_get_list_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectGetListResponse404 extends ListObjectGetListResponse404 {
  @override
  final String? errorMessage;

  factory _$ListObjectGetListResponse404(
          [void Function(ListObjectGetListResponse404Builder)? updates]) =>
      (new ListObjectGetListResponse404Builder()..update(updates))._build();

  _$ListObjectGetListResponse404._({this.errorMessage}) : super._();

  @override
  ListObjectGetListResponse404 rebuild(
          void Function(ListObjectGetListResponse404Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectGetListResponse404Builder toBuilder() =>
      new ListObjectGetListResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectGetListResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListObjectGetListResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ListObjectGetListResponse404Builder
    implements
        Builder<ListObjectGetListResponse404,
            ListObjectGetListResponse404Builder> {
  _$ListObjectGetListResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListObjectGetListResponse404Builder() {
    ListObjectGetListResponse404._defaults(this);
  }

  ListObjectGetListResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectGetListResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectGetListResponse404;
  }

  @override
  void update(void Function(ListObjectGetListResponse404Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListObjectGetListResponse404 build() => _build();

  _$ListObjectGetListResponse404 _build() {
    final _$result =
        _$v ?? new _$ListObjectGetListResponse404._(errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
