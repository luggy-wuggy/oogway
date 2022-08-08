// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charity_navigator.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationCollectionItem _$OrganizationCollectionItemFromJson(
        Map<String, dynamic> json) =>
    OrganizationCollectionItem(
      ein: json['ein'] as String,
      orgID: json['orgID'] as int?,
      charityName: json['charityName'] as String?,
      tagLine: json['tagLine'] as String?,
      websiteURL: json['websiteURL'] as String?,
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
      mission: json['mission'] as String?,
      currentRating: json['currentRating'] == null
          ? null
          : OrganizationCollectionCurrentRating.fromJson(
              json['currentRating'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : OrganizationCollectionCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      cause: json['cause'] == null
          ? null
          : OrganizationCollectionCause.fromJson(
              json['cause'] as Map<String, dynamic>),
      irsClassification: json['irsClassification'] == null
          ? null
          : OrganizationCollectionIrsClassification.fromJson(
              json['irsClassification'] as Map<String, dynamic>),
      mailingAddress: json['mailingAddress'] == null
          ? null
          : OrganizationCollectionMailingAddress.fromJson(
              json['mailingAddress'] as Map<String, dynamic>),
      donationAddress: json['donationAddress'] == null
          ? null
          : OrganizationCollectionDonationAddress.fromJson(
              json['donationAddress'] as Map<String, dynamic>),
      advisories: json['advisories'] == null
          ? null
          : OrganizationCollectionAdvisories.fromJson(
              json['advisories'] as Map<String, dynamic>),
      organization: OrganizationLink.fromJson(
          json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationCollectionItemToJson(
        OrganizationCollectionItem instance) =>
    <String, dynamic>{
      'ein': instance.ein,
      'orgID': instance.orgID,
      'charityName': instance.charityName,
      'tagLine': instance.tagLine,
      'websiteURL': instance.websiteURL,
      'charityNavigatorURL': instance.charityNavigatorURL,
      'mission': instance.mission,
      'currentRating': instance.currentRating?.toJson(),
      'category': instance.category?.toJson(),
      'cause': instance.cause?.toJson(),
      'irsClassification': instance.irsClassification?.toJson(),
      'mailingAddress': instance.mailingAddress?.toJson(),
      'donationAddress': instance.donationAddress?.toJson(),
      'advisories': instance.advisories?.toJson(),
      'organization': instance.organization.toJson(),
    };

OrganizationCollectionCurrentRating
    _$OrganizationCollectionCurrentRatingFromJson(Map<String, dynamic> json) =>
        OrganizationCollectionCurrentRating(
          ratingID: json['ratingID'] as String?,
          score: (json['score'] as num?)?.toDouble(),
          rating: json['rating'] as int?,
          publicationDate: json['publicationDate'] == null
              ? null
              : DateTime.parse(json['publicationDate'] as String),
          financialRating: json['financialRating'] == null
              ? null
              : OrganizationCollectionCurrentRatingFinancialRating.fromJson(
                  json['financialRating'] as Map<String, dynamic>),
          accountabilityRating: json['accountabilityRating'] == null
              ? null
              : OrganizationCollectionCurrentRatingAccountabilityRating
                  .fromJson(
                      json['accountabilityRating'] as Map<String, dynamic>),
          ratingImage: json['ratingImage'] == null
              ? null
              : IconSet.fromJson(json['ratingImage'] as Map<String, dynamic>),
          form990: json['form990'] == null
              ? null
              : Form990.fromJson(json['form990'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$OrganizationCollectionCurrentRatingToJson(
        OrganizationCollectionCurrentRating instance) =>
    <String, dynamic>{
      'ratingID': instance.ratingID,
      'score': instance.score,
      'rating': instance.rating,
      'publicationDate': _dateToJson(instance.publicationDate),
      'financialRating': instance.financialRating?.toJson(),
      'accountabilityRating': instance.accountabilityRating?.toJson(),
      'ratingImage': instance.ratingImage?.toJson(),
      'form990': instance.form990?.toJson(),
    };

OrganizationCollectionCurrentRatingFinancialRating
    _$OrganizationCollectionCurrentRatingFinancialRatingFromJson(
            Map<String, dynamic> json) =>
        OrganizationCollectionCurrentRatingFinancialRating(
          score: (json['score'] as num?)?.toDouble(),
          rating: json['rating'] as int?,
        );

Map<String, dynamic> _$OrganizationCollectionCurrentRatingFinancialRatingToJson(
        OrganizationCollectionCurrentRatingFinancialRating instance) =>
    <String, dynamic>{
      'score': instance.score,
      'rating': instance.rating,
    };

OrganizationCollectionCurrentRatingAccountabilityRating
    _$OrganizationCollectionCurrentRatingAccountabilityRatingFromJson(
            Map<String, dynamic> json) =>
        OrganizationCollectionCurrentRatingAccountabilityRating(
          score: (json['score'] as num?)?.toDouble(),
          rating: json['rating'] as int?,
        );

Map<String, dynamic>
    _$OrganizationCollectionCurrentRatingAccountabilityRatingToJson(
            OrganizationCollectionCurrentRatingAccountabilityRating instance) =>
        <String, dynamic>{
          'score': instance.score,
          'rating': instance.rating,
        };

IconSet _$IconSetFromJson(Map<String, dynamic> json) => IconSet(
      small: json['small'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$IconSetToJson(IconSet instance) => <String, dynamic>{
      'small': instance.small,
      'large': instance.large,
    };

Form990 _$Form990FromJson(Map<String, dynamic> json) => Form990(
      fundraisingExpenses: (json['fundraisingExpenses'] as num?)?.toDouble(),
      administrativeExpenses:
          (json['administrativeExpenses'] as num?)?.toDouble(),
      programExpenses: (json['programExpenses'] as num?)?.toDouble(),
      totalExpenses: (json['totalExpenses'] as num?)?.toDouble(),
      totalRevenue: (json['totalRevenue'] as num?)?.toDouble(),
      totalNetAssets: (json['totalNetAssets'] as num?)?.toDouble(),
      totalContributions: (json['totalContributions'] as num?)?.toDouble(),
      primaryRevenue: (json['primaryRevenue'] as num?)?.toDouble(),
      otherRevenue: (json['otherRevenue'] as num?)?.toDouble(),
      ceoCompensationPercent:
          (json['ceoCompensationPercent'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$Form990ToJson(Form990 instance) => <String, dynamic>{
      'fundraisingExpenses': instance.fundraisingExpenses,
      'administrativeExpenses': instance.administrativeExpenses,
      'programExpenses': instance.programExpenses,
      'totalExpenses': instance.totalExpenses,
      'totalRevenue': instance.totalRevenue,
      'totalNetAssets': instance.totalNetAssets,
      'totalContributions': instance.totalContributions,
      'primaryRevenue': instance.primaryRevenue,
      'otherRevenue': instance.otherRevenue,
      'ceoCompensationPercent': instance.ceoCompensationPercent,
    };

OrganizationCollectionCategory _$OrganizationCollectionCategoryFromJson(
        Map<String, dynamic> json) =>
    OrganizationCollectionCategory(
      categoryID: json['categoryID'] as int?,
      categoryName: json['categoryName'] as String?,
    );

Map<String, dynamic> _$OrganizationCollectionCategoryToJson(
        OrganizationCollectionCategory instance) =>
    <String, dynamic>{
      'categoryID': instance.categoryID,
      'categoryName': instance.categoryName,
    };

OrganizationCollectionCause _$OrganizationCollectionCauseFromJson(
        Map<String, dynamic> json) =>
    OrganizationCollectionCause(
      causeID: json['causeID'] as String?,
      causeName: json['causeName'] as String?,
    );

Map<String, dynamic> _$OrganizationCollectionCauseToJson(
        OrganizationCollectionCause instance) =>
    <String, dynamic>{
      'causeID': instance.causeID,
      'causeName': instance.causeName,
    };

OrganizationCollectionIrsClassification
    _$OrganizationCollectionIrsClassificationFromJson(
            Map<String, dynamic> json) =>
        OrganizationCollectionIrsClassification(
          subsection: json['subsection'] as String?,
          foundationStatus: json['foundationStatus'] as String?,
          deductibility: deductibilityTypeFromJson(json['deductibility']),
          deductibilityDetail: json['deductibilityDetail'] as String?,
          deductibilityCode: json['deductibilityCode'] as String?,
          nteeCode: json['nteeCode'] as String?,
          nteeClassification: json['nteeClassification'] as String?,
          nteeLetter: json['nteeLetter'] as String?,
          nteeType: json['nteeType'] as String?,
          nteeSuffix: json['nteeSuffix'] as String?,
          affiliation: json['affiliation'] as String?,
          groupName: json['groupName'] as String?,
          exemptOrgStatus: json['exemptOrgStatus'] as String?,
          exemptOrgStatusCode: json['exemptOrgStatusCode'] as String?,
          rulingDate: json['rulingDate'] as String?,
          assetAmount: json['assetAmount'] as int?,
          incomeAmount: json['incomeAmount'] as int?,
          latest990: json['latest990'] as String?,
          filingRequirement: json['filingRequirement'] as String?,
          accountingPeriod: json['accountingPeriod'] as String?,
          classification: json['classification'] as String?,
        );

Map<String, dynamic> _$OrganizationCollectionIrsClassificationToJson(
        OrganizationCollectionIrsClassification instance) =>
    <String, dynamic>{
      'subsection': instance.subsection,
      'foundationStatus': instance.foundationStatus,
      'deductibility': deductibilityTypeToJson(instance.deductibility),
      'deductibilityDetail': instance.deductibilityDetail,
      'deductibilityCode': instance.deductibilityCode,
      'nteeCode': instance.nteeCode,
      'nteeClassification': instance.nteeClassification,
      'nteeLetter': instance.nteeLetter,
      'nteeType': instance.nteeType,
      'nteeSuffix': instance.nteeSuffix,
      'affiliation': instance.affiliation,
      'groupName': instance.groupName,
      'exemptOrgStatus': instance.exemptOrgStatus,
      'exemptOrgStatusCode': instance.exemptOrgStatusCode,
      'rulingDate': instance.rulingDate,
      'assetAmount': instance.assetAmount,
      'incomeAmount': instance.incomeAmount,
      'latest990': instance.latest990,
      'filingRequirement': instance.filingRequirement,
      'accountingPeriod': instance.accountingPeriod,
      'classification': instance.classification,
    };

OrganizationCollectionMailingAddress
    _$OrganizationCollectionMailingAddressFromJson(Map<String, dynamic> json) =>
        OrganizationCollectionMailingAddress(
          streetAddress1: json['streetAddress1'] as String?,
          streetAddress2: json['streetAddress2'] as String?,
          city: json['city'] as String?,
          stateOrProvince: json['stateOrProvince'] as String?,
          postalCode: json['postalCode'] as String?,
          country: json['country'] as String?,
        );

Map<String, dynamic> _$OrganizationCollectionMailingAddressToJson(
        OrganizationCollectionMailingAddress instance) =>
    <String, dynamic>{
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'stateOrProvince': instance.stateOrProvince,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };

OrganizationCollectionDonationAddress
    _$OrganizationCollectionDonationAddressFromJson(
            Map<String, dynamic> json) =>
        OrganizationCollectionDonationAddress(
          streetAddress1: json['streetAddress1'] as String?,
          streetAddress2: json['streetAddress2'] as String?,
          city: json['city'] as String?,
          stateOrProvince: json['stateOrProvince'] as String?,
          postalCode: json['postalCode'] as String?,
          country: json['country'] as String?,
        );

Map<String, dynamic> _$OrganizationCollectionDonationAddressToJson(
        OrganizationCollectionDonationAddress instance) =>
    <String, dynamic>{
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'stateOrProvince': instance.stateOrProvince,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };

OrganizationCollectionAdvisories _$OrganizationCollectionAdvisoriesFromJson(
        Map<String, dynamic> json) =>
    OrganizationCollectionAdvisories(
      severity: severityFromJson(json['severity']),
      active: json['active'] == null
          ? null
          : AdvisoryCollectionLink.fromJson(
              json['active'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationCollectionAdvisoriesToJson(
        OrganizationCollectionAdvisories instance) =>
    <String, dynamic>{
      'severity': severityToJson(instance.severity),
      'active': instance.active?.toJson(),
    };

AdvisoryCollectionLink _$AdvisoryCollectionLinkFromJson(
        Map<String, dynamic> json) =>
    AdvisoryCollectionLink(
      links: json['_links'] == null
          ? null
          : RapidLinksMap.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdvisoryCollectionLinkToJson(
        AdvisoryCollectionLink instance) =>
    <String, dynamic>{
      '_links': instance.links?.toJson(),
    };

RapidLinksMap _$RapidLinksMapFromJson(Map<String, dynamic> json) =>
    RapidLinksMap();

Map<String, dynamic> _$RapidLinksMapToJson(RapidLinksMap instance) =>
    <String, dynamic>{};

OrganizationLink _$OrganizationLinkFromJson(Map<String, dynamic> json) =>
    OrganizationLink(
      ein: json['ein'] as String?,
      charityName: json['charityName'] as String?,
      links: json['_links'] == null
          ? null
          : RapidLinksMap.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationLinkToJson(OrganizationLink instance) =>
    <String, dynamic>{
      'ein': instance.ein,
      'charityName': instance.charityName,
      '_links': instance.links?.toJson(),
    };

OrganizationObject _$OrganizationObjectFromJson(Map<String, dynamic> json) =>
    OrganizationObject(
      ein: json['ein'] as String,
      orgID: json['orgID'] as int?,
      charityName: json['charityName'] as String?,
      tagLine: json['tagLine'] as String?,
      websiteURL: json['websiteURL'] as String?,
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
      mission: json['mission'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      generalEmail: json['generalEmail'] as String?,
      category: json['category'] == null
          ? null
          : OrganizationObjectCategory.fromJson(
              json['category'] as Map<String, dynamic>),
      cause: json['cause'] == null
          ? null
          : OrganizationObjectCause.fromJson(
              json['cause'] as Map<String, dynamic>),
      irsClassification: json['irsClassification'] == null
          ? null
          : IRSClassification.fromJson(
              json['irsClassification'] as Map<String, dynamic>),
      mailingAddress: json['mailingAddress'] == null
          ? null
          : Address.fromJson(json['mailingAddress'] as Map<String, dynamic>),
      donationAddress: json['donationAddress'] == null
          ? null
          : Address.fromJson(json['donationAddress'] as Map<String, dynamic>),
      activeAdvisories: json['activeAdvisories'] == null
          ? null
          : AdvisoryCollectionLink.fromJson(
              json['activeAdvisories'] as Map<String, dynamic>),
      removedAdvisories: json['removedAdvisories'] == null
          ? null
          : AdvisoryCollectionLink.fromJson(
              json['removedAdvisories'] as Map<String, dynamic>),
      currentBoardChair: json['currentBoardChair'] == null
          ? null
          : Representative.fromJson(
              json['currentBoardChair'] as Map<String, dynamic>),
      currentCEO: json['currentCEO'] == null
          ? null
          : Representative.fromJson(json['currentCEO'] as Map<String, dynamic>),
      currentRating: json['currentRating'] == null
          ? null
          : RatingLink.fromJson(json['currentRating'] as Map<String, dynamic>),
      ratingHistory: json['ratingHistory'] == null
          ? null
          : RatingCollectionLink.fromJson(
              json['ratingHistory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrganizationObjectToJson(OrganizationObject instance) =>
    <String, dynamic>{
      'ein': instance.ein,
      'orgID': instance.orgID,
      'charityName': instance.charityName,
      'tagLine': instance.tagLine,
      'websiteURL': instance.websiteURL,
      'charityNavigatorURL': instance.charityNavigatorURL,
      'mission': instance.mission,
      'phoneNumber': instance.phoneNumber,
      'generalEmail': instance.generalEmail,
      'category': instance.category?.toJson(),
      'cause': instance.cause?.toJson(),
      'irsClassification': instance.irsClassification?.toJson(),
      'mailingAddress': instance.mailingAddress?.toJson(),
      'donationAddress': instance.donationAddress?.toJson(),
      'activeAdvisories': instance.activeAdvisories?.toJson(),
      'removedAdvisories': instance.removedAdvisories?.toJson(),
      'currentBoardChair': instance.currentBoardChair?.toJson(),
      'currentCEO': instance.currentCEO?.toJson(),
      'currentRating': instance.currentRating?.toJson(),
      'ratingHistory': instance.ratingHistory?.toJson(),
    };

OrganizationObjectCategory _$OrganizationObjectCategoryFromJson(
        Map<String, dynamic> json) =>
    OrganizationObjectCategory(
      categoryID: json['categoryID'] as int?,
      categoryName: json['categoryName'] as String?,
      image: json['image'] as String?,
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
    );

Map<String, dynamic> _$OrganizationObjectCategoryToJson(
        OrganizationObjectCategory instance) =>
    <String, dynamic>{
      'categoryID': instance.categoryID,
      'categoryName': instance.categoryName,
      'image': instance.image,
      'charityNavigatorURL': instance.charityNavigatorURL,
    };

OrganizationObjectCause _$OrganizationObjectCauseFromJson(
        Map<String, dynamic> json) =>
    OrganizationObjectCause(
      causeID: json['causeID'] as String?,
      causeName: json['causeName'] as String?,
      image: json['image'] as String?,
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
    );

Map<String, dynamic> _$OrganizationObjectCauseToJson(
        OrganizationObjectCause instance) =>
    <String, dynamic>{
      'causeID': instance.causeID,
      'causeName': instance.causeName,
      'image': instance.image,
      'charityNavigatorURL': instance.charityNavigatorURL,
    };

IRSClassification _$IRSClassificationFromJson(Map<String, dynamic> json) =>
    IRSClassification(
      subsection: json['subsection'] as String?,
      foundationStatus: json['foundationStatus'] as String?,
      deductibility: deductibilityTypeFromJson(json['deductibility']),
      deductibilityDetail: json['deductibilityDetail'] as String?,
      deductibilityCode: json['deductibilityCode'] as String?,
      nteeCode: json['nteeCode'] as String?,
      nteeClassification: json['nteeClassification'] as String?,
      nteeLetter: json['nteeLetter'] as String?,
      nteeType: json['nteeType'] as String?,
      nteeSuffix: json['nteeSuffix'] as String?,
      affiliation: json['affiliation'] as String?,
      groupName: json['groupName'] as String?,
      exemptOrgStatus: json['exemptOrgStatus'] as String?,
      exemptOrgStatusCode: json['exemptOrgStatusCode'] as String?,
      rulingDate: json['rulingDate'] as String?,
      assetAmount: json['assetAmount'] as int?,
      incomeAmount: json['incomeAmount'] as int?,
      latest990: json['latest990'] as String?,
      filingRequirement: json['filingRequirement'] as String?,
      accountingPeriod: json['accountingPeriod'] as String?,
      classification: json['classification'] as String?,
    );

Map<String, dynamic> _$IRSClassificationToJson(IRSClassification instance) =>
    <String, dynamic>{
      'subsection': instance.subsection,
      'foundationStatus': instance.foundationStatus,
      'deductibility': deductibilityTypeToJson(instance.deductibility),
      'deductibilityDetail': instance.deductibilityDetail,
      'deductibilityCode': instance.deductibilityCode,
      'nteeCode': instance.nteeCode,
      'nteeClassification': instance.nteeClassification,
      'nteeLetter': instance.nteeLetter,
      'nteeType': instance.nteeType,
      'nteeSuffix': instance.nteeSuffix,
      'affiliation': instance.affiliation,
      'groupName': instance.groupName,
      'exemptOrgStatus': instance.exemptOrgStatus,
      'exemptOrgStatusCode': instance.exemptOrgStatusCode,
      'rulingDate': instance.rulingDate,
      'assetAmount': instance.assetAmount,
      'incomeAmount': instance.incomeAmount,
      'latest990': instance.latest990,
      'filingRequirement': instance.filingRequirement,
      'accountingPeriod': instance.accountingPeriod,
      'classification': instance.classification,
    };

Address _$AddressFromJson(Map<String, dynamic> json) => Address(
      streetAddress1: json['streetAddress1'] as String?,
      streetAddress2: json['streetAddress2'] as String?,
      city: json['city'] as String?,
      stateOrProvince: json['stateOrProvince'] as String?,
      postalCode: json['postalCode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'streetAddress1': instance.streetAddress1,
      'streetAddress2': instance.streetAddress2,
      'city': instance.city,
      'stateOrProvince': instance.stateOrProvince,
      'postalCode': instance.postalCode,
      'country': instance.country,
    };

Representative _$RepresentativeFromJson(Map<String, dynamic> json) =>
    Representative(
      name: json['name'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$RepresentativeToJson(Representative instance) =>
    <String, dynamic>{
      'name': instance.name,
      'title': instance.title,
    };

RatingLink _$RatingLinkFromJson(Map<String, dynamic> json) => RatingLink(
      ratingID: json['ratingID'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
      publicationDate: json['publicationDate'] == null
          ? null
          : DateTime.parse(json['publicationDate'] as String),
      ratingImage: json['ratingImage'] == null
          ? null
          : IconSet.fromJson(json['ratingImage'] as Map<String, dynamic>),
      form990: json['form990'] == null
          ? null
          : Form990.fromJson(json['form990'] as Map<String, dynamic>),
      links: RapidLinksMap.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingLinkToJson(RatingLink instance) =>
    <String, dynamic>{
      'ratingID': instance.ratingID,
      'score': instance.score,
      'rating': instance.rating,
      'publicationDate': _dateToJson(instance.publicationDate),
      'ratingImage': instance.ratingImage?.toJson(),
      'form990': instance.form990?.toJson(),
      '_links': instance.links.toJson(),
    };

RatingCollectionLink _$RatingCollectionLinkFromJson(
        Map<String, dynamic> json) =>
    RatingCollectionLink(
      links: RapidLinksMap.fromJson(json['_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingCollectionLinkToJson(
        RatingCollectionLink instance) =>
    <String, dynamic>{
      '_links': instance.links.toJson(),
    };

RatingObject _$RatingObjectFromJson(Map<String, dynamic> json) => RatingObject(
      ratingID: json['ratingID'] as String?,
      score: (json['score'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
      publicationDate: json['publicationDate'] == null
          ? null
          : DateTime.parse(json['publicationDate'] as String),
      referenceOrganization: json['referenceOrganization'] == null
          ? null
          : OrganizationLink.fromJson(
              json['referenceOrganization'] as Map<String, dynamic>),
      includedOrganizations: (json['includedOrganizations'] as List<dynamic>?)
              ?.map((e) => OrganizationLink.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      ratingImage: json['ratingImage'] == null
          ? null
          : IconSet.fromJson(json['ratingImage'] as Map<String, dynamic>),
      form990: json['form990'] == null
          ? null
          : Form990.fromJson(json['form990'] as Map<String, dynamic>),
      financialRating: json['financialRating'] == null
          ? null
          : FinancialRating.fromJson(
              json['financialRating'] as Map<String, dynamic>),
      accountabilityRating: json['accountabilityRating'] == null
          ? null
          : AccountabilityRating.fromJson(
              json['accountabilityRating'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RatingObjectToJson(RatingObject instance) =>
    <String, dynamic>{
      'ratingID': instance.ratingID,
      'score': instance.score,
      'rating': instance.rating,
      'publicationDate': _dateToJson(instance.publicationDate),
      'referenceOrganization': instance.referenceOrganization?.toJson(),
      'includedOrganizations':
          instance.includedOrganizations.map((e) => e.toJson()).toList(),
      'ratingImage': instance.ratingImage?.toJson(),
      'form990': instance.form990?.toJson(),
      'financialRating': instance.financialRating?.toJson(),
      'accountabilityRating': instance.accountabilityRating?.toJson(),
    };

FinancialRating _$FinancialRatingFromJson(Map<String, dynamic> json) =>
    FinancialRating(
      score: (json['score'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
      performanceMetrics: json['performanceMetrics'] == null
          ? null
          : PerformanceMetrics.fromJson(
              json['performanceMetrics'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FinancialRatingToJson(FinancialRating instance) =>
    <String, dynamic>{
      'score': instance.score,
      'rating': instance.rating,
      'performanceMetrics': instance.performanceMetrics?.toJson(),
    };

PerformanceMetrics _$PerformanceMetricsFromJson(Map<String, dynamic> json) =>
    PerformanceMetrics(
      fundraisingEfficiency:
          (json['fundraisingEfficiency'] as num?)?.toDouble(),
      fundraisingExpensesRatio:
          (json['fundraisingExpensesRatio'] as num?)?.toDouble(),
      programExpensesGrowth:
          (json['programExpensesGrowth'] as num?)?.toDouble(),
      programExpensesRatio: (json['programExpensesRatio'] as num?)?.toDouble(),
      administrationExpensesRatio:
          (json['administrationExpensesRatio'] as num?)?.toDouble(),
      liabilitiesToAssetsRatio:
          (json['liabilitiesToAssetsRatio'] as num?)?.toDouble(),
      workingCapitalRatio: (json['workingCapitalRatio'] as num?)?.toDouble(),
      primaryRevenueGrowth: (json['primaryRevenueGrowth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PerformanceMetricsToJson(PerformanceMetrics instance) =>
    <String, dynamic>{
      'fundraisingEfficiency': instance.fundraisingEfficiency,
      'fundraisingExpensesRatio': instance.fundraisingExpensesRatio,
      'programExpensesGrowth': instance.programExpensesGrowth,
      'programExpensesRatio': instance.programExpensesRatio,
      'administrationExpensesRatio': instance.administrationExpensesRatio,
      'liabilitiesToAssetsRatio': instance.liabilitiesToAssetsRatio,
      'workingCapitalRatio': instance.workingCapitalRatio,
      'primaryRevenueGrowth': instance.primaryRevenueGrowth,
    };

AccountabilityRating _$AccountabilityRatingFromJson(
        Map<String, dynamic> json) =>
    AccountabilityRating(
      score: (json['score'] as num?)?.toDouble(),
      rating: json['rating'] as int?,
      accountabilityTests: json['accountabilityTests'] == null
          ? null
          : AccountabilityTests.fromJson(
              json['accountabilityTests'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountabilityRatingToJson(
        AccountabilityRating instance) =>
    <String, dynamic>{
      'score': instance.score,
      'rating': instance.rating,
      'accountabilityTests': instance.accountabilityTests?.toJson(),
    };

AccountabilityTests _$AccountabilityTestsFromJson(Map<String, dynamic> json) =>
    AccountabilityTests(
      boardListStatus: passFailOrNotReportedFromJson(json['boardListStatus']),
      staffListStatus: passFailOrNotReportedFromJson(json['staffListStatus']),
      auditedFinancialStatus:
          passFailOrNotReportedFromJson(json['auditedFinancialStatus']),
      form990Status: passFailOrNotReportedFromJson(json['form990Status']),
      privacyStatus: passFailOrOptOutFromJson(json['privacyStatus']),
      loansToOrFromOfficers:
          passFailOrNotReportedFromJson(json['loansToOrFromOfficers']),
      loansToOfficers: passFailOrNotReportedFromJson(json['loansToOfficers']),
      loansFromOfficers:
          passFailOrNotReportedFromJson(json['loansFromOfficers']),
      materialDiversionOfAssets:
          passFailOrRemediatedFromJson(json['materialDiversionOfAssets']),
      boardMeetingMinutes:
          passFailOrNotReportedFromJson(json['boardMeetingMinutes']),
      distributes990ToBoard:
          passFailOrNotReportedFromJson(json['distributes990ToBoard']),
      conflictOfInterestPolicy:
          passFailOrNotReportedFromJson(json['conflictOfInterestPolicy']),
      whistleBlowerPolicy:
          passFailOrNotReportedFromJson(json['whistleBlowerPolicy']),
      recordsRetentionPolicy:
          passFailOrNotReportedFromJson(json['recordsRetentionPolicy']),
      reportsCEOAndSalary:
          passFailOrNotReportedFromJson(json['reportsCEOAndSalary']),
      ceoCompensationProcedure:
          passFailOrNotReportedFromJson(json['ceoCompensationProcedure']),
      compensatesBoard: passFailOrNotReportedFromJson(json['compensatesBoard']),
      independentAudit: passFailOrPartialFromJson(json['independentAudit']),
      independentBoard: passFailOrNotReportedFromJson(json['independentBoard']),
    );

Map<String, dynamic> _$AccountabilityTestsToJson(
        AccountabilityTests instance) =>
    <String, dynamic>{
      'boardListStatus': passFailOrNotReportedToJson(instance.boardListStatus),
      'staffListStatus': passFailOrNotReportedToJson(instance.staffListStatus),
      'auditedFinancialStatus':
          passFailOrNotReportedToJson(instance.auditedFinancialStatus),
      'form990Status': passFailOrNotReportedToJson(instance.form990Status),
      'privacyStatus': passFailOrOptOutToJson(instance.privacyStatus),
      'loansToOrFromOfficers':
          passFailOrNotReportedToJson(instance.loansToOrFromOfficers),
      'loansToOfficers': passFailOrNotReportedToJson(instance.loansToOfficers),
      'loansFromOfficers':
          passFailOrNotReportedToJson(instance.loansFromOfficers),
      'materialDiversionOfAssets':
          passFailOrRemediatedToJson(instance.materialDiversionOfAssets),
      'boardMeetingMinutes':
          passFailOrNotReportedToJson(instance.boardMeetingMinutes),
      'distributes990ToBoard':
          passFailOrNotReportedToJson(instance.distributes990ToBoard),
      'conflictOfInterestPolicy':
          passFailOrNotReportedToJson(instance.conflictOfInterestPolicy),
      'whistleBlowerPolicy':
          passFailOrNotReportedToJson(instance.whistleBlowerPolicy),
      'recordsRetentionPolicy':
          passFailOrNotReportedToJson(instance.recordsRetentionPolicy),
      'reportsCEOAndSalary':
          passFailOrNotReportedToJson(instance.reportsCEOAndSalary),
      'ceoCompensationProcedure':
          passFailOrNotReportedToJson(instance.ceoCompensationProcedure),
      'compensatesBoard':
          passFailOrNotReportedToJson(instance.compensatesBoard),
      'independentAudit': passFailOrPartialToJson(instance.independentAudit),
      'independentBoard':
          passFailOrNotReportedToJson(instance.independentBoard),
    };

AdvisoryCollectionItem _$AdvisoryCollectionItemFromJson(
        Map<String, dynamic> json) =>
    AdvisoryCollectionItem(
      advisoryID: json['advisoryID'] as String?,
      severity: severityFromJson(json['severity']),
      datePublished: json['datePublished'] == null
          ? null
          : DateTime.parse(json['datePublished'] as String),
      dateRemoved: json['dateRemoved'] == null
          ? null
          : DateTime.parse(json['dateRemoved'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      organization: json['organization'] == null
          ? null
          : OrganizationLink.fromJson(
              json['organization'] as Map<String, dynamic>),
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => AdvisorySource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdvisoryCollectionItemToJson(
        AdvisoryCollectionItem instance) =>
    <String, dynamic>{
      'advisoryID': instance.advisoryID,
      'severity': severityToJson(instance.severity),
      'datePublished': _dateToJson(instance.datePublished),
      'dateRemoved': _dateToJson(instance.dateRemoved),
      'dateModified': _dateToJson(instance.dateModified),
      'organization': instance.organization?.toJson(),
      'sources': instance.sources.map((e) => e.toJson()).toList(),
    };

AdvisorySource _$AdvisorySourceFromJson(Map<String, dynamic> json) =>
    AdvisorySource(
      datePublished: json['datePublished'] == null
          ? null
          : DateTime.parse(json['datePublished'] as String),
      dateRemoved: json['dateRemoved'] == null
          ? null
          : DateTime.parse(json['dateRemoved'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      publisher: json['publisher'] as String?,
      url: json['url'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$AdvisorySourceToJson(AdvisorySource instance) =>
    <String, dynamic>{
      'datePublished': _dateToJson(instance.datePublished),
      'dateRemoved': _dateToJson(instance.dateRemoved),
      'dateModified': _dateToJson(instance.dateModified),
      'publisher': instance.publisher,
      'url': instance.url,
      'summary': instance.summary,
    };

Advisory _$AdvisoryFromJson(Map<String, dynamic> json) => Advisory(
      advisoryID: json['advisoryID'] as String?,
      severity: severityFromJson(json['severity']),
      datePublished: json['datePublished'] == null
          ? null
          : DateTime.parse(json['datePublished'] as String),
      dateRemoved: json['dateRemoved'] == null
          ? null
          : DateTime.parse(json['dateRemoved'] as String),
      dateModified: json['dateModified'] == null
          ? null
          : DateTime.parse(json['dateModified'] as String),
      organization: json['organization'] == null
          ? null
          : OrganizationLink.fromJson(
              json['organization'] as Map<String, dynamic>),
      sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => AdvisorySource.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$AdvisoryToJson(Advisory instance) => <String, dynamic>{
      'advisoryID': instance.advisoryID,
      'severity': severityToJson(instance.severity),
      'datePublished': _dateToJson(instance.datePublished),
      'dateRemoved': _dateToJson(instance.dateRemoved),
      'dateModified': _dateToJson(instance.dateModified),
      'organization': instance.organization?.toJson(),
      'sources': instance.sources.map((e) => e.toJson()).toList(),
    };

CategoryCollectionItem _$CategoryCollectionItemFromJson(
        Map<String, dynamic> json) =>
    CategoryCollectionItem(
      categoryID: json['categoryID'] as int?,
      categoryName: json['categoryName'] as String?,
      image: json['image'] as String?,
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
      causes: (json['causes'] as List<dynamic>?)
          ?.map((e) =>
              CategoryCollectionCausesItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryCollectionItemToJson(
        CategoryCollectionItem instance) =>
    <String, dynamic>{
      'categoryID': instance.categoryID,
      'categoryName': instance.categoryName,
      'image': instance.image,
      'charityNavigatorURL': instance.charityNavigatorURL,
      'causes': instance.causes?.map((e) => e.toJson()).toList(),
    };

CategoryCollectionCausesItem _$CategoryCollectionCausesItemFromJson(
        Map<String, dynamic> json) =>
    CategoryCollectionCausesItem(
      causeID: json['causeID'] as String?,
      causeName: json['causeName'] as String?,
      image: json['image'] as String?,
      charityNavigatorURL: json['charityNavigatorURL'] as String?,
    );

Map<String, dynamic> _$CategoryCollectionCausesItemToJson(
        CategoryCollectionCausesItem instance) =>
    <String, dynamic>{
      'causeID': instance.causeID,
      'causeName': instance.causeName,
      'image': instance.image,
      'charityNavigatorURL': instance.charityNavigatorURL,
    };

ActiveAdvisoryCollectionItem _$ActiveAdvisoryCollectionItemFromJson(
        Map<String, dynamic> json) =>
    ActiveAdvisoryCollectionItem(
      mailingAddress: json['mailingAddress'] == null
          ? null
          : ActiveAdvisoryCollectionMailingAddress.fromJson(
              json['mailingAddress'] as Map<String, dynamic>),
      organization: ActiveAdvisoryCollectionOrganization.fromJson(
          json['organization'] as Map<String, dynamic>),
      advisories: json['advisories'] == null
          ? null
          : AdvisoryRollup.fromJson(json['advisories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActiveAdvisoryCollectionItemToJson(
        ActiveAdvisoryCollectionItem instance) =>
    <String, dynamic>{
      'mailingAddress': instance.mailingAddress?.toJson(),
      'organization': instance.organization.toJson(),
      'advisories': instance.advisories?.toJson(),
    };

ActiveAdvisoryCollectionMailingAddress
    _$ActiveAdvisoryCollectionMailingAddressFromJson(
            Map<String, dynamic> json) =>
        ActiveAdvisoryCollectionMailingAddress(
          city: json['city'] as String?,
          stateOrProvince: json['stateOrProvince'] as String?,
        );

Map<String, dynamic> _$ActiveAdvisoryCollectionMailingAddressToJson(
        ActiveAdvisoryCollectionMailingAddress instance) =>
    <String, dynamic>{
      'city': instance.city,
      'stateOrProvince': instance.stateOrProvince,
    };

ActiveAdvisoryCollectionOrganization
    _$ActiveAdvisoryCollectionOrganizationFromJson(Map<String, dynamic> json) =>
        ActiveAdvisoryCollectionOrganization(
          ein: json['ein'] as String?,
          charityName: json['charityName'] as String?,
          charityNavigatorURL: json['charityNavigatorURL'] as String?,
        );

Map<String, dynamic> _$ActiveAdvisoryCollectionOrganizationToJson(
        ActiveAdvisoryCollectionOrganization instance) =>
    <String, dynamic>{
      'ein': instance.ein,
      'charityName': instance.charityName,
      'charityNavigatorURL': instance.charityNavigatorURL,
    };

AdvisoryRollup _$AdvisoryRollupFromJson(Map<String, dynamic> json) =>
    AdvisoryRollup(
      severity: severityFromJson(json['severity']),
      active: json['active'] == null
          ? null
          : AdvisoryCollectionLink.fromJson(
              json['active'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdvisoryRollupToJson(AdvisoryRollup instance) =>
    <String, dynamic>{
      'severity': severityToJson(instance.severity),
      'active': instance.active?.toJson(),
    };

OrganizationCollectionSearchOrganizationsResponse400
    _$OrganizationCollectionSearchOrganizationsResponse400FromJson(
            Map<String, dynamic> json) =>
        OrganizationCollectionSearchOrganizationsResponse400(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic>
    _$OrganizationCollectionSearchOrganizationsResponse400ToJson(
            OrganizationCollectionSearchOrganizationsResponse400 instance) =>
        <String, dynamic>{
          'errorMessage': instance.errorMessage,
        };

OrganizationCollectionSearchOrganizationsResponse404
    _$OrganizationCollectionSearchOrganizationsResponse404FromJson(
            Map<String, dynamic> json) =>
        OrganizationCollectionSearchOrganizationsResponse404(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic>
    _$OrganizationCollectionSearchOrganizationsResponse404ToJson(
            OrganizationCollectionSearchOrganizationsResponse404 instance) =>
        <String, dynamic>{
          'errorMessage': instance.errorMessage,
        };

OrganizationObjectGetOrganizationResponse400
    _$OrganizationObjectGetOrganizationResponse400FromJson(
            Map<String, dynamic> json) =>
        OrganizationObjectGetOrganizationResponse400(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$OrganizationObjectGetOrganizationResponse400ToJson(
        OrganizationObjectGetOrganizationResponse400 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

OrganizationObjectGetOrganizationResponse404
    _$OrganizationObjectGetOrganizationResponse404FromJson(
            Map<String, dynamic> json) =>
        OrganizationObjectGetOrganizationResponse404(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$OrganizationObjectGetOrganizationResponse404ToJson(
        OrganizationObjectGetOrganizationResponse404 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

RatingCollectionGetRatingsResponse400
    _$RatingCollectionGetRatingsResponse400FromJson(
            Map<String, dynamic> json) =>
        RatingCollectionGetRatingsResponse400(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$RatingCollectionGetRatingsResponse400ToJson(
        RatingCollectionGetRatingsResponse400 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

RatingCollectionGetRatingsResponse404
    _$RatingCollectionGetRatingsResponse404FromJson(
            Map<String, dynamic> json) =>
        RatingCollectionGetRatingsResponse404(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$RatingCollectionGetRatingsResponse404ToJson(
        RatingCollectionGetRatingsResponse404 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

RatingObjectGetRatingResponse400 _$RatingObjectGetRatingResponse400FromJson(
        Map<String, dynamic> json) =>
    RatingObjectGetRatingResponse400(
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$RatingObjectGetRatingResponse400ToJson(
        RatingObjectGetRatingResponse400 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

RatingObjectGetRatingResponse404 _$RatingObjectGetRatingResponse404FromJson(
        Map<String, dynamic> json) =>
    RatingObjectGetRatingResponse404(
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$RatingObjectGetRatingResponse404ToJson(
        RatingObjectGetRatingResponse404 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

AdvisoryCollectionGetAdvisoriesResponse400
    _$AdvisoryCollectionGetAdvisoriesResponse400FromJson(
            Map<String, dynamic> json) =>
        AdvisoryCollectionGetAdvisoriesResponse400(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$AdvisoryCollectionGetAdvisoriesResponse400ToJson(
        AdvisoryCollectionGetAdvisoriesResponse400 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

AdvisoryCollectionGetAdvisoriesResponse404
    _$AdvisoryCollectionGetAdvisoriesResponse404FromJson(
            Map<String, dynamic> json) =>
        AdvisoryCollectionGetAdvisoriesResponse404(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$AdvisoryCollectionGetAdvisoriesResponse404ToJson(
        AdvisoryCollectionGetAdvisoriesResponse404 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

AdvisoryObjectGetAdvisoryResponse400
    _$AdvisoryObjectGetAdvisoryResponse400FromJson(Map<String, dynamic> json) =>
        AdvisoryObjectGetAdvisoryResponse400(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$AdvisoryObjectGetAdvisoryResponse400ToJson(
        AdvisoryObjectGetAdvisoryResponse400 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

AdvisoryObjectGetAdvisoryResponse404
    _$AdvisoryObjectGetAdvisoryResponse404FromJson(Map<String, dynamic> json) =>
        AdvisoryObjectGetAdvisoryResponse404(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String, dynamic> _$AdvisoryObjectGetAdvisoryResponse404ToJson(
        AdvisoryObjectGetAdvisoryResponse404 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400
    _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400FromJson(
            Map<String, dynamic> json) =>
        ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String,
    dynamic> _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400ToJson(
        ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };

ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404
    _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404FromJson(
            Map<String, dynamic> json) =>
        ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404(
          errorMessage: json['errorMessage'] as String?,
        );

Map<String,
    dynamic> _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404ToJson(
        ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
    };
