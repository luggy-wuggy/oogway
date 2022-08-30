//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/irs_classification.dart';
import 'package:openapi/src/model/rating_link.dart';
import 'package:openapi/src/model/address.dart';
import 'package:openapi/src/model/representative.dart';
import 'package:openapi/src/model/organization_object_category.dart';
import 'package:openapi/src/model/rating_collection_link.dart';
import 'package:openapi/src/model/advisory_collection_link.dart';
import 'package:openapi/src/model/organization_object_cause.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_object.g.dart';

/// Represents a single Organization in Charity Navigator.
///
/// Properties:
/// * [ein] - The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
/// * [orgID] - Internal identifier assigned by Charity Navigator. Only rated charities have an orgID. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [charityName] - Name of the charitable organization.
/// * [tagLine] - Tagline describing the charity.
/// * [websiteURL] - URL of the organization's website. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [charityNavigatorURL] 
/// * [mission] - The organization's mission statement.
/// * [phoneNumber] - Main phone number of the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [generalEmail] - General email address for the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [category] 
/// * [cause] 
/// * [irsClassification] 
/// * [mailingAddress] 
/// * [donationAddress] 
/// * [activeAdvisories] 
/// * [removedAdvisories] 
/// * [currentBoardChair] 
/// * [currentCEO] 
/// * [currentRating] 
/// * [ratingHistory] 
abstract class OrganizationObject implements Built<OrganizationObject, OrganizationObjectBuilder> {
    /// The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
    @BuiltValueField(wireName: r'ein')
    String get ein;

    /// Internal identifier assigned by Charity Navigator. Only rated charities have an orgID. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'orgID')
    int? get orgID;

    /// Name of the charitable organization.
    @BuiltValueField(wireName: r'charityName')
    String? get charityName;

    /// Tagline describing the charity.
    @BuiltValueField(wireName: r'tagLine')
    String? get tagLine;

    /// URL of the organization's website. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'websiteURL')
    String? get websiteURL;

    @BuiltValueField(wireName: r'charityNavigatorURL')
    String? get charityNavigatorURL;

    /// The organization's mission statement.
    @BuiltValueField(wireName: r'mission')
    String? get mission;

    /// Main phone number of the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'phoneNumber')
    String? get phoneNumber;

    /// General email address for the organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'generalEmail')
    String? get generalEmail;

    @BuiltValueField(wireName: r'category')
    OrganizationObjectCategory? get category;

    @BuiltValueField(wireName: r'cause')
    OrganizationObjectCause? get cause;

    @BuiltValueField(wireName: r'irsClassification')
    IRSClassification? get irsClassification;

    @BuiltValueField(wireName: r'mailingAddress')
    Address? get mailingAddress;

    @BuiltValueField(wireName: r'donationAddress')
    Address? get donationAddress;

    @BuiltValueField(wireName: r'activeAdvisories')
    AdvisoryCollectionLink? get activeAdvisories;

    @BuiltValueField(wireName: r'removedAdvisories')
    AdvisoryCollectionLink? get removedAdvisories;

    @BuiltValueField(wireName: r'currentBoardChair')
    Representative? get currentBoardChair;

    @BuiltValueField(wireName: r'currentCEO')
    Representative? get currentCEO;

    @BuiltValueField(wireName: r'currentRating')
    RatingLink? get currentRating;

    @BuiltValueField(wireName: r'ratingHistory')
    RatingCollectionLink? get ratingHistory;

    OrganizationObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationObjectBuilder b) => b;

    factory OrganizationObject([void updates(OrganizationObjectBuilder b)]) = _$OrganizationObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationObject> get serializer => _$OrganizationObjectSerializer();
}

class _$OrganizationObjectSerializer implements StructuredSerializer<OrganizationObject> {
    @override
    final Iterable<Type> types = const [OrganizationObject, _$OrganizationObject];

    @override
    final String wireName = r'OrganizationObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'ein')
            ..add(serializers.serialize(object.ein,
                specifiedType: const FullType(String)));
        if (object.orgID != null) {
            result
                ..add(r'orgID')
                ..add(serializers.serialize(object.orgID,
                    specifiedType: const FullType(int)));
        }
        if (object.charityName != null) {
            result
                ..add(r'charityName')
                ..add(serializers.serialize(object.charityName,
                    specifiedType: const FullType(String)));
        }
        if (object.tagLine != null) {
            result
                ..add(r'tagLine')
                ..add(serializers.serialize(object.tagLine,
                    specifiedType: const FullType(String)));
        }
        if (object.websiteURL != null) {
            result
                ..add(r'websiteURL')
                ..add(serializers.serialize(object.websiteURL,
                    specifiedType: const FullType(String)));
        }
        if (object.charityNavigatorURL != null) {
            result
                ..add(r'charityNavigatorURL')
                ..add(serializers.serialize(object.charityNavigatorURL,
                    specifiedType: const FullType(String)));
        }
        if (object.mission != null) {
            result
                ..add(r'mission')
                ..add(serializers.serialize(object.mission,
                    specifiedType: const FullType(String)));
        }
        if (object.phoneNumber != null) {
            result
                ..add(r'phoneNumber')
                ..add(serializers.serialize(object.phoneNumber,
                    specifiedType: const FullType(String)));
        }
        if (object.generalEmail != null) {
            result
                ..add(r'generalEmail')
                ..add(serializers.serialize(object.generalEmail,
                    specifiedType: const FullType(String)));
        }
        if (object.category != null) {
            result
                ..add(r'category')
                ..add(serializers.serialize(object.category,
                    specifiedType: const FullType(OrganizationObjectCategory)));
        }
        if (object.cause != null) {
            result
                ..add(r'cause')
                ..add(serializers.serialize(object.cause,
                    specifiedType: const FullType(OrganizationObjectCause)));
        }
        if (object.irsClassification != null) {
            result
                ..add(r'irsClassification')
                ..add(serializers.serialize(object.irsClassification,
                    specifiedType: const FullType(IRSClassification)));
        }
        if (object.mailingAddress != null) {
            result
                ..add(r'mailingAddress')
                ..add(serializers.serialize(object.mailingAddress,
                    specifiedType: const FullType(Address)));
        }
        if (object.donationAddress != null) {
            result
                ..add(r'donationAddress')
                ..add(serializers.serialize(object.donationAddress,
                    specifiedType: const FullType(Address)));
        }
        if (object.activeAdvisories != null) {
            result
                ..add(r'activeAdvisories')
                ..add(serializers.serialize(object.activeAdvisories,
                    specifiedType: const FullType(AdvisoryCollectionLink)));
        }
        if (object.removedAdvisories != null) {
            result
                ..add(r'removedAdvisories')
                ..add(serializers.serialize(object.removedAdvisories,
                    specifiedType: const FullType(AdvisoryCollectionLink)));
        }
        if (object.currentBoardChair != null) {
            result
                ..add(r'currentBoardChair')
                ..add(serializers.serialize(object.currentBoardChair,
                    specifiedType: const FullType(Representative)));
        }
        if (object.currentCEO != null) {
            result
                ..add(r'currentCEO')
                ..add(serializers.serialize(object.currentCEO,
                    specifiedType: const FullType(Representative)));
        }
        if (object.currentRating != null) {
            result
                ..add(r'currentRating')
                ..add(serializers.serialize(object.currentRating,
                    specifiedType: const FullType(RatingLink)));
        }
        if (object.ratingHistory != null) {
            result
                ..add(r'ratingHistory')
                ..add(serializers.serialize(object.ratingHistory,
                    specifiedType: const FullType(RatingCollectionLink)));
        }
        return result;
    }

    @override
    OrganizationObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ein':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ein = valueDes;
                    break;
                case r'orgID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.orgID = valueDes;
                    break;
                case r'charityName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.charityName = valueDes;
                    break;
                case r'tagLine':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.tagLine = valueDes;
                    break;
                case r'websiteURL':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.websiteURL = valueDes;
                    break;
                case r'charityNavigatorURL':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.charityNavigatorURL = valueDes;
                    break;
                case r'mission':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.mission = valueDes;
                    break;
                case r'phoneNumber':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.phoneNumber = valueDes;
                    break;
                case r'generalEmail':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.generalEmail = valueDes;
                    break;
                case r'category':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationObjectCategory)) as OrganizationObjectCategory;
                    result.category.replace(valueDes);
                    break;
                case r'cause':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationObjectCause)) as OrganizationObjectCause;
                    result.cause.replace(valueDes);
                    break;
                case r'irsClassification':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(IRSClassification)) as IRSClassification;
                    result.irsClassification.replace(valueDes);
                    break;
                case r'mailingAddress':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Address)) as Address;
                    result.mailingAddress.replace(valueDes);
                    break;
                case r'donationAddress':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Address)) as Address;
                    result.donationAddress.replace(valueDes);
                    break;
                case r'activeAdvisories':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AdvisoryCollectionLink)) as AdvisoryCollectionLink;
                    result.activeAdvisories.replace(valueDes);
                    break;
                case r'removedAdvisories':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AdvisoryCollectionLink)) as AdvisoryCollectionLink;
                    result.removedAdvisories.replace(valueDes);
                    break;
                case r'currentBoardChair':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Representative)) as Representative;
                    result.currentBoardChair.replace(valueDes);
                    break;
                case r'currentCEO':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Representative)) as Representative;
                    result.currentCEO.replace(valueDes);
                    break;
                case r'currentRating':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(RatingLink)) as RatingLink;
                    result.currentRating.replace(valueDes);
                    break;
                case r'ratingHistory':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(RatingCollectionLink)) as RatingCollectionLink;
                    result.ratingHistory.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

