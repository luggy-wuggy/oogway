// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'related.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Related _$RelatedFromJson(Map<String, dynamic> json) {
  return _Related.fromJson(json);
}

/// @nodoc
mixin _$Related {
  String? get href => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RelatedCopyWith<Related> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RelatedCopyWith<$Res> {
  factory $RelatedCopyWith(Related value, $Res Function(Related) then) =
      _$RelatedCopyWithImpl<$Res, Related>;
  @useResult
  $Res call({String? href});
}

/// @nodoc
class _$RelatedCopyWithImpl<$Res, $Val extends Related>
    implements $RelatedCopyWith<$Res> {
  _$RelatedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_value.copyWith(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RelatedCopyWith<$Res> implements $RelatedCopyWith<$Res> {
  factory _$$_RelatedCopyWith(
          _$_Related value, $Res Function(_$_Related) then) =
      __$$_RelatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? href});
}

/// @nodoc
class __$$_RelatedCopyWithImpl<$Res>
    extends _$RelatedCopyWithImpl<$Res, _$_Related>
    implements _$$_RelatedCopyWith<$Res> {
  __$$_RelatedCopyWithImpl(_$_Related _value, $Res Function(_$_Related) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = freezed,
  }) {
    return _then(_$_Related(
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Related implements _Related {
  _$_Related({this.href});

  factory _$_Related.fromJson(Map<String, dynamic> json) =>
      _$$_RelatedFromJson(json);

  @override
  final String? href;

  @override
  String toString() {
    return 'Related(href: $href)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Related &&
            (identical(other.href, href) || other.href == href));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RelatedCopyWith<_$_Related> get copyWith =>
      __$$_RelatedCopyWithImpl<_$_Related>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RelatedToJson(
      this,
    );
  }
}

abstract class _Related implements Related {
  factory _Related({final String? href}) = _$_Related;

  factory _Related.fromJson(Map<String, dynamic> json) = _$_Related.fromJson;

  @override
  String? get href;
  @override
  @JsonKey(ignore: true)
  _$$_RelatedCopyWith<_$_Related> get copyWith =>
      throw _privateConstructorUsedError;
}
