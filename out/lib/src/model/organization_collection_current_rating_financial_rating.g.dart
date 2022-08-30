// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_current_rating_financial_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionCurrentRatingFinancialRating
    extends OrganizationCollectionCurrentRatingFinancialRating {
  @override
  final num? score;
  @override
  final int? rating;

  factory _$OrganizationCollectionCurrentRatingFinancialRating(
          [void Function(
                  OrganizationCollectionCurrentRatingFinancialRatingBuilder)?
              updates]) =>
      (new OrganizationCollectionCurrentRatingFinancialRatingBuilder()
            ..update(updates))
          ._build();

  _$OrganizationCollectionCurrentRatingFinancialRating._(
      {this.score, this.rating})
      : super._();

  @override
  OrganizationCollectionCurrentRatingFinancialRating rebuild(
          void Function(
                  OrganizationCollectionCurrentRatingFinancialRatingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionCurrentRatingFinancialRatingBuilder toBuilder() =>
      new OrganizationCollectionCurrentRatingFinancialRatingBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionCurrentRatingFinancialRating &&
        score == other.score &&
        rating == other.rating;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, score.hashCode), rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'OrganizationCollectionCurrentRatingFinancialRating')
          ..add('score', score)
          ..add('rating', rating))
        .toString();
  }
}

class OrganizationCollectionCurrentRatingFinancialRatingBuilder
    implements
        Builder<OrganizationCollectionCurrentRatingFinancialRating,
            OrganizationCollectionCurrentRatingFinancialRatingBuilder> {
  _$OrganizationCollectionCurrentRatingFinancialRating? _$v;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  OrganizationCollectionCurrentRatingFinancialRatingBuilder() {
    OrganizationCollectionCurrentRatingFinancialRating._defaults(this);
  }

  OrganizationCollectionCurrentRatingFinancialRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionCurrentRatingFinancialRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionCurrentRatingFinancialRating;
  }

  @override
  void update(
      void Function(OrganizationCollectionCurrentRatingFinancialRatingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCollectionCurrentRatingFinancialRating build() => _build();

  _$OrganizationCollectionCurrentRatingFinancialRating _build() {
    final _$result = _$v ??
        new _$OrganizationCollectionCurrentRatingFinancialRating._(
            score: score, rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
