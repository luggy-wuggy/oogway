// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_object_get_rating_response400.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RatingObjectGetRatingResponse400
    extends RatingObjectGetRatingResponse400 {
  @override
  final String? errorMessage;

  factory _$RatingObjectGetRatingResponse400(
          [void Function(RatingObjectGetRatingResponse400Builder)? updates]) =>
      (new RatingObjectGetRatingResponse400Builder()..update(updates)).build();

  _$RatingObjectGetRatingResponse400._({this.errorMessage}) : super._();

  @override
  RatingObjectGetRatingResponse400 rebuild(
          void Function(RatingObjectGetRatingResponse400Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingObjectGetRatingResponse400Builder toBuilder() =>
      new RatingObjectGetRatingResponse400Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingObjectGetRatingResponse400 &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(0, errorMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatingObjectGetRatingResponse400')
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class RatingObjectGetRatingResponse400Builder
    implements
        Builder<RatingObjectGetRatingResponse400,
            RatingObjectGetRatingResponse400Builder> {
  _$RatingObjectGetRatingResponse400? _$v;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  RatingObjectGetRatingResponse400Builder() {
    RatingObjectGetRatingResponse400._defaults(this);
  }

  RatingObjectGetRatingResponse400Builder get _$this {
    final $v = _$v;
    if ($v != null) {
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingObjectGetRatingResponse400 other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingObjectGetRatingResponse400;
  }

  @override
  void update(void Function(RatingObjectGetRatingResponse400Builder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatingObjectGetRatingResponse400 build() {
    final _$result = _$v ??
        new _$RatingObjectGetRatingResponse400._(errorMessage: errorMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
