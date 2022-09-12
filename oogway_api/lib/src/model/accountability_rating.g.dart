// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accountability_rating.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountabilityRating extends AccountabilityRating {
  @override
  final num? score;
  @override
  final int? rating;
  @override
  final AccountabilityTests? accountabilityTests;

  factory _$AccountabilityRating(
          [void Function(AccountabilityRatingBuilder)? updates]) =>
      (new AccountabilityRatingBuilder()..update(updates))._build();

  _$AccountabilityRating._({this.score, this.rating, this.accountabilityTests})
      : super._();

  @override
  AccountabilityRating rebuild(
          void Function(AccountabilityRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountabilityRatingBuilder toBuilder() =>
      new AccountabilityRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountabilityRating &&
        score == other.score &&
        rating == other.rating &&
        accountabilityTests == other.accountabilityTests;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, score.hashCode), rating.hashCode),
        accountabilityTests.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountabilityRating')
          ..add('score', score)
          ..add('rating', rating)
          ..add('accountabilityTests', accountabilityTests))
        .toString();
  }
}

class AccountabilityRatingBuilder
    implements Builder<AccountabilityRating, AccountabilityRatingBuilder> {
  _$AccountabilityRating? _$v;

  num? _score;
  num? get score => _$this._score;
  set score(num? score) => _$this._score = score;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  AccountabilityTestsBuilder? _accountabilityTests;
  AccountabilityTestsBuilder get accountabilityTests =>
      _$this._accountabilityTests ??= new AccountabilityTestsBuilder();
  set accountabilityTests(AccountabilityTestsBuilder? accountabilityTests) =>
      _$this._accountabilityTests = accountabilityTests;

  AccountabilityRatingBuilder() {
    AccountabilityRating._defaults(this);
  }

  AccountabilityRatingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _score = $v.score;
      _rating = $v.rating;
      _accountabilityTests = $v.accountabilityTests?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountabilityRating other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountabilityRating;
  }

  @override
  void update(void Function(AccountabilityRatingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountabilityRating build() => _build();

  _$AccountabilityRating _build() {
    _$AccountabilityRating _$result;
    try {
      _$result = _$v ??
          new _$AccountabilityRating._(
              score: score,
              rating: rating,
              accountabilityTests: _accountabilityTests?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accountabilityTests';
        _accountabilityTests?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AccountabilityRating', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
