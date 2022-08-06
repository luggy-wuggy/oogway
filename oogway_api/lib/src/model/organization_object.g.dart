// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrganizationObject extends OrganizationObject {
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
  final String? phoneNumber;
  @override
  final String? generalEmail;
  @override
  final OrganizationObjectCategory? category;
  @override
  final OrganizationObjectCause? cause;
  @override
  final IRSClassification? irsClassification;
  @override
  final Address? mailingAddress;
  @override
  final Address? donationAddress;
  @override
  final AdvisoryCollectionLink? activeAdvisories;
  @override
  final AdvisoryCollectionLink? removedAdvisories;
  @override
  final Representative? currentBoardChair;
  @override
  final Representative? currentCEO;
  @override
  final RatingLink? currentRating;
  @override
  final RatingCollectionLink? ratingHistory;

  factory _$OrganizationObject(
          [void Function(OrganizationObjectBuilder)? updates]) =>
      (new OrganizationObjectBuilder()..update(updates)).build();

  _$OrganizationObject._(
      {required this.ein,
      this.orgID,
      this.charityName,
      this.tagLine,
      this.websiteURL,
      this.charityNavigatorURL,
      this.mission,
      this.phoneNumber,
      this.generalEmail,
      this.category,
      this.cause,
      this.irsClassification,
      this.mailingAddress,
      this.donationAddress,
      this.activeAdvisories,
      this.removedAdvisories,
      this.currentBoardChair,
      this.currentCEO,
      this.currentRating,
      this.ratingHistory})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(ein, 'OrganizationObject', 'ein');
  }

  @override
  OrganizationObject rebuild(
          void Function(OrganizationObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationObjectBuilder toBuilder() =>
      new OrganizationObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationObject &&
        ein == other.ein &&
        orgID == other.orgID &&
        charityName == other.charityName &&
        tagLine == other.tagLine &&
        websiteURL == other.websiteURL &&
        charityNavigatorURL == other.charityNavigatorURL &&
        mission == other.mission &&
        phoneNumber == other.phoneNumber &&
        generalEmail == other.generalEmail &&
        category == other.category &&
        cause == other.cause &&
        irsClassification == other.irsClassification &&
        mailingAddress == other.mailingAddress &&
        donationAddress == other.donationAddress &&
        activeAdvisories == other.activeAdvisories &&
        removedAdvisories == other.removedAdvisories &&
        currentBoardChair == other.currentBoardChair &&
        currentCEO == other.currentCEO &&
        currentRating == other.currentRating &&
        ratingHistory == other.ratingHistory;
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
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                $jc(
                                                                                    0,
                                                                                    ein
                                                                                        .hashCode),
                                                                                orgID
                                                                                    .hashCode),
                                                                            charityName
                                                                                .hashCode),
                                                                        tagLine
                                                                            .hashCode),
                                                                    websiteURL
                                                                        .hashCode),
                                                                charityNavigatorURL
                                                                    .hashCode),
                                                            mission.hashCode),
                                                        phoneNumber.hashCode),
                                                    generalEmail.hashCode),
                                                category.hashCode),
                                            cause.hashCode),
                                        irsClassification.hashCode),
                                    mailingAddress.hashCode),
                                donationAddress.hashCode),
                            activeAdvisories.hashCode),
                        removedAdvisories.hashCode),
                    currentBoardChair.hashCode),
                currentCEO.hashCode),
            currentRating.hashCode),
        ratingHistory.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationObject')
          ..add('ein', ein)
          ..add('orgID', orgID)
          ..add('charityName', charityName)
          ..add('tagLine', tagLine)
          ..add('websiteURL', websiteURL)
          ..add('charityNavigatorURL', charityNavigatorURL)
          ..add('mission', mission)
          ..add('phoneNumber', phoneNumber)
          ..add('generalEmail', generalEmail)
          ..add('category', category)
          ..add('cause', cause)
          ..add('irsClassification', irsClassification)
          ..add('mailingAddress', mailingAddress)
          ..add('donationAddress', donationAddress)
          ..add('activeAdvisories', activeAdvisories)
          ..add('removedAdvisories', removedAdvisories)
          ..add('currentBoardChair', currentBoardChair)
          ..add('currentCEO', currentCEO)
          ..add('currentRating', currentRating)
          ..add('ratingHistory', ratingHistory))
        .toString();
  }
}

class OrganizationObjectBuilder
    implements Builder<OrganizationObject, OrganizationObjectBuilder> {
  _$OrganizationObject? _$v;

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

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _generalEmail;
  String? get generalEmail => _$this._generalEmail;
  set generalEmail(String? generalEmail) => _$this._generalEmail = generalEmail;

  OrganizationObjectCategoryBuilder? _category;
  OrganizationObjectCategoryBuilder get category =>
      _$this._category ??= new OrganizationObjectCategoryBuilder();
  set category(OrganizationObjectCategoryBuilder? category) =>
      _$this._category = category;

  OrganizationObjectCauseBuilder? _cause;
  OrganizationObjectCauseBuilder get cause =>
      _$this._cause ??= new OrganizationObjectCauseBuilder();
  set cause(OrganizationObjectCauseBuilder? cause) => _$this._cause = cause;

  IRSClassificationBuilder? _irsClassification;
  IRSClassificationBuilder get irsClassification =>
      _$this._irsClassification ??= new IRSClassificationBuilder();
  set irsClassification(IRSClassificationBuilder? irsClassification) =>
      _$this._irsClassification = irsClassification;

  AddressBuilder? _mailingAddress;
  AddressBuilder get mailingAddress =>
      _$this._mailingAddress ??= new AddressBuilder();
  set mailingAddress(AddressBuilder? mailingAddress) =>
      _$this._mailingAddress = mailingAddress;

  AddressBuilder? _donationAddress;
  AddressBuilder get donationAddress =>
      _$this._donationAddress ??= new AddressBuilder();
  set donationAddress(AddressBuilder? donationAddress) =>
      _$this._donationAddress = donationAddress;

  AdvisoryCollectionLinkBuilder? _activeAdvisories;
  AdvisoryCollectionLinkBuilder get activeAdvisories =>
      _$this._activeAdvisories ??= new AdvisoryCollectionLinkBuilder();
  set activeAdvisories(AdvisoryCollectionLinkBuilder? activeAdvisories) =>
      _$this._activeAdvisories = activeAdvisories;

  AdvisoryCollectionLinkBuilder? _removedAdvisories;
  AdvisoryCollectionLinkBuilder get removedAdvisories =>
      _$this._removedAdvisories ??= new AdvisoryCollectionLinkBuilder();
  set removedAdvisories(AdvisoryCollectionLinkBuilder? removedAdvisories) =>
      _$this._removedAdvisories = removedAdvisories;

  RepresentativeBuilder? _currentBoardChair;
  RepresentativeBuilder get currentBoardChair =>
      _$this._currentBoardChair ??= new RepresentativeBuilder();
  set currentBoardChair(RepresentativeBuilder? currentBoardChair) =>
      _$this._currentBoardChair = currentBoardChair;

  RepresentativeBuilder? _currentCEO;
  RepresentativeBuilder get currentCEO =>
      _$this._currentCEO ??= new RepresentativeBuilder();
  set currentCEO(RepresentativeBuilder? currentCEO) =>
      _$this._currentCEO = currentCEO;

  RatingLinkBuilder? _currentRating;
  RatingLinkBuilder get currentRating =>
      _$this._currentRating ??= new RatingLinkBuilder();
  set currentRating(RatingLinkBuilder? currentRating) =>
      _$this._currentRating = currentRating;

  RatingCollectionLinkBuilder? _ratingHistory;
  RatingCollectionLinkBuilder get ratingHistory =>
      _$this._ratingHistory ??= new RatingCollectionLinkBuilder();
  set ratingHistory(RatingCollectionLinkBuilder? ratingHistory) =>
      _$this._ratingHistory = ratingHistory;

  OrganizationObjectBuilder() {
    OrganizationObject._defaults(this);
  }

  OrganizationObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ein = $v.ein;
      _orgID = $v.orgID;
      _charityName = $v.charityName;
      _tagLine = $v.tagLine;
      _websiteURL = $v.websiteURL;
      _charityNavigatorURL = $v.charityNavigatorURL;
      _mission = $v.mission;
      _phoneNumber = $v.phoneNumber;
      _generalEmail = $v.generalEmail;
      _category = $v.category?.toBuilder();
      _cause = $v.cause?.toBuilder();
      _irsClassification = $v.irsClassification?.toBuilder();
      _mailingAddress = $v.mailingAddress?.toBuilder();
      _donationAddress = $v.donationAddress?.toBuilder();
      _activeAdvisories = $v.activeAdvisories?.toBuilder();
      _removedAdvisories = $v.removedAdvisories?.toBuilder();
      _currentBoardChair = $v.currentBoardChair?.toBuilder();
      _currentCEO = $v.currentCEO?.toBuilder();
      _currentRating = $v.currentRating?.toBuilder();
      _ratingHistory = $v.ratingHistory?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrganizationObject;
  }

  @override
  void update(void Function(OrganizationObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationObject build() {
    _$OrganizationObject _$result;
    try {
      _$result = _$v ??
          new _$OrganizationObject._(
              ein: BuiltValueNullFieldError.checkNotNull(
                  ein, 'OrganizationObject', 'ein'),
              orgID: orgID,
              charityName: charityName,
              tagLine: tagLine,
              websiteURL: websiteURL,
              charityNavigatorURL: charityNavigatorURL,
              mission: mission,
              phoneNumber: phoneNumber,
              generalEmail: generalEmail,
              category: _category?.build(),
              cause: _cause?.build(),
              irsClassification: _irsClassification?.build(),
              mailingAddress: _mailingAddress?.build(),
              donationAddress: _donationAddress?.build(),
              activeAdvisories: _activeAdvisories?.build(),
              removedAdvisories: _removedAdvisories?.build(),
              currentBoardChair: _currentBoardChair?.build(),
              currentCEO: _currentCEO?.build(),
              currentRating: _currentRating?.build(),
              ratingHistory: _ratingHistory?.build());
    } catch (_) {
      late String _$failedField;
      try {
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
        _$failedField = 'activeAdvisories';
        _activeAdvisories?.build();
        _$failedField = 'removedAdvisories';
        _removedAdvisories?.build();
        _$failedField = 'currentBoardChair';
        _currentBoardChair?.build();
        _$failedField = 'currentCEO';
        _currentCEO?.build();
        _$failedField = 'currentRating';
        _currentRating?.build();
        _$failedField = 'ratingHistory';
        _ratingHistory?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrganizationObject', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
