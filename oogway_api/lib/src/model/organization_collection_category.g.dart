// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionCategory extends OrganizationCollectionCategory {
  @override
  final String? categoryID;
  @override
  final String? categoryName;

  factory _$OrganizationCollectionCategory(
          [void Function(OrganizationCollectionCategoryBuilder)? updates]) =>
      (new OrganizationCollectionCategoryBuilder()..update(updates)).build();

  _$OrganizationCollectionCategory._({this.categoryID, this.categoryName})
      : super._();

  @override
  OrganizationCollectionCategory rebuild(
          void Function(OrganizationCollectionCategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionCategoryBuilder toBuilder() =>
      new OrganizationCollectionCategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionCategory &&
        categoryID == other.categoryID &&
        categoryName == other.categoryName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, categoryID.hashCode), categoryName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationCollectionCategory')
          ..add('categoryID', categoryID)
          ..add('categoryName', categoryName))
        .toString();
  }
}

class OrganizationCollectionCategoryBuilder
    implements
        Builder<OrganizationCollectionCategory,
            OrganizationCollectionCategoryBuilder> {
  _$OrganizationCollectionCategory? _$v;

  String? _categoryID;
  String? get categoryID => _$this._categoryID;
  set categoryID(String? categoryID) => _$this._categoryID = categoryID;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  OrganizationCollectionCategoryBuilder() {
    OrganizationCollectionCategory._defaults(this);
  }

  OrganizationCollectionCategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryID = $v.categoryID;
      _categoryName = $v.categoryName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionCategory other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionCategory;
  }

  @override
  void update(void Function(OrganizationCollectionCategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationCollectionCategory build() {
    final _$result = _$v ??
        new _$OrganizationCollectionCategory._(
            categoryID: categoryID, categoryName: categoryName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
