// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_current_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionCurrentRating
    extends OrganizationCollectionCurrentRating {
  @override
  final String? ratingID;
  @override
  final num? score;
  @override
  final int? rating;
  @override
  final Date? publicationDate;
  @override
  final OrganizationCollectionCurrentRatingFinancialRating? financialRating;
  @override
  final OrganizationCollectionCurrentRatingAccountabilityRating?
      accountabilityRating;
  @override
  final IconSet? ratingImage;
  @override
  final Form990? form990;

  factory _$OrganizationCollectionCurrentRating(
          [void Function(OrganizationCollectionCurrentRatingBuilder)?
              updates]) =>
      (new OrganizationCollectionCurrentRatingBuilder()..update(updates))
          .build();

  _$OrganizationCollectionCurrentRating._(
      {this.ratingID,
      this.score,
      this.rating,
      this.publicationDate,
      this.financialRating,
      this.accountabilityRating,
      this.ratingImage,
      this.form990})
      : super._();

  @override
  OrganizationCollectionCurrentRating rebuild(
          void Function(OrganizationCollectionCurrentRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionCurrentRatingBuilder toBuilder() =>
      new OrganizationCollectionCurrentRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionCurrentRating &&
        ratingID == other.ratingID &&
        score == other.score &&
        rating == other.rating &&
        publicationDate == other.publicationDate &&
        financialRating == other.financialRating &&
        accountabilityRating == other.accountabilityRating &&
        ratingImage == other.ratingImage &&
        form990 == other.form990;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, ratingID.hashCode), score.hashCode),
                            rating.hashCode),
                        publicationDate.hashCode),
                    financialRating.hashCode),
                accountabilityRating.hashCode),
            ratingImage.hashCode),
        form990.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationCollectionCurrentRating')
          ..add('ratingID', ratingID)
          ..add('score', score)
          ..add('rating', rating)
          ..add('publicationDate', publicationDate)
          ..add('financialRating', financialRating)
          ..add('accountabilityRating', accountabilityRating)
          ..add('ratingImage', ratingImage)
          ..add('form990', form990))
        .toString();
  }
}

class OrganizationCollectionCurrentRatingBuilder
    implements
        Builder<OrganizationCollectionCurrentRating,
            OrganizationCollectionCurrentRatingBuilder> {
  _$OrganizationCollectionCurrentRating? _$v;

  String? _ratingID;
  String? get ratingID => _$this._ratingID;
  set ratingID(String? ratingID) => _$this._ratingID = ratingID;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  Date? _publicationDate;
  Date? get publicationDate => _$this._publicationDate;
  set publicationDate(Date? publicationDate) =>
      _$this._publicationDate = publicationDate;

  OrganizationCollectionCurrentRatingFinancialRatingBuilder? _financialRating;
  OrganizationCollectionCurrentRatingFinancialRatingBuilder
      get financialRating => _$this._financialRating ??=
          new OrganizationCollectionCurrentRatingFinancialRatingBuilder();
  set financialRating(
          OrganizationCollectionCurrentRatingFinancialRatingBuilder?
              financialRating) =>
      _$this._financialRating = financialRating;

  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder?
      _accountabilityRating;
  OrganizationCollectionCurrentRatingAccountabilityRatingBuilder
      get accountabilityRating => _$this._accountabilityRating ??=
          new OrganizationCollectionCurrentRatingAccountabilityRatingBuilder();
  set accountabilityRating(
          OrganizationCollectionCurrentRatingAccountabilityRatingBuilder?
              accountabilityRating) =>
      _$this._accountabilityRating = accountabilityRating;

  IconSetBuilder? _ratingImage;
  IconSetBuilder get ratingImage =>
      _$this._ratingImage ??= new IconSetBuilder();
  set ratingImage(IconSetBuilder? ratingImage) =>
      _$this._ratingImage = ratingImage;

  Form990Builder? _form990;
  Form990Builder get form990 => _$this._form990 ??= new Form990Builder();
  set form990(Form990Builder? form990) => _$this._form990 = form990;

  OrganizationCollectionCurrentRatingBuilder() {
    OrganizationCollectionCurrentRating._defaults(this);
  }

  OrganizationCollectionCurrentRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ratingID = $v.ratingID;
      _score = $v.score;
      _rating = $v.rating;
      _publicationDate = $v.publicationDate;
      _financialRating = $v.financialRating?.toBuilder();
      _accountabilityRating = $v.accountabilityRating?.toBuilder();
      _ratingImage = $v.ratingImage?.toBuilder();
      _form990 = $v.form990?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionCurrentRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionCurrentRating;
  }

  @override
  void update(
      void Function(OrganizationCollectionCurrentRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationCollectionCurrentRating build() {
    _$OrganizationCollectionCurrentRating _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCollectionCurrentRating._(
              ratingID: ratingID,
              score: score,
              rating: rating,
              publicationDate: publicationDate,
              financialRating: _financialRating?.build(),
              accountabilityRating: _accountabilityRating?.build(),
              ratingImage: _ratingImage?.build(),
              form990: _form990?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'financialRating';
        _financialRating?.build();
        _$failedField = 'accountabilityRating';
        _accountabilityRating?.build();
        _$failedField = 'ratingImage';
        _ratingImage?.build();
        _$failedField = 'form990';
        _form990?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrganizationCollectionCurrentRating', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
