// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_link.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingLink extends RatingLink {
  @override
  final String? ratingID;
  @override
  final num? score;
  @override
  final int? rating;
  @override
  final Date? publicationDate;
  @override
  final IconSet? ratingImage;
  @override
  final Form990? form990;
  @override
  final BuiltMap<String, JsonObject> links;

  factory _$RatingLink([void Function(RatingLinkBuilder)? updates]) =>
      (new RatingLinkBuilder()..update(updates))._build();

  _$RatingLink._(
      {this.ratingID,
      this.score,
      this.rating,
      this.publicationDate,
      this.ratingImage,
      this.form990,
      required this.links})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(links, r'RatingLink', 'links');
  }

  @override
  RatingLink rebuild(void Function(RatingLinkBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingLinkBuilder toBuilder() => new RatingLinkBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingLink &&
        ratingID == other.ratingID &&
        score == other.score &&
        rating == other.rating &&
        publicationDate == other.publicationDate &&
        ratingImage == other.ratingImage &&
        form990 == other.form990 &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, ratingID.hashCode), score.hashCode),
                        rating.hashCode),
                    publicationDate.hashCode),
                ratingImage.hashCode),
            form990.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RatingLink')
          ..add('ratingID', ratingID)
          ..add('score', score)
          ..add('rating', rating)
          ..add('publicationDate', publicationDate)
          ..add('ratingImage', ratingImage)
          ..add('form990', form990)
          ..add('links', links))
        .toString();
  }
}

class RatingLinkBuilder implements Builder<RatingLink, RatingLinkBuilder> {
  _$RatingLink? _$v;

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

  IconSetBuilder? _ratingImage;
  IconSetBuilder get ratingImage =>
      _$this._ratingImage ??= new IconSetBuilder();
  set ratingImage(IconSetBuilder? ratingImage) =>
      _$this._ratingImage = ratingImage;

  Form990Builder? _form990;
  Form990Builder get form990 => _$this._form990 ??= new Form990Builder();
  set form990(Form990Builder? form990) => _$this._form990 = form990;

  MapBuilder<String, JsonObject>? _links;
  MapBuilder<String, JsonObject> get links =>
      _$this._links ??= new MapBuilder<String, JsonObject>();
  set links(MapBuilder<String, JsonObject>? links) => _$this._links = links;

  RatingLinkBuilder() {
    RatingLink._defaults(this);
  }

  RatingLinkBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ratingID = $v.ratingID;
      _score = $v.score;
      _rating = $v.rating;
      _publicationDate = $v.publicationDate;
      _ratingImage = $v.ratingImage?.toBuilder();
      _form990 = $v.form990?.toBuilder();
      _links = $v.links.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingLink other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingLink;
  }

  @override
  void update(void Function(RatingLinkBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingLink build() => _build();

  _$RatingLink _build() {
    _$RatingLink _$result;
    try {
      _$result = _$v ??
          new _$RatingLink._(
              ratingID: ratingID,
              score: score,
              rating: rating,
              publicationDate: publicationDate,
              ratingImage: _ratingImage?.build(),
              form990: _form990?.build(),
              links: links.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'ratingImage';
        _ratingImage?.build();
        _$failedField = 'form990';
        _form990?.build();
        _$failedField = 'links';
        links.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RatingLink', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
