//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/performance_metrics.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'financial_rating.g.dart';

/// A composite of an organization's Financial Score and Financial Rating, along with the performance metrics that Charity Navigator compiles to determine the score.
///
/// Properties:
/// * [score] - Overall financial score, out of a possible 100, based on a set of individual measures of financial health. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=35) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [rating] - Overall financial rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [performanceMetrics] 
abstract class FinancialRating implements Built<FinancialRating, FinancialRatingBuilder> {
    /// Overall financial score, out of a possible 100, based on a set of individual measures of financial health. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=35) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'score')
    num? get score;

    /// Overall financial rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'rating')
    int? get rating;

    @BuiltValueField(wireName: r'performanceMetrics')
    PerformanceMetrics? get performanceMetrics;

    FinancialRating._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FinancialRatingBuilder b) => b;

    factory FinancialRating([void updates(FinancialRatingBuilder b)]) = _$FinancialRating;

    @BuiltValueSerializer(custom: true)
    static Serializer<FinancialRating> get serializer => _$FinancialRatingSerializer();
}

class _$FinancialRatingSerializer implements StructuredSerializer<FinancialRating> {
    @override
    final Iterable<Type> types = const [FinancialRating, _$FinancialRating];

    @override
    final String wireName = r'FinancialRating';

    @override
    Iterable<Object?> serialize(Serializers serializers, FinancialRating object,
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
        if (object.performanceMetrics != null) {
            result
                ..add(r'performanceMetrics')
                ..add(serializers.serialize(object.performanceMetrics,
                    specifiedType: const FullType(PerformanceMetrics)));
        }
        return result;
    }

    @override
    FinancialRating deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FinancialRatingBuilder();

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
                case r'performanceMetrics':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PerformanceMetrics)) as PerformanceMetrics;
                    result.performanceMetrics.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

