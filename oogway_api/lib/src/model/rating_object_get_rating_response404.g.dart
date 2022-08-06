// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_object_get_rating_response404.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingObjectGetRatingResponse404
    extends RatingObjectGetRatingResponse404 {
  @override
  final String? errorMessage;

  factory _$RatingObjectGetRatingResponse404(
          [void Function(RatingObjectGetRatingResponse404Builder)? updates]) =>
      (new RatingObjectGetRatingResponse404Builder()..update(updates)).build();

  _$RatingObjectGetRatingResponse404._({this.errorMessage}) : super._();

  @override
  RatingObjectGetRatingResponse404 rebuild(
          void Function(RatingObjectGetRatingResponse404Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingObjectGetRatingResponse404Builder toBuilder() =>
      new RatingObjectGetRatingResponse404Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingObjectGetRatingResponse404 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatingObjectGetRatingResponse404')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class RatingObjectGetRatingResponse404Builder
    implements
        Builder<RatingObjectGetRatingResponse404,
            RatingObjectGetRatingResponse404Builder> {
  _$RatingObjectGetRatingResponse404? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  RatingObjectGetRatingResponse404Builder() {
    RatingObjectGetRatingResponse404._defaults(this);
  }

  RatingObjectGetRatingResponse404Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingObjectGetRatingResponse404 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingObjectGetRatingResponse404;
  }

  @override
  void update(void Function(RatingObjectGetRatingResponse404Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatingObjectGetRatingResponse404 build() {
    final _$result = _$v ??
        new _$RatingObjectGetRatingResponse404._(errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
