// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_collection_get_ratings_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingCollectionGetRatingsResponse400
    extends RatingCollectionGetRatingsResponse400 {
  @override
  final String? errorMessage;

  factory _$RatingCollectionGetRatingsResponse400(
          [void Function(RatingCollectionGetRatingsResponse400Builder)?
              updates]) =>
      (new RatingCollectionGetRatingsResponse400Builder()..update(updates))
          ._build();

  _$RatingCollectionGetRatingsResponse400._({this.errorMessage}) : super._();

  @override
  RatingCollectionGetRatingsResponse400 rebuild(
          void Function(RatingCollectionGetRatingsResponse400Builder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingCollectionGetRatingsResponse400Builder toBuilder() =>
      new RatingCollectionGetRatingsResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingCollectionGetRatingsResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'RatingCollectionGetRatingsResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class RatingCollectionGetRatingsResponse400Builder
    implements
        Builder<RatingCollectionGetRatingsResponse400,
            RatingCollectionGetRatingsResponse400Builder> {
  _$RatingCollectionGetRatingsResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  RatingCollectionGetRatingsResponse400Builder() {
    RatingCollectionGetRatingsResponse400._defaults(this);
  }

  RatingCollectionGetRatingsResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingCollectionGetRatingsResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingCollectionGetRatingsResponse400;
  }

  @override
  void update(
      void Function(RatingCollectionGetRatingsResponse400Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RatingCollectionGetRatingsResponse400 build() => _build();

  _$RatingCollectionGetRatingsResponse400 _build() {
    final _$result = _$v ??
        new _$RatingCollectionGetRatingsResponse400._(
            errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
