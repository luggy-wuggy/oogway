// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_collection_get_ratings_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingCollectionGetRatingsResponse404
    extends RatingCollectionGetRatingsResponse404 {
  @override
  final String? errorMessage;

  factory _$RatingCollectionGetRatingsResponse404(
          [void Function(RatingCollectionGetRatingsResponse404Builder)?
              updates]) =>
      (new RatingCollectionGetRatingsResponse404Builder()..update(updates))
          ._build();

  _$RatingCollectionGetRatingsResponse404._({this.errorMessage}) : super._();

  @override
  RatingCollectionGetRatingsResponse404 rebuild(
          void Function(RatingCollectionGetRatingsResponse404Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingCollectionGetRatingsResponse404Builder toBuilder() =>
      new RatingCollectionGetRatingsResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingCollectionGetRatingsResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RatingCollectionGetRatingsResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class RatingCollectionGetRatingsResponse404Builder
    implements
        Builder<RatingCollectionGetRatingsResponse404,
            RatingCollectionGetRatingsResponse404Builder> {
  _$RatingCollectionGetRatingsResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  RatingCollectionGetRatingsResponse404Builder() {
    RatingCollectionGetRatingsResponse404._defaults(this);
  }

  RatingCollectionGetRatingsResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingCollectionGetRatingsResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingCollectionGetRatingsResponse404;
  }

  @override
  void update(
      void Function(RatingCollectionGetRatingsResponse404Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingCollectionGetRatingsResponse404 build() => _build();

  _$RatingCollectionGetRatingsResponse404 _build() {
    final _$result = _$v ??
        new _$RatingCollectionGetRatingsResponse404._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
