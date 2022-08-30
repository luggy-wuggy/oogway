//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_current_rating_financial_rating.g.dart';

/// Financial Score, Rating, and performance metrics. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
///
/// Properties:
/// * [score] - Overall financial score, out of a possible 100, based on a set of individual measures of financial health. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=35) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [rating] - Overall financial rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
abstract class OrganizationCollectionCurrentRatingFinancialRating implements Built<OrganizationCollectionCurrentRatingFinancialRating, OrganizationCollectionCurrentRatingFinancialRatingBuilder> {
    /// Overall financial score, out of a possible 100, based on a set of individual measures of financial health. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=35) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'score')
    num? get score;

    /// Overall financial rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'rating')
    int? get rating;

    OrganizationCollectionCurrentRatingFinancialRating._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionCurrentRatingFinancialRatingBuilder b) => b;

    factory OrganizationCollectionCurrentRatingFinancialRating([void updates(OrganizationCollectionCurrentRatingFinancialRatingBuilder b)]) = _$OrganizationCollectionCurrentRatingFinancialRating;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionCurrentRatingFinancialRating> get serializer => _$OrganizationCollectionCurrentRatingFinancialRatingSerializer();
}

class _$OrganizationCollectionCurrentRatingFinancialRatingSerializer implements StructuredSerializer<OrganizationCollectionCurrentRatingFinancialRating> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionCurrentRatingFinancialRating, _$OrganizationCollectionCurrentRatingFinancialRating];

    @override
    final String wireName = r'OrganizationCollectionCurrentRatingFinancialRating';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionCurrentRatingFinancialRating object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
        return result;
    }

    @override
    OrganizationCollectionCurrentRatingFinancialRating deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionCurrentRatingFinancialRatingBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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
            }
        }
        return result.build();
    }
}

