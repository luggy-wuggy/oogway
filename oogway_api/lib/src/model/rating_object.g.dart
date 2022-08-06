// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingObject extends RatingObject {
  @override
  final String? ratingID;
  @override
  final num? score;
  @override
  final int? rating;
  @override
  final Date? publicationDate;
  @override
  final OrganizationLink? referenceOrganization;
  @override
  final BuiltList<OrganizationLink> includedOrganizations;
  @override
  final IconSet? ratingImage;
  @override
  final Form990? form990;
  @override
  final FinancialRating? financialRating;
  @override
  final AccountabilityRating? accountabilityRating;

  factory _$RatingObject([void Function(RatingObjectBuilder)? updates]) =>
      (new RatingObjectBuilder()..update(updates)).build();

  _$RatingObject._(
      {this.ratingID,
      this.score,
      this.rating,
      this.publicationDate,
      this.referenceOrganization,
      required this.includedOrganizations,
      this.ratingImage,
      this.form990,
      this.financialRating,
      this.accountabilityRating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        includedOrganizations, 'RatingObject', 'includedOrganizations');
  }

  @override
  RatingObject rebuild(void Function(RatingObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingObjectBuilder toBuilder() => new RatingObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingObject &&
        ratingID == other.ratingID &&
        score == other.score &&
        rating == other.rating &&
        publicationDate == other.publicationDate &&
        referenceOrganization == other.referenceOrganization &&
        includedOrganizations == other.includedOrganizations &&
        ratingImage == other.ratingImage &&
        form990 == other.form990 &&
        financialRating == other.financialRating &&
        accountabilityRating == other.accountabilityRating;
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
                                    $jc($jc(0, ratingID.hashCode),
                                        score.hashCode),
                                    rating.hashCode),
                                publicationDate.hashCode),
                            referenceOrganization.hashCode),
                        includedOrganizations.hashCode),
                    ratingImage.hashCode),
                form990.hashCode),
            financialRating.hashCode),
        accountabilityRating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatingObject')
          ..add('ratingID', ratingID)
          ..add('score', score)
          ..add('rating', rating)
          ..add('publicationDate', publicationDate)
          ..add('referenceOrganization', referenceOrganization)
          ..add('includedOrganizations', includedOrganizations)
          ..add('ratingImage', ratingImage)
          ..add('form990', form990)
          ..add('financialRating', financialRating)
          ..add('accountabilityRating', accountabilityRating))
        .toString();
  }
}

class RatingObjectBuilder
    implements Builder<RatingObject, RatingObjectBuilder> {
  _$RatingObject? _$v;

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

  OrganizationLinkBuilder? _referenceOrganization;
  OrganizationLinkBuilder get referenceOrganization =>
      _$this._referenceOrganization ??= new OrganizationLinkBuilder();
  set referenceOrganization(OrganizationLinkBuilder? referenceOrganization) =>
      _$this._referenceOrganization = referenceOrganization;

  ListBuilder<OrganizationLink>? _includedOrganizations;
  ListBuilder<OrganizationLink> get includedOrganizations =>
      _$this._includedOrganizations ??= new ListBuilder<OrganizationLink>();
  set includedOrganizations(
          ListBuilder<OrganizationLink>? includedOrganizations) =>
      _$this._includedOrganizations = includedOrganizations;

  IconSetBuilder? _ratingImage;
  IconSetBuilder get ratingImage =>
      _$this._ratingImage ??= new IconSetBuilder();
  set ratingImage(IconSetBuilder? ratingImage) =>
      _$this._ratingImage = ratingImage;

  Form990Builder? _form990;
  Form990Builder get form990 => _$this._form990 ??= new Form990Builder();
  set form990(Form990Builder? form990) => _$this._form990 = form990;

  FinancialRatingBuilder? _financialRating;
  FinancialRatingBuilder get financialRating =>
      _$this._financialRating ??= new FinancialRatingBuilder();
  set financialRating(FinancialRatingBuilder? financialRating) =>
      _$this._financialRating = financialRating;

  AccountabilityRatingBuilder? _accountabilityRating;
  AccountabilityRatingBuilder get accountabilityRating =>
      _$this._accountabilityRating ??= new AccountabilityRatingBuilder();
  set accountabilityRating(AccountabilityRatingBuilder? accountabilityRating) =>
      _$this._accountabilityRating = accountabilityRating;

  RatingObjectBuilder() {
    RatingObject._defaults(this);
  }

  RatingObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ratingID = $v.ratingID;
      _score = $v.score;
      _rating = $v.rating;
      _publicationDate = $v.publicationDate;
      _referenceOrganization = $v.referenceOrganization?.toBuilder();
      _includedOrganizations = $v.includedOrganizations.toBuilder();
      _ratingImage = $v.ratingImage?.toBuilder();
      _form990 = $v.form990?.toBuilder();
      _financialRating = $v.financialRating?.toBuilder();
      _accountabilityRating = $v.accountabilityRating?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingObject;
  }

  @override
  void update(void Function(RatingObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatingObject build() {
    _$RatingObject _$result;
    try {
      _$result = _$v ??
          new _$RatingObject._(
              ratingID: ratingID,
              score: score,
              rating: rating,
              publicationDate: publicationDate,
              referenceOrganization: _referenceOrganization?.build(),
              includedOrganizations: includedOrganizations.build(),
              ratingImage: _ratingImage?.build(),
              form990: _form990?.build(),
              financialRating: _financialRating?.build(),
              accountabilityRating: _accountabilityRating?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'referenceOrganization';
        _referenceOrganization?.build();
        _$failedField = 'includedOrganizations';
        includedOrganizations.build();
        _$failedField = 'ratingImage';
        _ratingImage?.build();
        _$failedField = 'form990';
        _form990?.build();
        _$failedField = 'financialRating';
        _financialRating?.build();
        _$failedField = 'accountabilityRating';
        _accountabilityRating?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RatingObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
