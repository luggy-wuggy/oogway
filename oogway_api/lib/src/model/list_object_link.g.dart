// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_object_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListObjectLink extends ListObjectLink {
  @override
  final BuiltMap<String, JsonObject> links;
  @override
  final String? listID;
  @override
  final String? listType;
  @override
  final String? listName;
  @override
  final String? listAbstract;
  @override
  final String? listImageURL;
  @override
  final bool? isCurrentlyFeatured;
  @override
  final int? sortOrder;

  factory _$ListObjectLink([void Function(ListObjectLinkBuilder)? updates]) =>
      (new ListObjectLinkBuilder()..update(updates)).build();

  _$ListObjectLink._(
      {required this.links,
      this.listID,
      this.listType,
      this.listName,
      this.listAbstract,
      this.listImageURL,
      this.isCurrentlyFeatured,
      this.sortOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(links, 'ListObjectLink', 'links');
  }

  @override
  ListObjectLink rebuild(void Function(ListObjectLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListObjectLinkBuilder toBuilder() =>
      new ListObjectLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListObjectLink &&
        links == other.links &&
        listID == other.listID &&
        listType == other.listType &&
        listName == other.listName &&
        listAbstract == other.listAbstract &&
        listImageURL == other.listImageURL &&
        isCurrentlyFeatured == other.isCurrentlyFeatured &&
        sortOrder == other.sortOrder;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, links.hashCode), listID.hashCode),
                            listType.hashCode),
                        listName.hashCode),
                    listAbstract.hashCode),
                listImageURL.hashCode),
            isCurrentlyFeatured.hashCode),
        sortOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListObjectLink')
          ..add('links', links)
          ..add('listID', listID)
          ..add('listType', listType)
          ..add('listName', listName)
          ..add('listAbstract', listAbstract)
          ..add('listImageURL', listImageURL)
          ..add('isCurrentlyFeatured', isCurrentlyFeatured)
          ..add('sortOrder', sortOrder))
        .toString();
  }
}

class ListObjectLinkBuilder
    implements Builder<ListObjectLink, ListObjectLinkBuilder> {
  _$ListObjectLink? _$v;

  MapBuilder<String, JsonObject>? _links;
  MapBuilder<String, JsonObject> get links =>
      _$this._links ??= new MapBuilder<String, JsonObject>();
  set links(MapBuilder<String, JsonObject>? links) => _$this._links = links;

  String? _listID;
  String? get listID => _$this._listID;
  set listID(String? listID) => _$this._listID = listID;

  String? _listType;
  String? get listType => _$this._listType;
  set listType(String? listType) => _$this._listType = listType;

  String? _listName;
  String? get listName => _$this._listName;
  set listName(String? listName) => _$this._listName = listName;

  String? _listAbstract;
  String? get listAbstract => _$this._listAbstract;
  set listAbstract(String? listAbstract) => _$this._listAbstract = listAbstract;

  String? _listImageURL;
  String? get listImageURL => _$this._listImageURL;
  set listImageURL(String? listImageURL) => _$this._listImageURL = listImageURL;

  bool? _isCurrentlyFeatured;
  bool? get isCurrentlyFeatured => _$this._isCurrentlyFeatured;
  set isCurrentlyFeatured(bool? isCurrentlyFeatured) =>
      _$this._isCurrentlyFeatured = isCurrentlyFeatured;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  ListObjectLinkBuilder() {
    ListObjectLink._defaults(this);
  }

  ListObjectLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _links = $v.links.toBuilder();
      _listID = $v.listID;
      _listType = $v.listType;
      _listName = $v.listName;
      _listAbstract = $v.listAbstract;
      _listImageURL = $v.listImageURL;
      _isCurrentlyFeatured = $v.isCurrentlyFeatured;
      _sortOrder = $v.sortOrder;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListObjectLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListObjectLink;
  }

  @override
  void update(void Function(ListObjectLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListObjectLink build() {
    _$ListObjectLink _$result;
    try {
      _$result = _$v ??
          new _$ListObjectLink._(
              links: links.build(),
              listID: listID,
              listType: listType,
              listName: listName,
              listAbstract: listAbstract,
              listImageURL: listImageURL,
              isCurrentlyFeatured: isCurrentlyFeatured,
              sortOrder: sortOrder);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ListObjectLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
