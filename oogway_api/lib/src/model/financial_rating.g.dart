// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FinancialRating extends FinancialRating {
  @override
  final num? score;
  @override
  final int? rating;
  @override
  final PerformanceMetrics? performanceMetrics;

  factory _$FinancialRating([void Function(FinancialRatingBuilder)? updates]) =>
      (new FinancialRatingBuilder()..update(updates))._build();

  _$FinancialRating._({this.score, this.rating, this.performanceMetrics})
      : super._();

  @override
  FinancialRating rebuild(void Function(FinancialRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FinancialRatingBuilder toBuilder() =>
      new FinancialRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FinancialRating &&
        score == other.score &&
        rating == other.rating &&
        performanceMetrics == other.performanceMetrics;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, score.hashCode), rating.hashCode),
        performanceMetrics.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FinancialRating')
          ..add('score', score)
          ..add('rating', rating)
          ..add('performanceMetrics', performanceMetrics))
        .toString();
  }
}

class FinancialRatingBuilder
    implements Builder<FinancialRating, FinancialRatingBuilder> {
  _$FinancialRating? _$v;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  PerformanceMetricsBuilder? _performanceMetrics;
  PerformanceMetricsBuilder get performanceMetrics =>
      _$this._performanceMetrics ??= new PerformanceMetricsBuilder();
  set performanceMetrics(PerformanceMetricsBuilder? performanceMetrics) =>
      _$this._performanceMetrics = performanceMetrics;

  FinancialRatingBuilder() {
    FinancialRating._defaults(this);
  }

  FinancialRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _rating = $v.rating;
      _performanceMetrics = $v.performanceMetrics?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FinancialRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FinancialRating;
  }

  @override
  void update(void Function(FinancialRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FinancialRating build() => _build();

  _$FinancialRating _build() {
    _$FinancialRating _$result;
    try {
      _$result = _$v ??
          new _$FinancialRating._(
              score: score,
              rating: rating,
              performanceMetrics: _performanceMetrics?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'performanceMetrics';
        _performanceMetrics?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FinancialRating', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
