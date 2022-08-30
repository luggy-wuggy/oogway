//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/organization_collection_advisories.dart';
import 'package:openapi/src/model/organization_collection_mailing_address.dart';
import 'package:openapi/src/model/organization_collection_current_rating.dart';
import 'package:openapi/src/model/organization_collection_category.dart';
import 'package:openapi/src/model/organization_link.dart';
import 'package:openapi/src/model/organization_collection_cause.dart';
import 'package:openapi/src/model/organization_collection_donation_address.dart';
import 'package:openapi/src/model/organization_collection_irs_classification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_item.g.dart';

/// The full collection of organizations in Charity Navigator. Allows paged retrieval, simple and advanced searching.
///
/// Properties:
/// * [ein] - The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
/// * [orgID] - Internal identifier assigned by Charity Navigator. Only rated charities have an orgID. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [charityName] - Name of the charitable organization.
/// * [tagLine] - Tagline describing the charity.
/// * [websiteURL] - URL of the organization's website. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [charityNavigatorURL] 
/// * [mission] - The organization's mission statement.
/// * [currentRating] 
/// * [category] 
/// * [cause] 
/// * [irsClassification] 
/// * [mailingAddress] 
/// * [donationAddress] 
/// * [advisories] 
/// * [organization] 
abstract class OrganizationCollectionItem implements Built<OrganizationCollectionItem, OrganizationCollectionItemBuilder> {
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

    @BuiltValueField(wireName: r'currentRating')
    OrganizationCollectionCurrentRating? get currentRating;

    @BuiltValueField(wireName: r'category')
    OrganizationCollectionCategory? get category;

    @BuiltValueField(wireName: r'cause')
    OrganizationCollectionCause? get cause;

    @BuiltValueField(wireName: r'irsClassification')
    OrganizationCollectionIrsClassification? get irsClassification;

    @BuiltValueField(wireName: r'mailingAddress')
    OrganizationCollectionMailingAddress? get mailingAddress;

    @BuiltValueField(wireName: r'donationAddress')
    OrganizationCollectionDonationAddress? get donationAddress;

    @BuiltValueField(wireName: r'advisories')
    OrganizationCollectionAdvisories? get advisories;

    @BuiltValueField(wireName: r'organization')
    OrganizationLink get organization;

    OrganizationCollectionItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionItemBuilder b) => b;

    factory OrganizationCollectionItem([void updates(OrganizationCollectionItemBuilder b)]) = _$OrganizationCollectionItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionItem> get serializer => _$OrganizationCollectionItemSerializer();
}

class _$OrganizationCollectionItemSerializer implements StructuredSerializer<OrganizationCollectionItem> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionItem, _$OrganizationCollectionItem];

    @override
    final String wireName = r'OrganizationCollectionItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionItem object,
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
        if (object.currentRating != null) {
            result
                ..add(r'currentRating')
                ..add(serializers.serialize(object.currentRating,
                    specifiedType: const FullType(OrganizationCollectionCurrentRating)));
        }
        if (object.category != null) {
            result
                ..add(r'category')
                ..add(serializers.serialize(object.category,
                    specifiedType: const FullType(OrganizationCollectionCategory)));
        }
        if (object.cause != null) {
            result
                ..add(r'cause')
                ..add(serializers.serialize(object.cause,
                    specifiedType: const FullType(OrganizationCollectionCause)));
        }
        if (object.irsClassification != null) {
            result
                ..add(r'irsClassification')
                ..add(serializers.serialize(object.irsClassification,
                    specifiedType: const FullType(OrganizationCollectionIrsClassification)));
        }
        if (object.mailingAddress != null) {
            result
                ..add(r'mailingAddress')
                ..add(serializers.serialize(object.mailingAddress,
                    specifiedType: const FullType(OrganizationCollectionMailingAddress)));
        }
        if (object.donationAddress != null) {
            result
                ..add(r'donationAddress')
                ..add(serializers.serialize(object.donationAddress,
                    specifiedType: const FullType(OrganizationCollectionDonationAddress)));
        }
        if (object.advisories != null) {
            result
                ..add(r'advisories')
                ..add(serializers.serialize(object.advisories,
                    specifiedType: const FullType(OrganizationCollectionAdvisories)));
        }
        result
            ..add(r'organization')
            ..add(serializers.serialize(object.organization,
                specifiedType: const FullType(OrganizationLink)));
        return result;
    }

    @override
    OrganizationCollectionItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionItemBuilder();

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
                case r'currentRating':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionCurrentRating)) as OrganizationCollectionCurrentRating;
                    result.currentRating.replace(valueDes);
                    break;
                case r'category':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionCategory)) as OrganizationCollectionCategory;
                    result.category.replace(valueDes);
                    break;
                case r'cause':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionCause)) as OrganizationCollectionCause;
                    result.cause.replace(valueDes);
                    break;
                case r'irsClassification':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionIrsClassification)) as OrganizationCollectionIrsClassification;
                    result.irsClassification.replace(valueDes);
                    break;
                case r'mailingAddress':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionMailingAddress)) as OrganizationCollectionMailingAddress;
                    result.mailingAddress.replace(valueDes);
                    break;
                case r'donationAddress':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionDonationAddress)) as OrganizationCollectionDonationAddress;
                    result.donationAddress.replace(valueDes);
                    break;
                case r'advisories':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationCollectionAdvisories)) as OrganizationCollectionAdvisories;
                    result.advisories.replace(valueDes);
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationLink)) as OrganizationLink;
                    result.organization.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

