// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_collection_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AdvisoryCollectionLink extends AdvisoryCollectionLink {
  @override
  final BuiltMap<String, JsonObject> links;

  factory _$AdvisoryCollectionLink(
          [void Function(AdvisoryCollectionLinkBuilder)? updates]) =>
      (new AdvisoryCollectionLinkBuilder()..update(updates)).build();

  _$AdvisoryCollectionLink._({required this.links}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        links, 'AdvisoryCollectionLink', 'links');
  }

  @override
  AdvisoryCollectionLink rebuild(
          void Function(AdvisoryCollectionLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AdvisoryCollectionLinkBuilder toBuilder() =>
      new AdvisoryCollectionLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AdvisoryCollectionLink && links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(0, links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AdvisoryCollectionLink')
          ..add('links', links))
        .toString();
  }
}

class AdvisoryCollectionLinkBuilder
    implements Builder<AdvisoryCollectionLink, AdvisoryCollectionLinkBuilder> {
  _$AdvisoryCollectionLink? _$v;

  MapBuilder<String, JsonObject>? _links;
  MapBuilder<String, JsonObject> get links =>
      _$this._links ??= new MapBuilder<String, JsonObject>();
  set links(MapBuilder<String, JsonObject>? links) => _$this._links = links;

  AdvisoryCollectionLinkBuilder() {
    AdvisoryCollectionLink._defaults(this);
  }

  AdvisoryCollectionLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AdvisoryCollectionLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AdvisoryCollectionLink;
  }

  @override
  void update(void Function(AdvisoryCollectionLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AdvisoryCollectionLink build() {
    _$AdvisoryCollectionLink _$result;
    try {
      _$result = _$v ?? new _$AdvisoryCollectionLink._(links: links.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AdvisoryCollectionLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
