//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_current_rating_accountability_rating.g.dart';

/// Accountability and Transparency Score, Rating, and test indicators. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
///
/// Properties:
/// * [score] - Overall accountability score, out of a possible 100, based on a set of individual measures of accountability and transparency. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1093) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [rating] - Overall accountability and transparency rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1283) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
abstract class OrganizationCollectionCurrentRatingAccountabilityRating implements Built<OrganizationCollectionCurrentRatingAccountabilityRating, OrganizationCollectionCurrentRatingAccountabilityRatingBuilder> {
    /// Overall accountability score, out of a possible 100, based on a set of individual measures of accountability and transparency. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1093) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'score')
    num? get score;

    /// Overall accountability and transparency rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1283) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'rating')
    int? get rating;

    OrganizationCollectionCurrentRatingAccountabilityRating._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionCurrentRatingAccountabilityRatingBuilder b) => b;

    factory OrganizationCollectionCurrentRatingAccountabilityRating([void updates(OrganizationCollectionCurrentRatingAccountabilityRatingBuilder b)]) = _$OrganizationCollectionCurrentRatingAccountabilityRating;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionCurrentRatingAccountabilityRating> get serializer => _$OrganizationCollectionCurrentRatingAccountabilityRatingSerializer();
}

class _$OrganizationCollectionCurrentRatingAccountabilityRatingSerializer implements StructuredSerializer<OrganizationCollectionCurrentRatingAccountabilityRating> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionCurrentRatingAccountabilityRating, _$OrganizationCollectionCurrentRatingAccountabilityRating];

    @override
    final String wireName = r'OrganizationCollectionCurrentRatingAccountabilityRating';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionCurrentRatingAccountabilityRating object,
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
    OrganizationCollectionCurrentRatingAccountabilityRating deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionCurrentRatingAccountabilityRatingBuilder();

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

