//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_collection_get_ratings_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class RatingCollectionGetRatingsResponse400 implements Built<RatingCollectionGetRatingsResponse400, RatingCollectionGetRatingsResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    RatingCollectionGetRatingsResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingCollectionGetRatingsResponse400Builder b) => b;

    factory RatingCollectionGetRatingsResponse400([void updates(RatingCollectionGetRatingsResponse400Builder b)]) = _$RatingCollectionGetRatingsResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingCollectionGetRatingsResponse400> get serializer => _$RatingCollectionGetRatingsResponse400Serializer();
}

class _$RatingCollectionGetRatingsResponse400Serializer implements StructuredSerializer<RatingCollectionGetRatingsResponse400> {
    @override
    final Iterable<Type> types = const [RatingCollectionGetRatingsResponse400, _$RatingCollectionGetRatingsResponse400];

    @override
    final String wireName = r'RatingCollectionGetRatingsResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingCollectionGetRatingsResponse400 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.errorMessage != null) {
            result
                ..add(r'errorMessage')
                ..add(serializers.serialize(object.errorMessage,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    RatingCollectionGetRatingsResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingCollectionGetRatingsResponse400Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'errorMessage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errorMessage = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

