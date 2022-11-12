// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'organization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return _Organization.fromJson(json);
}

/// @nodoc
mixin _$Organization {
  String? get charityName => throw _privateConstructorUsedError;
  String? get ein => throw _privateConstructorUsedError;
  String? get charityNavigatorUrl => throw _privateConstructorUsedError;
  RapidLinks? get rapidLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationCopyWith<Organization> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationCopyWith<$Res> {
  factory $OrganizationCopyWith(
          Organization value, $Res Function(Organization) then) =
      _$OrganizationCopyWithImpl<$Res, Organization>;
  @useResult
  $Res call(
      {String? charityName,
      String? ein,
      String? charityNavigatorUrl,
      RapidLinks? rapidLinks});

  $RapidLinksCopyWith<$Res>? get rapidLinks;
}

/// @nodoc
class _$OrganizationCopyWithImpl<$Res, $Val extends Organization>
    implements $OrganizationCopyWith<$Res> {
  _$OrganizationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charityName = freezed,
    Object? ein = freezed,
    Object? charityNavigatorUrl = freezed,
    Object? rapidLinks = freezed,
  }) {
    return _then(_value.copyWith(
      charityName: freezed == charityName
          ? _value.charityName
          : charityName // ignore: cast_nullable_to_non_nullable
              as String?,
      ein: freezed == ein
          ? _value.ein
          : ein // ignore: cast_nullable_to_non_nullable
              as String?,
      charityNavigatorUrl: freezed == charityNavigatorUrl
          ? _value.charityNavigatorUrl
          : charityNavigatorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_OrganizationCopyWith<$Res>
    implements $OrganizationCopyWith<$Res> {
  factory _$$_OrganizationCopyWith(
          _$_Organization value, $Res Function(_$_Organization) then) =
      __$$_OrganizationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? charityName,
      String? ein,
      String? charityNavigatorUrl,
      RapidLinks? rapidLinks});

  @override
  $RapidLinksCopyWith<$Res>? get rapidLinks;
}

/// @nodoc
class __$$_OrganizationCopyWithImpl<$Res>
    extends _$OrganizationCopyWithImpl<$Res, _$_Organization>
    implements _$$_OrganizationCopyWith<$Res> {
  __$$_OrganizationCopyWithImpl(
      _$_Organization _value, $Res Function(_$_Organization) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charityName = freezed,
    Object? ein = freezed,
    Object? charityNavigatorUrl = freezed,
    Object? rapidLinks = freezed,
  }) {
    return _then(_$_Organization(
      charityName: freezed == charityName
          ? _value.charityName
          : charityName // ignore: cast_nullable_to_non_nullable
              as String?,
      ein: freezed == ein
          ? _value.ein
          : ein // ignore: cast_nullable_to_non_nullable
              as String?,
      charityNavigatorUrl: freezed == charityNavigatorUrl
          ? _value.charityNavigatorUrl
          : charityNavigatorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rapidLinks: freezed == rapidLinks
          ? _value.rapidLinks
          : rapidLinks // ignore: cast_nullable_to_non_nullable
              as RapidLinks?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Organization implements _Organization {
  _$_Organization(
      {this.charityName, this.ein, this.charityNavigatorUrl, this.rapidLinks});

  factory _$_Organization.fromJson(Map<String, dynamic> json) =>
      _$$_OrganizationFromJson(json);

  @override
  final String? charityName;
  @override
  final String? ein;
  @override
  final String? charityNavigatorUrl;
  @override
  final RapidLinks? rapidLinks;

  @override
  String toString() {
    return 'Organization(charityName: $charityName, ein: $ein, charityNavigatorUrl: $charityNavigatorUrl, rapidLinks: $rapidLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Organization &&
            (identical(other.charityName, charityName) ||
                other.charityName == charityName) &&
            (identical(other.ein, ein) || other.ein == ein) &&
            (identical(other.charityNavigatorUrl, charityNavigatorUrl) ||
                other.charityNavigatorUrl == charityNavigatorUrl) &&
            (identical(other.rapidLinks, rapidLinks) ||
                other.rapidLinks == rapidLinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, charityName, ein, charityNavigatorUrl, rapidLinks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrganizationCopyWith<_$_Organization> get copyWith =>
      __$$_OrganizationCopyWithImpl<_$_Organization>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrganizationToJson(
      this,
    );
  }
}

abstract class _Organization implements Organization {
  factory _Organization(
      {final String? charityName,
      final String? ein,
      final String? charityNavigatorUrl,
      final RapidLinks? rapidLinks}) = _$_Organization;

  factory _Organization.fromJson(Map<String, dynamic> json) =
      _$_Organization.fromJson;

  @override
  String? get charityName;
  @override
  String? get ein;
  @override
  String? get charityNavigatorUrl;
  @override
  RapidLinks? get rapidLinks;
  @override
  @JsonKey(ignore: true)
  _$$_OrganizationCopyWith<_$_Organization> get copyWith =>
      throw _privateConstructorUsedError;
}
