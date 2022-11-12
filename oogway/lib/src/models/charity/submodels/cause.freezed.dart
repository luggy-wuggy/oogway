// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cause.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cause _$CauseFromJson(Map<String, dynamic> json) {
  return _Cause.fromJson(json);
}

/// @nodoc
mixin _$Cause {
  int? get causeId => throw _privateConstructorUsedError;
  String? get causeName => throw _privateConstructorUsedError;
  String? get charityNavigatorUrl => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CauseCopyWith<Cause> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CauseCopyWith<$Res> {
  factory $CauseCopyWith(Cause value, $Res Function(Cause) then) =
      _$CauseCopyWithImpl<$Res, Cause>;
  @useResult
  $Res call(
      {int? causeId,
      String? causeName,
      String? charityNavigatorUrl,
      String? image});
}

/// @nodoc
class _$CauseCopyWithImpl<$Res, $Val extends Cause>
    implements $CauseCopyWith<$Res> {
  _$CauseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? causeId = freezed,
    Object? causeName = freezed,
    Object? charityNavigatorUrl = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      causeId: freezed == causeId
          ? _value.causeId
          : causeId // ignore: cast_nullable_to_non_nullable
              as int?,
      causeName: freezed == causeName
          ? _value.causeName
          : causeName // ignore: cast_nullable_to_non_nullable
              as String?,
      charityNavigatorUrl: freezed == charityNavigatorUrl
          ? _value.charityNavigatorUrl
          : charityNavigatorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CauseCopyWith<$Res> implements $CauseCopyWith<$Res> {
  factory _$$_CauseCopyWith(_$_Cause value, $Res Function(_$_Cause) then) =
      __$$_CauseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? causeId,
      String? causeName,
      String? charityNavigatorUrl,
      String? image});
}

/// @nodoc
class __$$_CauseCopyWithImpl<$Res> extends _$CauseCopyWithImpl<$Res, _$_Cause>
    implements _$$_CauseCopyWith<$Res> {
  __$$_CauseCopyWithImpl(_$_Cause _value, $Res Function(_$_Cause) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? causeId = freezed,
    Object? causeName = freezed,
    Object? charityNavigatorUrl = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_Cause(
      causeId: freezed == causeId
          ? _value.causeId
          : causeId // ignore: cast_nullable_to_non_nullable
              as int?,
      causeName: freezed == causeName
          ? _value.causeName
          : causeName // ignore: cast_nullable_to_non_nullable
              as String?,
      charityNavigatorUrl: freezed == charityNavigatorUrl
          ? _value.charityNavigatorUrl
          : charityNavigatorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cause implements _Cause {
  _$_Cause(
      {this.causeId, this.causeName, this.charityNavigatorUrl, this.image});

  factory _$_Cause.fromJson(Map<String, dynamic> json) =>
      _$$_CauseFromJson(json);

  @override
  final int? causeId;
  @override
  final String? causeName;
  @override
  final String? charityNavigatorUrl;
  @override
  final String? image;

  @override
  String toString() {
    return 'Cause(causeId: $causeId, causeName: $causeName, charityNavigatorUrl: $charityNavigatorUrl, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cause &&
            (identical(other.causeId, causeId) || other.causeId == causeId) &&
            (identical(other.causeName, causeName) ||
                other.causeName == causeName) &&
            (identical(other.charityNavigatorUrl, charityNavigatorUrl) ||
                other.charityNavigatorUrl == charityNavigatorUrl) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, causeId, causeName, charityNavigatorUrl, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CauseCopyWith<_$_Cause> get copyWith =>
      __$$_CauseCopyWithImpl<_$_Cause>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CauseToJson(
      this,
    );
  }
}

abstract class _Cause implements Cause {
  factory _Cause(
      {final int? causeId,
      final String? causeName,
      final String? charityNavigatorUrl,
      final String? image}) = _$_Cause;

  factory _Cause.fromJson(Map<String, dynamic> json) = _$_Cause.fromJson;

  @override
  int? get causeId;
  @override
  String? get causeName;
  @override
  String? get charityNavigatorUrl;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_CauseCopyWith<_$_Cause> get copyWith =>
      throw _privateConstructorUsedError;
}
