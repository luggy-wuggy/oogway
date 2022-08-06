//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_object_get_rating_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class RatingObjectGetRatingResponse400 implements Built<RatingObjectGetRatingResponse400, RatingObjectGetRatingResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    RatingObjectGetRatingResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingObjectGetRatingResponse400Builder b) => b;

    factory RatingObjectGetRatingResponse400([void updates(RatingObjectGetRatingResponse400Builder b)]) = _$RatingObjectGetRatingResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingObjectGetRatingResponse400> get serializer => _$RatingObjectGetRatingResponse400Serializer();
}

class _$RatingObjectGetRatingResponse400Serializer implements StructuredSerializer<RatingObjectGetRatingResponse400> {
    @override
    final Iterable<Type> types = const [RatingObjectGetRatingResponse400, _$RatingObjectGetRatingResponse400];

    @override
    final String wireName = r'RatingObjectGetRatingResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingObjectGetRatingResponse400 object,
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
    RatingObjectGetRatingResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingObjectGetRatingResponse400Builder();

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

