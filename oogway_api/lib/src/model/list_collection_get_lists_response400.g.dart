// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_collection_get_lists_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListCollectionGetListsResponse400
    extends ListCollectionGetListsResponse400 {
  @override
  final String? errorMessage;

  factory _$ListCollectionGetListsResponse400(
          [void Function(ListCollectionGetListsResponse400Builder)? updates]) =>
      (new ListCollectionGetListsResponse400Builder()..update(updates)).build();

  _$ListCollectionGetListsResponse400._({this.errorMessage}) : super._();

  @override
  ListCollectionGetListsResponse400 rebuild(
          void Function(ListCollectionGetListsResponse400Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListCollectionGetListsResponse400Builder toBuilder() =>
      new ListCollectionGetListsResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListCollectionGetListsResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListCollectionGetListsResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class ListCollectionGetListsResponse400Builder
    implements
        Builder<ListCollectionGetListsResponse400,
            ListCollectionGetListsResponse400Builder> {
  _$ListCollectionGetListsResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  ListCollectionGetListsResponse400Builder() {
    ListCollectionGetListsResponse400._defaults(this);
  }

  ListCollectionGetListsResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListCollectionGetListsResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListCollectionGetListsResponse400;
  }

  @override
  void update(
      void Function(ListCollectionGetListsResponse400Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListCollectionGetListsResponse400 build() {
    final _$result = _$v ??
        new _$ListCollectionGetListsResponse400._(errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
