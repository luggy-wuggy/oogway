// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'advisories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Advisories _$AdvisoriesFromJson(Map<String, dynamic> json) {
  return _Advisories.fromJson(json);
}

/// @nodoc
mixin _$Advisories {
  dynamic get severity => throw _privateConstructorUsedError;
  Active? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvisoriesCopyWith<Advisories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvisoriesCopyWith<$Res> {
  factory $AdvisoriesCopyWith(
          Advisories value, $Res Function(Advisories) then) =
      _$AdvisoriesCopyWithImpl<$Res, Advisories>;
  @useResult
  $Res call({dynamic severity, Active? active});

  $ActiveCopyWith<$Res>? get active;
}

/// @nodoc
class _$AdvisoriesCopyWithImpl<$Res, $Val extends Advisories>
    implements $AdvisoriesCopyWith<$Res> {
  _$AdvisoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as Active?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveCopyWith<$Res>? get active {
    if (_value.active == null) {
      return null;
    }

    return $ActiveCopyWith<$Res>(_value.active!, (value) {
      return _then(_value.copyWith(active: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AdvisoriesCopyWith<$Res>
    implements $AdvisoriesCopyWith<$Res> {
  factory _$$_AdvisoriesCopyWith(
          _$_Advisories value, $Res Function(_$_Advisories) then) =
      __$$_AdvisoriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic severity, Active? active});

  @override
  $ActiveCopyWith<$Res>? get active;
}

/// @nodoc
class __$$_AdvisoriesCopyWithImpl<$Res>
    extends _$AdvisoriesCopyWithImpl<$Res, _$_Advisories>
    implements _$$_AdvisoriesCopyWith<$Res> {
  __$$_AdvisoriesCopyWithImpl(
      _$_Advisories _value, $Res Function(_$_Advisories) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? severity = null,
    Object? active = freezed,
  }) {
    return _then(_$_Advisories(
      severity: null == severity
          ? _value.severity
          : severity // ignore: cast_nullable_to_non_nullable
              as dynamic,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as Active?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Advisories implements _Advisories {
  _$_Advisories({this.severity, this.active});

  factory _$_Advisories.fromJson(Map<String, dynamic> json) =>
      _$$_AdvisoriesFromJson(json);

  @override
  final dynamic severity;
  @override
  final Active? active;

  @override
  String toString() {
    return 'Advisories(severity: $severity, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Advisories &&
            const DeepCollectionEquality().equals(other.severity, severity) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(severity), active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdvisoriesCopyWith<_$_Advisories> get copyWith =>
      __$$_AdvisoriesCopyWithImpl<_$_Advisories>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdvisoriesToJson(
      this,
    );
  }
}

abstract class _Advisories implements Advisories {
  factory _Advisories({final dynamic severity, final Active? active}) =
      _$_Advisories;

  factory _Advisories.fromJson(Map<String, dynamic> json) =
      _$_Advisories.fromJson;

  @override
  dynamic get severity;
  @override
  Active? get active;
  @override
  @JsonKey(ignore: true)
  _$$_AdvisoriesCopyWith<_$_Advisories> get copyWith =>
      throw _privateConstructorUsedError;
}
