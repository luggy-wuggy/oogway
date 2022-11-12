// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingImage _$RatingImageFromJson(Map<String, dynamic> json) {
  return _RatingImage.fromJson(json);
}

/// @nodoc
mixin _$RatingImage {
  String? get small => throw _privateConstructorUsedError;
  String? get large => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingImageCopyWith<RatingImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingImageCopyWith<$Res> {
  factory $RatingImageCopyWith(
          RatingImage value, $Res Function(RatingImage) then) =
      _$RatingImageCopyWithImpl<$Res, RatingImage>;
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class _$RatingImageCopyWithImpl<$Res, $Val extends RatingImage>
    implements $RatingImageCopyWith<$Res> {
  _$RatingImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_value.copyWith(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RatingImageCopyWith<$Res>
    implements $RatingImageCopyWith<$Res> {
  factory _$$_RatingImageCopyWith(
          _$_RatingImage value, $Res Function(_$_RatingImage) then) =
      __$$_RatingImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? small, String? large});
}

/// @nodoc
class __$$_RatingImageCopyWithImpl<$Res>
    extends _$RatingImageCopyWithImpl<$Res, _$_RatingImage>
    implements _$$_RatingImageCopyWith<$Res> {
  __$$_RatingImageCopyWithImpl(
      _$_RatingImage _value, $Res Function(_$_RatingImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? small = freezed,
    Object? large = freezed,
  }) {
    return _then(_$_RatingImage(
      small: freezed == small
          ? _value.small
          : small // ignore: cast_nullable_to_non_nullable
              as String?,
      large: freezed == large
          ? _value.large
          : large // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RatingImage implements _RatingImage {
  _$_RatingImage({this.small, this.large});

  factory _$_RatingImage.fromJson(Map<String, dynamic> json) =>
      _$$_RatingImageFromJson(json);

  @override
  final String? small;
  @override
  final String? large;

  @override
  String toString() {
    return 'RatingImage(small: $small, large: $large)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RatingImage &&
            (identical(other.small, small) || other.small == small) &&
            (identical(other.large, large) || other.large == large));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, small, large);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingImageCopyWith<_$_RatingImage> get copyWith =>
      __$$_RatingImageCopyWithImpl<_$_RatingImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingImageToJson(
      this,
    );
  }
}

abstract class _RatingImage implements RatingImage {
  factory _RatingImage({final String? small, final String? large}) =
      _$_RatingImage;

  factory _RatingImage.fromJson(Map<String, dynamic> json) =
      _$_RatingImage.fromJson;

  @override
  String? get small;
  @override
  String? get large;
  @override
  @JsonKey(ignore: true)
  _$$_RatingImageCopyWith<_$_RatingImage> get copyWith =>
      throw _privateConstructorUsedError;
}
