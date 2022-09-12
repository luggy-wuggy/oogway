// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'representative.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Representative extends Representative {
  @override
  final String? name;
  @override
  final String? title;

  factory _$Representative([void Function(RepresentativeBuilder)? updates]) =>
      (new RepresentativeBuilder()..update(updates))._build();

  _$Representative._({this.name, this.title}) : super._();

  @override
  Representative rebuild(void Function(RepresentativeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepresentativeBuilder toBuilder() =>
      new RepresentativeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Representative &&
        name == other.name &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Representative')
          ..add('name', name)
          ..add('title', title))
        .toString();
  }
}

class RepresentativeBuilder
    implements Builder<Representative, RepresentativeBuilder> {
  _$Representative? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  RepresentativeBuilder() {
    Representative._defaults(this);
  }

  RepresentativeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _title = $v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Representative other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Representative;
  }

  @override
  void update(void Function(RepresentativeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Representative build() => _build();

  _$Representative _build() {
    final _$result = _$v ?? new _$Representative._(name: name, title: title);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
