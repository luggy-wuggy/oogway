// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'charity_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CharityList _$CharityListFromJson(Map<String, dynamic> json) {
  return _CharityList.fromJson(json);
}

/// @nodoc
mixin _$CharityList {
  List<Charity> get charities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharityListCopyWith<CharityList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharityListCopyWith<$Res> {
  factory $CharityListCopyWith(
          CharityList value, $Res Function(CharityList) then) =
      _$CharityListCopyWithImpl<$Res, CharityList>;
  @useResult
  $Res call({List<Charity> charities});
}

/// @nodoc
class _$CharityListCopyWithImpl<$Res, $Val extends CharityList>
    implements $CharityListCopyWith<$Res> {
  _$CharityListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charities = null,
  }) {
    return _then(_value.copyWith(
      charities: null == charities
          ? _value.charities
          : charities // ignore: cast_nullable_to_non_nullable
              as List<Charity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CharityListCopyWith<$Res>
    implements $CharityListCopyWith<$Res> {
  factory _$$_CharityListCopyWith(
          _$_CharityList value, $Res Function(_$_CharityList) then) =
      __$$_CharityListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Charity> charities});
}

/// @nodoc
class __$$_CharityListCopyWithImpl<$Res>
    extends _$CharityListCopyWithImpl<$Res, _$_CharityList>
    implements _$$_CharityListCopyWith<$Res> {
  __$$_CharityListCopyWithImpl(
      _$_CharityList _value, $Res Function(_$_CharityList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charities = null,
  }) {
    return _then(_$_CharityList(
      charities: null == charities
          ? _value._charities
          : charities // ignore: cast_nullable_to_non_nullable
              as List<Charity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CharityList implements _CharityList {
  _$_CharityList({final List<Charity> charities = const []})
      : _charities = charities;

  factory _$_CharityList.fromJson(Map<String, dynamic> json) =>
      _$$_CharityListFromJson(json);

  final List<Charity> _charities;
  @override
  @JsonKey()
  List<Charity> get charities {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_charities);
  }

  @override
  String toString() {
    return 'CharityList(charities: $charities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharityList &&
            const DeepCollectionEquality()
                .equals(other._charities, _charities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_charities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharityListCopyWith<_$_CharityList> get copyWith =>
      __$$_CharityListCopyWithImpl<_$_CharityList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharityListToJson(
      this,
    );
  }
}

abstract class _CharityList implements CharityList {
  factory _CharityList({final List<Charity> charities}) = _$_CharityList;

  factory _CharityList.fromJson(Map<String, dynamic> json) =
      _$_CharityList.fromJson;

  @override
  List<Charity> get charities;
  @override
  @JsonKey(ignore: true)
  _$$_CharityListCopyWith<_$_CharityList> get copyWith =>
      throw _privateConstructorUsedError;
}
