// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_collection_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingCollectionLink extends RatingCollectionLink {
  @override
  final BuiltMap<String, JsonObject> links;

  factory _$RatingCollectionLink(
          [void Function(RatingCollectionLinkBuilder)? updates]) =>
      (new RatingCollectionLinkBuilder()..update(updates))._build();

  _$RatingCollectionLink._({required this.links}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        links, r'RatingCollectionLink', 'links');
  }

  @override
  RatingCollectionLink rebuild(
          void Function(RatingCollectionLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingCollectionLinkBuilder toBuilder() =>
      new RatingCollectionLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingCollectionLink && links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(0, links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingCollectionLink')
          ..add('links', links))
        .toString();
  }
}

class RatingCollectionLinkBuilder
    implements Builder<RatingCollectionLink, RatingCollectionLinkBuilder> {
  _$RatingCollectionLink? _$v;

  MapBuilder<String, JsonObject>? _links;
  MapBuilder<String, JsonObject> get links =>
      _$this._links ??= new MapBuilder<String, JsonObject>();
  set links(MapBuilder<String, JsonObject>? links) => _$this._links = links;

  RatingCollectionLinkBuilder() {
    RatingCollectionLink._defaults(this);
  }

  RatingCollectionLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingCollectionLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingCollectionLink;
  }

  @override
  void update(void Function(RatingCollectionLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingCollectionLink build() => _build();

  _$RatingCollectionLink _build() {
    _$RatingCollectionLink _$result;
    try {
      _$result = _$v ?? new _$RatingCollectionLink._(links: links.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RatingCollectionLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
