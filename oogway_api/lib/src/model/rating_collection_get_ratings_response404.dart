//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_collection_get_ratings_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class RatingCollectionGetRatingsResponse404 implements Built<RatingCollectionGetRatingsResponse404, RatingCollectionGetRatingsResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    RatingCollectionGetRatingsResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingCollectionGetRatingsResponse404Builder b) => b;

    factory RatingCollectionGetRatingsResponse404([void updates(RatingCollectionGetRatingsResponse404Builder b)]) = _$RatingCollectionGetRatingsResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingCollectionGetRatingsResponse404> get serializer => _$RatingCollectionGetRatingsResponse404Serializer();
}

class _$RatingCollectionGetRatingsResponse404Serializer implements StructuredSerializer<RatingCollectionGetRatingsResponse404> {
    @override
    final Iterable<Type> types = const [RatingCollectionGetRatingsResponse404, _$RatingCollectionGetRatingsResponse404];

    @override
    final String wireName = r'RatingCollectionGetRatingsResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingCollectionGetRatingsResponse404 object,
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
    RatingCollectionGetRatingsResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingCollectionGetRatingsResponse404Builder();

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

