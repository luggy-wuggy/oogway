// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_collection_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CategoryCollectionItem extends CategoryCollectionItem {
  @override
  final String? categoryID;
  @override
  final String? categoryName;
  @override
  final String? image;
  @override
  final String? charityNavigatorURL;
  @override
  final BuiltList<CategoryCollectionCausesItem>? causes;

  factory _$CategoryCollectionItem(
          [void Function(CategoryCollectionItemBuilder)? updates]) =>
      (new CategoryCollectionItemBuilder()..update(updates)).build();

  _$CategoryCollectionItem._(
      {this.categoryID,
      this.categoryName,
      this.image,
      this.charityNavigatorURL,
      this.causes})
      : super._();

  @override
  CategoryCollectionItem rebuild(
          void Function(CategoryCollectionItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryCollectionItemBuilder toBuilder() =>
      new CategoryCollectionItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryCollectionItem &&
        categoryID == other.categoryID &&
        categoryName == other.categoryName &&
        image == other.image &&
        charityNavigatorURL == other.charityNavigatorURL &&
        causes == other.causes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, categoryID.hashCode), categoryName.hashCode),
                image.hashCode),
            charityNavigatorURL.hashCode),
        causes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryCollectionItem')
          ..add('categoryID', categoryID)
          ..add('categoryName', categoryName)
          ..add('image', image)
          ..add('charityNavigatorURL', charityNavigatorURL)
          ..add('causes', causes))
        .toString();
  }
}

class CategoryCollectionItemBuilder
    implements Builder<CategoryCollectionItem, CategoryCollectionItemBuilder> {
  _$CategoryCollectionItem? _$v;

  String? _categoryID;
  String? get categoryID => _$this._categoryID;
  set categoryID(String? categoryID) => _$this._categoryID = categoryID;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _charityNavigatorURL;
  String? get charityNavigatorURL => _$this._charityNavigatorURL;
  set charityNavigatorURL(String? charityNavigatorURL) =>
      _$this._charityNavigatorURL = charityNavigatorURL;

  ListBuilder<CategoryCollectionCausesItem>? _causes;
  ListBuilder<CategoryCollectionCausesItem> get causes =>
      _$this._causes ??= new ListBuilder<CategoryCollectionCausesItem>();
  set causes(ListBuilder<CategoryCollectionCausesItem>? causes) =>
      _$this._causes = causes;

  CategoryCollectionItemBuilder() {
    CategoryCollectionItem._defaults(this);
  }

  CategoryCollectionItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryID = $v.categoryID;
      _categoryName = $v.categoryName;
      _image = $v.image;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _causes = $v.causes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryCollectionItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CategoryCollectionItem;
  }

  @override
  void update(void Function(CategoryCollectionItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryCollectionItem build() {
    _$CategoryCollectionItem _$result;
    try {
      _$result = _$v ??
          new _$CategoryCollectionItem._(
              categoryID: categoryID,
              categoryName: categoryName,
              image: image,
              charityNavigatorURL: charityNavigatorURL,
              causes: _causes?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'causes';
        _causes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryCollectionItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
