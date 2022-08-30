// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_list.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModelList extends ModelList {
  @override
  final String? listID;
  @override
  final String? listName;
  @override
  final String? listType;
  @override
  final bool? isCurrentlyFeatured;
  @override
  final int? sortOrder;
  @override
  final String? listAbstract;
  @override
  final String? listExplanation;
  @override
  final String? listImageURL;
  @override
  final String? charityNavigatorURL;
  @override
  final BuiltList<OrganizationGroup>? groups;

  factory _$ModelList([void Function(ModelListBuilder)? updates]) =>
      (new ModelListBuilder()..update(updates))._build();

  _$ModelList._(
      {this.listID,
      this.listName,
      this.listType,
      this.isCurrentlyFeatured,
      this.sortOrder,
      this.listAbstract,
      this.listExplanation,
      this.listImageURL,
      this.charityNavigatorURL,
      this.groups})
      : super._();

  @override
  ModelList rebuild(void Function(ModelListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModelListBuilder toBuilder() => new ModelListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModelList &&
        listID == other.listID &&
        listName == other.listName &&
        listType == other.listType &&
        isCurrentlyFeatured == other.isCurrentlyFeatured &&
        sortOrder == other.sortOrder &&
        listAbstract == other.listAbstract &&
        listExplanation == other.listExplanation &&
        listImageURL == other.listImageURL &&
        charityNavigatorURL == other.charityNavigatorURL &&
        groups == other.groups;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, listID.hashCode),
                                        listName.hashCode),
                                    listType.hashCode),
                                isCurrentlyFeatured.hashCode),
                            sortOrder.hashCode),
                        listAbstract.hashCode),
                    listExplanation.hashCode),
                listImageURL.hashCode),
            charityNavigatorURL.hashCode),
        groups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ModelList')
          ..add('listID', listID)
          ..add('listName', listName)
          ..add('listType', listType)
          ..add('isCurrentlyFeatured', isCurrentlyFeatured)
          ..add('sortOrder', sortOrder)
          ..add('listAbstract', listAbstract)
          ..add('listExplanation', listExplanation)
          ..add('listImageURL', listImageURL)
          ..add('charityNavigatorURL', charityNavigatorURL)
          ..add('groups', groups))
        .toString();
  }
}

class ModelListBuilder implements Builder<ModelList, ModelListBuilder> {
  _$ModelList? _$v;

  String? _listID;
  String? get listID => _$this._listID;
  set listID(String? listID) => _$this._listID = listID;

  String? _listName;
  String? get listName => _$this._listName;
  set listName(String? listName) => _$this._listName = listName;

  String? _listType;
  String? get listType => _$this._listType;
  set listType(String? listType) => _$this._listType = listType;

  bool? _isCurrentlyFeatured;
  bool? get isCurrentlyFeatured => _$this._isCurrentlyFeatured;
  set isCurrentlyFeatured(bool? isCurrentlyFeatured) =>
      _$this._isCurrentlyFeatured = isCurrentlyFeatured;

  int? _sortOrder;
  int? get sortOrder => _$this._sortOrder;
  set sortOrder(int? sortOrder) => _$this._sortOrder = sortOrder;

  String? _listAbstract;
  String? get listAbstract => _$this._listAbstract;
  set listAbstract(String? listAbstract) => _$this._listAbstract = listAbstract;

  String? _listExplanation;
  String? get listExplanation => _$this._listExplanation;
  set listExplanation(String? listExplanation) =>
      _$this._listExplanation = listExplanation;

  String? _listImageURL;
  String? get listImageURL => _$this._listImageURL;
  set listImageURL(String? listImageURL) => _$this._listImageURL = listImageURL;

  String? _charityNavigatorURL;
  String? get charityNavigatorURL => _$this._charityNavigatorURL;
  set charityNavigatorURL(String? charityNavigatorURL) =>
      _$this._charityNavigatorURL = charityNavigatorURL;

  ListBuilder<OrganizationGroup>? _groups;
  ListBuilder<OrganizationGroup> get groups =>
      _$this._groups ??= new ListBuilder<OrganizationGroup>();
  set groups(ListBuilder<OrganizationGroup>? groups) => _$this._groups = groups;

  ModelListBuilder() {
    ModelList._defaults(this);
  }

  ModelListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _listID = $v.listID;
      _listName = $v.listName;
      _listType = $v.listType;
      _isCurrentlyFeatured = $v.isCurrentlyFeatured;
      _sortOrder = $v.sortOrder;
      _listAbstract = $v.listAbstract;
      _listExplanation = $v.listExplanation;
      _listImageURL = $v.listImageURL;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _groups = $v.groups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModelList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModelList;
  }

  @override
  void update(void Function(ModelListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModelList build() => _build();

  _$ModelList _build() {
    _$ModelList _$result;
    try {
      _$result = _$v ??
          new _$ModelList._(
              listID: listID,
              listName: listName,
              listType: listType,
              isCurrentlyFeatured: isCurrentlyFeatured,
              sortOrder: sortOrder,
              listAbstract: listAbstract,
              listExplanation: listExplanation,
              listImageURL: listImageURL,
              charityNavigatorURL: charityNavigatorURL,
              groups: _groups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'groups';
        _groups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModelList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
