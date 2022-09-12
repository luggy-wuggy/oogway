// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_object_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationObjectCategory extends OrganizationObjectCategory {
  @override
  final String? categoryID;
  @override
  final String? categoryName;
  @override
  final String? image;
  @override
  final String? charityNavigatorURL;

  factory _$OrganizationObjectCategory(
          [void Function(OrganizationObjectCategoryBuilder)? updates]) =>
      (new OrganizationObjectCategoryBuilder()..update(updates))._build();

  _$OrganizationObjectCategory._(
      {this.categoryID,
      this.categoryName,
      this.image,
      this.charityNavigatorURL})
      : super._();

  @override
  OrganizationObjectCategory rebuild(
          void Function(OrganizationObjectCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationObjectCategoryBuilder toBuilder() =>
      new OrganizationObjectCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationObjectCategory &&
        categoryID == other.categoryID &&
        categoryName == other.categoryName &&
        image == other.image &&
        charityNavigatorURL == other.charityNavigatorURL;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, categoryID.hashCode), categoryName.hashCode),
            image.hashCode),
        charityNavigatorURL.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganizationObjectCategory')
          ..add('categoryID', categoryID)
          ..add('categoryName', categoryName)
          ..add('image', image)
          ..add('charityNavigatorURL', charityNavigatorURL))
        .toString();
  }
}

class OrganizationObjectCategoryBuilder
    implements
        Builder<OrganizationObjectCategory, OrganizationObjectCategoryBuilder> {
  _$OrganizationObjectCategory? _$v;

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

  OrganizationObjectCategoryBuilder() {
    OrganizationObjectCategory._defaults(this);
  }

  OrganizationObjectCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryID = $v.categoryID;
      _categoryName = $v.categoryName;
      _image = $v.image;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationObjectCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationObjectCategory;
  }

  @override
  void update(void Function(OrganizationObjectCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationObjectCategory build() => _build();

  _$OrganizationObjectCategory _build() {
    final _$result = _$v ??
        new _$OrganizationObjectCategory._(
            categoryID: categoryID,
            categoryName: categoryName,
            image: image,
            charityNavigatorURL: charityNavigatorURL);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
