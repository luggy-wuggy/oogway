// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_object_get_list_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectGetListResponse400 extends ListObjectGetListResponse400 {
  @override
  final String? errorMessage;

  factory _$ListObjectGetListResponse400(
          [void Function(ListObjectGetListResponse400Builder)? updates]) =>
      (new ListObjectGetListResponse400Builder()..update(updates)).build();

  _$ListObjectGetListResponse400._({this.errorMessage}) : super._();

  @override
  ListObjectGetListResponse400 rebuild(
          void Function(ListObjectGetListResponse400Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectGetListResponse400Builder toBuilder() =>
      new ListObjectGetListResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectGetListResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListObjectGetListResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ListObjectGetListResponse400Builder
    implements
        Builder<ListObjectGetListResponse400,
            ListObjectGetListResponse400Builder> {
  _$ListObjectGetListResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListObjectGetListResponse400Builder() {
    ListObjectGetListResponse400._defaults(this);
  }

  ListObjectGetListResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectGetListResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectGetListResponse400;
  }

  @override
  void update(void Function(ListObjectGetListResponse400Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListObjectGetListResponse400 build() {
    final _$result =
        _$v ?? new _$ListObjectGetListResponse400._(errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
