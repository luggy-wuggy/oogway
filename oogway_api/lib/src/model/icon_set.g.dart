// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon_set.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IconSet extends IconSet {
  @override
  final String? small;
  @override
  final String? large;

  factory _$IconSet([void Function(IconSetBuilder)? updates]) =>
      (new IconSetBuilder()..update(updates)).build();

  _$IconSet._({this.small, this.large}) : super._();

  @override
  IconSet rebuild(void Function(IconSetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IconSetBuilder toBuilder() => new IconSetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IconSet && small == other.small && large == other.large;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, small.hashCode), large.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IconSet')
          ..add('small', small)
          ..add('large', large))
        .toString();
  }
}

class IconSetBuilder implements Builder<IconSet, IconSetBuilder> {
  _$IconSet? _$v;

  String? _small;
  String? get small => _$this._small;
  set small(String? small) => _$this._small = small;

  String? _large;
  String? get large => _$this._large;
  set large(String? large) => _$this._large = large;

  IconSetBuilder() {
    IconSet._defaults(this);
  }

  IconSetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _small = $v.small;
      _large = $v.large;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IconSet other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IconSet;
  }

  @override
  void update(void Function(IconSetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IconSet build() {
    final _$result = _$v ?? new _$IconSet._(small: small, large: large);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
