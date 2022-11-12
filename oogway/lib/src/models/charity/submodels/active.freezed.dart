// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'active.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Active _$ActiveFromJson(Map<String, dynamic> json) {
  return _Active.fromJson(json);
}

/// @nodoc
mixin _$Active {
  RapidLinks? get rapidLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveCopyWith<Active> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveCopyWith<$Res> {
  factory $ActiveCopyWith(Active value, $Res Function(Active) then) =
      _$ActiveCopyWithImpl<$Res, Active>;
  @useResult
  $Res call({RapidLinks? rapidLinks});

  $RapidLinksCopyWith<$Res>? get rapidLinks;
}

/// @nodoc
class _$ActiveCopyWithImpl<$Res, $Val extends Active>
    implements $ActiveCopyWith<$Res> {
  _$ActiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rapidLinks = freezed,
  }) {
    return _then(_value.copyWith(
      rapidLinks: freezed == rapidLinks
          ? _value.rapidLinks
          : rapidLinks // ignore: cast_nullable_to_non_nullable
              as RapidLinks?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RapidLinksCopyWith<$Res>? get rapidLinks {
    if (_value.rapidLinks == null) {
      return null;
    }

    return $RapidLinksCopyWith<$Res>(_value.rapidLinks!, (value) {
      return _then(_value.copyWith(rapidLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActiveCopyWith<$Res> implements $ActiveCopyWith<$Res> {
  factory _$$_ActiveCopyWith(_$_Active value, $Res Function(_$_Active) then) =
      __$$_ActiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RapidLinks? rapidLinks});

  @override
  $RapidLinksCopyWith<$Res>? get rapidLinks;
}

/// @nodoc
class __$$_ActiveCopyWithImpl<$Res>
    extends _$ActiveCopyWithImpl<$Res, _$_Active>
    implements _$$_ActiveCopyWith<$Res> {
  __$$_ActiveCopyWithImpl(_$_Active _value, $Res Function(_$_Active) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rapidLinks = freezed,
  }) {
    return _then(_$_Active(
      rapidLinks: freezed == rapidLinks
          ? _value.rapidLinks
          : rapidLinks // ignore: cast_nullable_to_non_nullable
              as RapidLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Active implements _Active {
  _$_Active({this.rapidLinks});

  factory _$_Active.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveFromJson(json);

  @override
  final RapidLinks? rapidLinks;

  @override
  String toString() {
    return 'Active(rapidLinks: $rapidLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Active &&
            (identical(other.rapidLinks, rapidLinks) ||
                other.rapidLinks == rapidLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rapidLinks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveCopyWith<_$_Active> get copyWith =>
      __$$_ActiveCopyWithImpl<_$_Active>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveToJson(
      this,
    );
  }
}

abstract class _Active implements Active {
  factory _Active({final RapidLinks? rapidLinks}) = _$_Active;

  factory _Active.fromJson(Map<String, dynamic> json) = _$_Active.fromJson;

  @override
  RapidLinks? get rapidLinks;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveCopyWith<_$_Active> get copyWith =>
      throw _privateConstructorUsedError;
}
