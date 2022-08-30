// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_current_rating_accountability_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionCurrentRatingAccountabilityRating
    extends OrganizationCollectionCurrentRatingAccountabilityRating {
  @override
  final num? score;
  @override
  final int? rating;

  factory _$OrganizationCollectionCurrentRatingAccountabilityRating(
          [void Function(
                  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder)?
              updates]) =>
      (new OrganizationCollectionCurrentRatingAccountabilityRatingBuilder()
            ..update(updates))
          ._build();

  _$OrganizationCollectionCurrentRatingAccountabilityRating._(
      {this.score, this.rating})
      : super._();

  @override
  OrganizationCollectionCurrentRatingAccountabilityRating rebuild(
          void Function(
                  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder toBuilder() =>
      new OrganizationCollectionCurrentRatingAccountabilityRatingBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionCurrentRatingAccountabilityRating &&
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
            r'OrganizationCollectionCurrentRatingAccountabilityRating')
          ..add('score', score)
          ..add('rating', rating))
        .toString();
  }
}

class OrganizationCollectionCurrentRatingAccountabilityRatingBuilder
    implements
        Builder<OrganizationCollectionCurrentRatingAccountabilityRating,
            OrganizationCollectionCurrentRatingAccountabilityRatingBuilder> {
  _$OrganizationCollectionCurrentRatingAccountabilityRating? _$v;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder() {
    OrganizationCollectionCurrentRatingAccountabilityRating._defaults(this);
  }

  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionCurrentRatingAccountabilityRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionCurrentRatingAccountabilityRating;
  }

  @override
  void update(
      void Function(
              OrganizationCollectionCurrentRatingAccountabilityRatingBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCollectionCurrentRatingAccountabilityRating build() => _build();

  _$OrganizationCollectionCurrentRatingAccountabilityRating _build() {
    final _$result = _$v ??
        new _$OrganizationCollectionCurrentRatingAccountabilityRating._(
            score: score, rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
