// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_collection_get_lists_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListCollectionGetListsResponse404
    extends ListCollectionGetListsResponse404 {
  @override
  final String? errorMessage;

  factory _$ListCollectionGetListsResponse404(
          [void Function(ListCollectionGetListsResponse404Builder)? updates]) =>
      (new ListCollectionGetListsResponse404Builder()..update(updates)).build();

  _$ListCollectionGetListsResponse404._({this.errorMessage}) : super._();

  @override
  ListCollectionGetListsResponse404 rebuild(
          void Function(ListCollectionGetListsResponse404Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListCollectionGetListsResponse404Builder toBuilder() =>
      new ListCollectionGetListsResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListCollectionGetListsResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListCollectionGetListsResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ListCollectionGetListsResponse404Builder
    implements
        Builder<ListCollectionGetListsResponse404,
            ListCollectionGetListsResponse404Builder> {
  _$ListCollectionGetListsResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListCollectionGetListsResponse404Builder() {
    ListCollectionGetListsResponse404._defaults(this);
  }

  ListCollectionGetListsResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListCollectionGetListsResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListCollectionGetListsResponse404;
  }

  @override
  void update(
      void Function(ListCollectionGetListsResponse404Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListCollectionGetListsResponse404 build() {
    final _$result = _$v ??
        new _$ListCollectionGetListsResponse404._(errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
