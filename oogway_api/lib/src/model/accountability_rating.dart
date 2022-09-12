//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/accountability_tests.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'accountability_rating.g.dart';

/// A composite of an organization's Accountability and Transparency Score and Rating, along with the accountability and transparency tests that Charity Navigator compiles to determine the score.
///
/// Properties:
/// * [score] - Overall accountability score, out of a possible 100, based on a set of individual measures of accountability and transparency. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1093) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [rating] - Overall accountability and transparency rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1283) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [accountabilityTests] 
abstract class AccountabilityRating implements Built<AccountabilityRating, AccountabilityRatingBuilder> {
    /// Overall accountability score, out of a possible 100, based on a set of individual measures of accountability and transparency. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1093) <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'score')
    num? get score;

    /// Overall accountability and transparency rating, on a four-star scale. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1283) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'rating')
    int? get rating;

    @BuiltValueField(wireName: r'accountabilityTests')
    AccountabilityTests? get accountabilityTests;

    AccountabilityRating._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AccountabilityRatingBuilder b) => b;

    factory AccountabilityRating([void updates(AccountabilityRatingBuilder b)]) = _$AccountabilityRating;

    @BuiltValueSerializer(custom: true)
    static Serializer<AccountabilityRating> get serializer => _$AccountabilityRatingSerializer();
}

class _$AccountabilityRatingSerializer implements StructuredSerializer<AccountabilityRating> {
    @override
    final Iterable<Type> types = const [AccountabilityRating, _$AccountabilityRating];

    @override
    final String wireName = r'AccountabilityRating';

    @override
    Iterable<Object?> serialize(Serializers serializers, AccountabilityRating object,
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
        if (object.accountabilityTests != null) {
            result
                ..add(r'accountabilityTests')
                ..add(serializers.serialize(object.accountabilityTests,
                    specifiedType: const FullType(AccountabilityTests)));
        }
        return result;
    }

    @override
    AccountabilityRating deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AccountabilityRatingBuilder();

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
                case r'accountabilityTests':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountabilityTests)) as AccountabilityTests;
                    result.accountabilityTests.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

