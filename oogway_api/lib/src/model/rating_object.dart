//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/organization_link.dart';
import 'package:oogway_api/src/model/accountability_rating.dart';
import 'package:oogway_api/src/model/icon_set.dart';
import 'package:oogway_api/src/model/form990.dart';
import 'package:built_collection/built_collection.dart';
import 'package:oogway_api/src/model/financial_rating.dart';
import 'package:oogway_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_object.g.dart';

/// Represents a single Rating in Charity Navigator. Each rating is listed once, under its primary `referenceOrganization`. Note that the rating may apply to other organizations, and this is represented by `includedOrganizations`, which is a collection of hyperlinks to all of the organizations to which the rating applies. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
///
/// Properties:
/// * [ratingID] - Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [score] - Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [rating] - Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
/// * [publicationDate] - Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
/// * [referenceOrganization] 
/// * [includedOrganizations] - All organizations to which the rating applies. In most cases, a rating will apply to a single organization, and in that case primaryOrganization will be the only member of the includedOrganizationsList.  A rating for a composite organization will include multiple individual organizations, each with a distinct EIN. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [ratingImage] 
/// * [form990] 
/// * [financialRating] 
/// * [accountabilityRating] 
abstract class RatingObject implements Built<RatingObject, RatingObjectBuilder> {
    /// Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'ratingID')
    String? get ratingID;

    /// Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'score')
    num? get score;

    /// Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
    @BuiltValueField(wireName: r'rating')
    int? get rating;

    /// Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
    @BuiltValueField(wireName: r'publicationDate')
    Date? get publicationDate;

    @BuiltValueField(wireName: r'referenceOrganization')
    OrganizationLink? get referenceOrganization;

    /// All organizations to which the rating applies. In most cases, a rating will apply to a single organization, and in that case primaryOrganization will be the only member of the includedOrganizationsList.  A rating for a composite organization will include multiple individual organizations, each with a distinct EIN. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'includedOrganizations')
    BuiltList<OrganizationLink> get includedOrganizations;

    @BuiltValueField(wireName: r'ratingImage')
    IconSet? get ratingImage;

    @BuiltValueField(wireName: r'form990')
    Form990? get form990;

    @BuiltValueField(wireName: r'financialRating')
    FinancialRating? get financialRating;

    @BuiltValueField(wireName: r'accountabilityRating')
    AccountabilityRating? get accountabilityRating;

    RatingObject._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingObjectBuilder b) => b;

    factory RatingObject([void updates(RatingObjectBuilder b)]) = _$RatingObject;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingObject> get serializer => _$RatingObjectSerializer();
}

class _$RatingObjectSerializer implements StructuredSerializer<RatingObject> {
    @override
    final Iterable<Type> types = const [RatingObject, _$RatingObject];

    @override
    final String wireName = r'RatingObject';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingObject object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.ratingID != null) {
            result
                ..add(r'ratingID')
                ..add(serializers.serialize(object.ratingID,
                    specifiedType: const FullType(String)));
        }
        if (object.score != null) {
            result
                ..add(r'score')
                ..add(serializers.serialize(object.score,
                    specifiedType: const FullType(num)));
        }
        if (object.rating != null) {
            result
                ..add(r'rating')
                ..add(serializers.serialize(object.rating,
                    specifiedType: const FullType(int)));
        }
        if (object.publicationDate != null) {
            result
                ..add(r'publicationDate')
                ..add(serializers.serialize(object.publicationDate,
                    specifiedType: const FullType(Date)));
        }
        if (object.referenceOrganization != null) {
            result
                ..add(r'referenceOrganization')
                ..add(serializers.serialize(object.referenceOrganization,
                    specifiedType: const FullType(OrganizationLink)));
        }
        result
            ..add(r'includedOrganizations')
            ..add(serializers.serialize(object.includedOrganizations,
                specifiedType: const FullType(BuiltList, [FullType(OrganizationLink)])));
        if (object.ratingImage != null) {
            result
                ..add(r'ratingImage')
                ..add(serializers.serialize(object.ratingImage,
                    specifiedType: const FullType(IconSet)));
        }
        if (object.form990 != null) {
            result
                ..add(r'form990')
                ..add(serializers.serialize(object.form990,
                    specifiedType: const FullType(Form990)));
        }
        if (object.financialRating != null) {
            result
                ..add(r'financialRating')
                ..add(serializers.serialize(object.financialRating,
                    specifiedType: const FullType(FinancialRating)));
        }
        if (object.accountabilityRating != null) {
            result
                ..add(r'accountabilityRating')
                ..add(serializers.serialize(object.accountabilityRating,
                    specifiedType: const FullType(AccountabilityRating)));
        }
        return result;
    }

    @override
    RatingObject deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingObjectBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ratingID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ratingID = valueDes;
                    break;
                case r'score':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.score = valueDes;
                    break;
                case r'rating':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.rating = valueDes;
                    break;
                case r'publicationDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.publicationDate = valueDes;
                    break;
                case r'referenceOrganization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationLink)) as OrganizationLink;
                    result.referenceOrganization.replace(valueDes);
                    break;
                case r'includedOrganizations':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(OrganizationLink)])) as BuiltList<OrganizationLink>;
                    result.includedOrganizations.replace(valueDes);
                    break;
                case r'ratingImage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(IconSet)) as IconSet;
                    result.ratingImage.replace(valueDes);
                    break;
                case r'form990':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Form990)) as Form990;
                    result.form990.replace(valueDes);
                    break;
                case r'financialRating':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(FinancialRating)) as FinancialRating;
                    result.financialRating.replace(valueDes);
                    break;
                case r'accountabilityRating':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountabilityRating)) as AccountabilityRating;
                    result.accountabilityRating.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

