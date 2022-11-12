// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'charity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Charity _$CharityFromJson(Map<String, dynamic> json) {
  return _Charity.fromJson(json);
}

/// @nodoc
mixin _$Charity {
  String? get charityNavigatorUrl => throw _privateConstructorUsedError;
  String? get mission => throw _privateConstructorUsedError;
  String? get websiteUrl => throw _privateConstructorUsedError;
  String? get tagLine => throw _privateConstructorUsedError;
  String? get charityName => throw _privateConstructorUsedError;
  String? get ein => throw _privateConstructorUsedError;
  CurrentRating? get currentRating => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;
  Cause? get cause => throw _privateConstructorUsedError;
  IrsClassification? get irsClassification =>
      throw _privateConstructorUsedError;
  Address? get mailingAddress => throw _privateConstructorUsedError;
  Address? get donationAddress => throw _privateConstructorUsedError;
  Advisories? get advisories => throw _privateConstructorUsedError;
  Organization? get organization => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CharityCopyWith<Charity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharityCopyWith<$Res> {
  factory $CharityCopyWith(Charity value, $Res Function(Charity) then) =
      _$CharityCopyWithImpl<$Res, Charity>;
  @useResult
  $Res call(
      {String? charityNavigatorUrl,
      String? mission,
      String? websiteUrl,
      String? tagLine,
      String? charityName,
      String? ein,
      CurrentRating? currentRating,
      Category? category,
      Cause? cause,
      IrsClassification? irsClassification,
      Address? mailingAddress,
      Address? donationAddress,
      Advisories? advisories,
      Organization? organization});

  $CurrentRatingCopyWith<$Res>? get currentRating;
  $CategoryCopyWith<$Res>? get category;
  $CauseCopyWith<$Res>? get cause;
  $IrsClassificationCopyWith<$Res>? get irsClassification;
  $AddressCopyWith<$Res>? get mailingAddress;
  $AddressCopyWith<$Res>? get donationAddress;
  $AdvisoriesCopyWith<$Res>? get advisories;
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class _$CharityCopyWithImpl<$Res, $Val extends Charity>
    implements $CharityCopyWith<$Res> {
  _$CharityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charityNavigatorUrl = freezed,
    Object? mission = freezed,
    Object? websiteUrl = freezed,
    Object? tagLine = freezed,
    Object? charityName = freezed,
    Object? ein = freezed,
    Object? currentRating = freezed,
    Object? category = freezed,
    Object? cause = freezed,
    Object? irsClassification = freezed,
    Object? mailingAddress = freezed,
    Object? donationAddress = freezed,
    Object? advisories = freezed,
    Object? organization = freezed,
  }) {
    return _then(_value.copyWith(
      charityNavigatorUrl: freezed == charityNavigatorUrl
          ? _value.charityNavigatorUrl
          : charityNavigatorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mission: freezed == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tagLine: freezed == tagLine
          ? _value.tagLine
          : tagLine // ignore: cast_nullable_to_non_nullable
              as String?,
      charityName: freezed == charityName
          ? _value.charityName
          : charityName // ignore: cast_nullable_to_non_nullable
              as String?,
      ein: freezed == ein
          ? _value.ein
          : ein // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRating: freezed == currentRating
          ? _value.currentRating
          : currentRating // ignore: cast_nullable_to_non_nullable
              as CurrentRating?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      cause: freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as Cause?,
      irsClassification: freezed == irsClassification
          ? _value.irsClassification
          : irsClassification // ignore: cast_nullable_to_non_nullable
              as IrsClassification?,
      mailingAddress: freezed == mailingAddress
          ? _value.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      donationAddress: freezed == donationAddress
          ? _value.donationAddress
          : donationAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      advisories: freezed == advisories
          ? _value.advisories
          : advisories // ignore: cast_nullable_to_non_nullable
              as Advisories?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentRatingCopyWith<$Res>? get currentRating {
    if (_value.currentRating == null) {
      return null;
    }

    return $CurrentRatingCopyWith<$Res>(_value.currentRating!, (value) {
      return _then(_value.copyWith(currentRating: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CauseCopyWith<$Res>? get cause {
    if (_value.cause == null) {
      return null;
    }

    return $CauseCopyWith<$Res>(_value.cause!, (value) {
      return _then(_value.copyWith(cause: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IrsClassificationCopyWith<$Res>? get irsClassification {
    if (_value.irsClassification == null) {
      return null;
    }

    return $IrsClassificationCopyWith<$Res>(_value.irsClassification!, (value) {
      return _then(_value.copyWith(irsClassification: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get mailingAddress {
    if (_value.mailingAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.mailingAddress!, (value) {
      return _then(_value.copyWith(mailingAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get donationAddress {
    if (_value.donationAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.donationAddress!, (value) {
      return _then(_value.copyWith(donationAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdvisoriesCopyWith<$Res>? get advisories {
    if (_value.advisories == null) {
      return null;
    }

    return $AdvisoriesCopyWith<$Res>(_value.advisories!, (value) {
      return _then(_value.copyWith(advisories: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get organization {
    if (_value.organization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.organization!, (value) {
      return _then(_value.copyWith(organization: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CharityCopyWith<$Res> implements $CharityCopyWith<$Res> {
  factory _$$_CharityCopyWith(
          _$_Charity value, $Res Function(_$_Charity) then) =
      __$$_CharityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? charityNavigatorUrl,
      String? mission,
      String? websiteUrl,
      String? tagLine,
      String? charityName,
      String? ein,
      CurrentRating? currentRating,
      Category? category,
      Cause? cause,
      IrsClassification? irsClassification,
      Address? mailingAddress,
      Address? donationAddress,
      Advisories? advisories,
      Organization? organization});

  @override
  $CurrentRatingCopyWith<$Res>? get currentRating;
  @override
  $CategoryCopyWith<$Res>? get category;
  @override
  $CauseCopyWith<$Res>? get cause;
  @override
  $IrsClassificationCopyWith<$Res>? get irsClassification;
  @override
  $AddressCopyWith<$Res>? get mailingAddress;
  @override
  $AddressCopyWith<$Res>? get donationAddress;
  @override
  $AdvisoriesCopyWith<$Res>? get advisories;
  @override
  $OrganizationCopyWith<$Res>? get organization;
}

/// @nodoc
class __$$_CharityCopyWithImpl<$Res>
    extends _$CharityCopyWithImpl<$Res, _$_Charity>
    implements _$$_CharityCopyWith<$Res> {
  __$$_CharityCopyWithImpl(_$_Charity _value, $Res Function(_$_Charity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? charityNavigatorUrl = freezed,
    Object? mission = freezed,
    Object? websiteUrl = freezed,
    Object? tagLine = freezed,
    Object? charityName = freezed,
    Object? ein = freezed,
    Object? currentRating = freezed,
    Object? category = freezed,
    Object? cause = freezed,
    Object? irsClassification = freezed,
    Object? mailingAddress = freezed,
    Object? donationAddress = freezed,
    Object? advisories = freezed,
    Object? organization = freezed,
  }) {
    return _then(_$_Charity(
      charityNavigatorUrl: freezed == charityNavigatorUrl
          ? _value.charityNavigatorUrl
          : charityNavigatorUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mission: freezed == mission
          ? _value.mission
          : mission // ignore: cast_nullable_to_non_nullable
              as String?,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      tagLine: freezed == tagLine
          ? _value.tagLine
          : tagLine // ignore: cast_nullable_to_non_nullable
              as String?,
      charityName: freezed == charityName
          ? _value.charityName
          : charityName // ignore: cast_nullable_to_non_nullable
              as String?,
      ein: freezed == ein
          ? _value.ein
          : ein // ignore: cast_nullable_to_non_nullable
              as String?,
      currentRating: freezed == currentRating
          ? _value.currentRating
          : currentRating // ignore: cast_nullable_to_non_nullable
              as CurrentRating?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
      cause: freezed == cause
          ? _value.cause
          : cause // ignore: cast_nullable_to_non_nullable
              as Cause?,
      irsClassification: freezed == irsClassification
          ? _value.irsClassification
          : irsClassification // ignore: cast_nullable_to_non_nullable
              as IrsClassification?,
      mailingAddress: freezed == mailingAddress
          ? _value.mailingAddress
          : mailingAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      donationAddress: freezed == donationAddress
          ? _value.donationAddress
          : donationAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      advisories: freezed == advisories
          ? _value.advisories
          : advisories // ignore: cast_nullable_to_non_nullable
              as Advisories?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Charity implements _Charity {
  _$_Charity(
      {this.charityNavigatorUrl,
      this.mission,
      this.websiteUrl,
      this.tagLine,
      this.charityName,
      this.ein,
      this.currentRating,
      this.category,
      this.cause,
      this.irsClassification,
      this.mailingAddress,
      this.donationAddress,
      this.advisories,
      this.organization});

  factory _$_Charity.fromJson(Map<String, dynamic> json) =>
      _$$_CharityFromJson(json);

  @override
  final String? charityNavigatorUrl;
  @override
  final String? mission;
  @override
  final String? websiteUrl;
  @override
  final String? tagLine;
  @override
  final String? charityName;
  @override
  final String? ein;
  @override
  final CurrentRating? currentRating;
  @override
  final Category? category;
  @override
  final Cause? cause;
  @override
  final IrsClassification? irsClassification;
  @override
  final Address? mailingAddress;
  @override
  final Address? donationAddress;
  @override
  final Advisories? advisories;
  @override
  final Organization? organization;

  @override
  String toString() {
    return 'Charity(charityNavigatorUrl: $charityNavigatorUrl, mission: $mission, websiteUrl: $websiteUrl, tagLine: $tagLine, charityName: $charityName, ein: $ein, currentRating: $currentRating, category: $category, cause: $cause, irsClassification: $irsClassification, mailingAddress: $mailingAddress, donationAddress: $donationAddress, advisories: $advisories, organization: $organization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Charity &&
            (identical(other.charityNavigatorUrl, charityNavigatorUrl) ||
                other.charityNavigatorUrl == charityNavigatorUrl) &&
            (identical(other.mission, mission) || other.mission == mission) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl) &&
            (identical(other.tagLine, tagLine) || other.tagLine == tagLine) &&
            (identical(other.charityName, charityName) ||
                other.charityName == charityName) &&
            (identical(other.ein, ein) || other.ein == ein) &&
            (identical(other.currentRating, currentRating) ||
                other.currentRating == currentRating) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.cause, cause) || other.cause == cause) &&
            (identical(other.irsClassification, irsClassification) ||
                other.irsClassification == irsClassification) &&
            (identical(other.mailingAddress, mailingAddress) ||
                other.mailingAddress == mailingAddress) &&
            (identical(other.donationAddress, donationAddress) ||
                other.donationAddress == donationAddress) &&
            (identical(other.advisories, advisories) ||
                other.advisories == advisories) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      charityNavigatorUrl,
      mission,
      websiteUrl,
      tagLine,
      charityName,
      ein,
      currentRating,
      category,
      cause,
      irsClassification,
      mailingAddress,
      donationAddress,
      advisories,
      organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CharityCopyWith<_$_Charity> get copyWith =>
      __$$_CharityCopyWithImpl<_$_Charity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharityToJson(
      this,
    );
  }
}

abstract class _Charity implements Charity {
  factory _Charity(
      {final String? charityNavigatorUrl,
      final String? mission,
      final String? websiteUrl,
      final String? tagLine,
      final String? charityName,
      final String? ein,
      final CurrentRating? currentRating,
      final Category? category,
      final Cause? cause,
      final IrsClassification? irsClassification,
      final Address? mailingAddress,
      final Address? donationAddress,
      final Advisories? advisories,
      final Organization? organization}) = _$_Charity;

  factory _Charity.fromJson(Map<String, dynamic> json) = _$_Charity.fromJson;

  @override
  String? get charityNavigatorUrl;
  @override
  String? get mission;
  @override
  String? get websiteUrl;
  @override
  String? get tagLine;
  @override
  String? get charityName;
  @override
  String? get ein;
  @override
  CurrentRating? get currentRating;
  @override
  Category? get category;
  @override
  Cause? get cause;
  @override
  IrsClassification? get irsClassification;
  @override
  Address? get mailingAddress;
  @override
  Address? get donationAddress;
  @override
  Advisories? get advisories;
  @override
  Organization? get organization;
  @override
  @JsonKey(ignore: true)
  _$$_CharityCopyWith<_$_Charity> get copyWith =>
      throw _privateConstructorUsedError;
}
