// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rapid_links.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RapidLinks _$RapidLinksFromJson(Map<String, dynamic> json) {
  return _RapidLinks.fromJson(json);
}

/// @nodoc
mixin _$RapidLinks {
  Related? get related => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RapidLinksCopyWith<RapidLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RapidLinksCopyWith<$Res> {
  factory $RapidLinksCopyWith(
          RapidLinks value, $Res Function(RapidLinks) then) =
      _$RapidLinksCopyWithImpl<$Res, RapidLinks>;
  @useResult
  $Res call({Related? related});

  $RelatedCopyWith<$Res>? get related;
}

/// @nodoc
class _$RapidLinksCopyWithImpl<$Res, $Val extends RapidLinks>
    implements $RapidLinksCopyWith<$Res> {
  _$RapidLinksCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? related = freezed,
  }) {
    return _then(_value.copyWith(
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as Related?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RelatedCopyWith<$Res>? get related {
    if (_value.related == null) {
      return null;
    }

    return $RelatedCopyWith<$Res>(_value.related!, (value) {
      return _then(_value.copyWith(related: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RapidLinksCopyWith<$Res>
    implements $RapidLinksCopyWith<$Res> {
  factory _$$_RapidLinksCopyWith(
          _$_RapidLinks value, $Res Function(_$_RapidLinks) then) =
      __$$_RapidLinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Related? related});

  @override
  $RelatedCopyWith<$Res>? get related;
}

/// @nodoc
class __$$_RapidLinksCopyWithImpl<$Res>
    extends _$RapidLinksCopyWithImpl<$Res, _$_RapidLinks>
    implements _$$_RapidLinksCopyWith<$Res> {
  __$$_RapidLinksCopyWithImpl(
      _$_RapidLinks _value, $Res Function(_$_RapidLinks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? related = freezed,
  }) {
    return _then(_$_RapidLinks(
      related: freezed == related
          ? _value.related
          : related // ignore: cast_nullable_to_non_nullable
              as Related?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RapidLinks implements _RapidLinks {
  _$_RapidLinks({this.related});

  factory _$_RapidLinks.fromJson(Map<String, dynamic> json) =>
      _$$_RapidLinksFromJson(json);

  @override
  final Related? related;

  @override
  String toString() {
    return 'RapidLinks(related: $related)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RapidLinks &&
            (identical(other.related, related) || other.related == related));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, related);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RapidLinksCopyWith<_$_RapidLinks> get copyWith =>
      __$$_RapidLinksCopyWithImpl<_$_RapidLinks>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RapidLinksToJson(
      this,
    );
  }
}

abstract class _RapidLinks implements RapidLinks {
  factory _RapidLinks({final Related? related}) = _$_RapidLinks;

  factory _RapidLinks.fromJson(Map<String, dynamic> json) =
      _$_RapidLinks.fromJson;

  @override
  Related? get related;
  @override
  @JsonKey(ignore: true)
  _$$_RapidLinksCopyWith<_$_RapidLinks> get copyWith =>
      throw _privateConstructorUsedError;
}
