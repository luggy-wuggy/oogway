// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_collection_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationCollectionItem extends OrganizationCollectionItem {
  @override
  final String ein;
  @override
  final int? orgID;
  @override
  final String? charityName;
  @override
  final String? tagLine;
  @override
  final String? websiteURL;
  @override
  final String? charityNavigatorURL;
  @override
  final String? mission;
  @override
  final OrganizationCollectionCurrentRating? currentRating;
  @override
  final OrganizationCollectionCategory? category;
  @override
  final OrganizationCollectionCause? cause;
  @override
  final OrganizationCollectionIrsClassification? irsClassification;
  @override
  final OrganizationCollectionMailingAddress? mailingAddress;
  @override
  final OrganizationCollectionDonationAddress? donationAddress;
  @override
  final OrganizationCollectionAdvisories? advisories;
  @override
  final OrganizationLink organization;

  factory _$OrganizationCollectionItem(
          [void Function(OrganizationCollectionItemBuilder)? updates]) =>
      (new OrganizationCollectionItemBuilder()..update(updates))._build();

  _$OrganizationCollectionItem._(
      {required this.ein,
      this.orgID,
      this.charityName,
      this.tagLine,
      this.websiteURL,
      this.charityNavigatorURL,
      this.mission,
      this.currentRating,
      this.category,
      this.cause,
      this.irsClassification,
      this.mailingAddress,
      this.donationAddress,
      this.advisories,
      required this.organization})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        ein, r'OrganizationCollectionItem', 'ein');
    BuiltValueNullFieldError.checkNotNull(
        organization, r'OrganizationCollectionItem', 'organization');
  }

  @override
  OrganizationCollectionItem rebuild(
          void Function(OrganizationCollectionItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationCollectionItemBuilder toBuilder() =>
      new OrganizationCollectionItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationCollectionItem &&
        ein == other.ein &&
        orgID == other.orgID &&
        charityName == other.charityName &&
        tagLine == other.tagLine &&
        websiteURL == other.websiteURL &&
        charityNavigatorURL == other.charityNavigatorURL &&
        mission == other.mission &&
        currentRating == other.currentRating &&
        category == other.category &&
        cause == other.cause &&
        irsClassification == other.irsClassification &&
        mailingAddress == other.mailingAddress &&
        donationAddress == other.donationAddress &&
        advisories == other.advisories &&
        organization == other.organization;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                ein.hashCode),
                                                            orgID.hashCode),
                                                        charityName.hashCode),
                                                    tagLine.hashCode),
                                                websiteURL.hashCode),
                                            charityNavigatorURL.hashCode),
                                        mission.hashCode),
                                    currentRating.hashCode),
                                category.hashCode),
                            cause.hashCode),
                        irsClassification.hashCode),
                    mailingAddress.hashCode),
                donationAddress.hashCode),
            advisories.hashCode),
        organization.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrganizationCollectionItem')
          ..add('ein', ein)
          ..add('orgID', orgID)
          ..add('charityName', charityName)
          ..add('tagLine', tagLine)
          ..add('websiteURL', websiteURL)
          ..add('charityNavigatorURL', charityNavigatorURL)
          ..add('mission', mission)
          ..add('currentRating', currentRating)
          ..add('category', category)
          ..add('cause', cause)
          ..add('irsClassification', irsClassification)
          ..add('mailingAddress', mailingAddress)
          ..add('donationAddress', donationAddress)
          ..add('advisories', advisories)
          ..add('organization', organization))
        .toString();
  }
}

class OrganizationCollectionItemBuilder
    implements
        Builder<OrganizationCollectionItem, OrganizationCollectionItemBuilder> {
  _$OrganizationCollectionItem? _$v;

  String? _ein;
  String? get ein => _$this._ein;
  set ein(String? ein) => _$this._ein = ein;

  int? _orgID;
  int? get orgID => _$this._orgID;
  set orgID(int? orgID) => _$this._orgID = orgID;

  String? _charityName;
  String? get charityName => _$this._charityName;
  set charityName(String? charityName) => _$this._charityName = charityName;

  String? _tagLine;
  String? get tagLine => _$this._tagLine;
  set tagLine(String? tagLine) => _$this._tagLine = tagLine;

  String? _websiteURL;
  String? get websiteURL => _$this._websiteURL;
  set websiteURL(String? websiteURL) => _$this._websiteURL = websiteURL;

  String? _charityNavigatorURL;
  String? get charityNavigatorURL => _$this._charityNavigatorURL;
  set charityNavigatorURL(String? charityNavigatorURL) =>
      _$this._charityNavigatorURL = charityNavigatorURL;

  String? _mission;
  String? get mission => _$this._mission;
  set mission(String? mission) => _$this._mission = mission;

  OrganizationCollectionCurrentRatingBuilder? _currentRating;
  OrganizationCollectionCurrentRatingBuilder get currentRating =>
      _$this._currentRating ??=
          new OrganizationCollectionCurrentRatingBuilder();
  set currentRating(
          OrganizationCollectionCurrentRatingBuilder? currentRating) =>
      _$this._currentRating = currentRating;

  OrganizationCollectionCategoryBuilder? _category;
  OrganizationCollectionCategoryBuilder get category =>
      _$this._category ??= new OrganizationCollectionCategoryBuilder();
  set category(OrganizationCollectionCategoryBuilder? category) =>
      _$this._category = category;

  OrganizationCollectionCauseBuilder? _cause;
  OrganizationCollectionCauseBuilder get cause =>
      _$this._cause ??= new OrganizationCollectionCauseBuilder();
  set cause(OrganizationCollectionCauseBuilder? cause) => _$this._cause = cause;

  OrganizationCollectionIrsClassificationBuilder? _irsClassification;
  OrganizationCollectionIrsClassificationBuilder get irsClassification =>
      _$this._irsClassification ??=
          new OrganizationCollectionIrsClassificationBuilder();
  set irsClassification(
          OrganizationCollectionIrsClassificationBuilder? irsClassification) =>
      _$this._irsClassification = irsClassification;

  OrganizationCollectionMailingAddressBuilder? _mailingAddress;
  OrganizationCollectionMailingAddressBuilder get mailingAddress =>
      _$this._mailingAddress ??=
          new OrganizationCollectionMailingAddressBuilder();
  set mailingAddress(
          OrganizationCollectionMailingAddressBuilder? mailingAddress) =>
      _$this._mailingAddress = mailingAddress;

  OrganizationCollectionDonationAddressBuilder? _donationAddress;
  OrganizationCollectionDonationAddressBuilder get donationAddress =>
      _$this._donationAddress ??=
          new OrganizationCollectionDonationAddressBuilder();
  set donationAddress(
          OrganizationCollectionDonationAddressBuilder? donationAddress) =>
      _$this._donationAddress = donationAddress;

  OrganizationCollectionAdvisoriesBuilder? _advisories;
  OrganizationCollectionAdvisoriesBuilder get advisories =>
      _$this._advisories ??= new OrganizationCollectionAdvisoriesBuilder();
  set advisories(OrganizationCollectionAdvisoriesBuilder? advisories) =>
      _$this._advisories = advisories;

  OrganizationLinkBuilder? _organization;
  OrganizationLinkBuilder get organization =>
      _$this._organization ??= new OrganizationLinkBuilder();
  set organization(OrganizationLinkBuilder? organization) =>
      _$this._organization = organization;

  OrganizationCollectionItemBuilder() {
    OrganizationCollectionItem._defaults(this);
  }

  OrganizationCollectionItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ein = $v.ein;
      _orgID = $v.orgID;
      _charityName = $v.charityName;
      _tagLine = $v.tagLine;
      _websiteURL = $v.websiteURL;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _mission = $v.mission;
      _currentRating = $v.currentRating?.toBuilder();
      _category = $v.category?.toBuilder();
      _cause = $v.cause?.toBuilder();
      _irsClassification = $v.irsClassification?.toBuilder();
      _mailingAddress = $v.mailingAddress?.toBuilder();
      _donationAddress = $v.donationAddress?.toBuilder();
      _advisories = $v.advisories?.toBuilder();
      _organization = $v.organization.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationCollectionItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationCollectionItem;
  }

  @override
  void update(void Function(OrganizationCollectionItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrganizationCollectionItem build() => _build();

  _$OrganizationCollectionItem _build() {
    _$OrganizationCollectionItem _$result;
    try {
      _$result = _$v ??
          new _$OrganizationCollectionItem._(
              ein: BuiltValueNullFieldError.checkNotNull(
                  ein, r'OrganizationCollectionItem', 'ein'),
              orgID: orgID,
              charityName: charityName,
              tagLine: tagLine,
              websiteURL: websiteURL,
              charityNavigatorURL: charityNavigatorURL,
              mission: mission,
              currentRating: _currentRating?.build(),
              category: _category?.build(),
              cause: _cause?.build(),
              irsClassification: _irsClassification?.build(),
              mailingAddress: _mailingAddress?.build(),
              donationAddress: _donationAddress?.build(),
              advisories: _advisories?.build(),
              organization: organization.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'currentRating';
        _currentRating?.build();
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'cause';
        _cause?.build();
        _$failedField = 'irsClassification';
        _irsClassification?.build();
        _$failedField = 'mailingAddress';
        _mailingAddress?.build();
        _$failedField = 'donationAddress';
        _donationAddress?.build();
        _$failedField = 'advisories';
        _advisories?.build();
        _$failedField = 'organization';
        organization.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrganizationCollectionItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
