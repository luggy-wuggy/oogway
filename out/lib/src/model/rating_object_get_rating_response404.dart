//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_object_get_rating_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class RatingObjectGetRatingResponse404 implements Built<RatingObjectGetRatingResponse404, RatingObjectGetRatingResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    RatingObjectGetRatingResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingObjectGetRatingResponse404Builder b) => b;

    factory RatingObjectGetRatingResponse404([void updates(RatingObjectGetRatingResponse404Builder b)]) = _$RatingObjectGetRatingResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingObjectGetRatingResponse404> get serializer => _$RatingObjectGetRatingResponse404Serializer();
}

class _$RatingObjectGetRatingResponse404Serializer implements StructuredSerializer<RatingObjectGetRatingResponse404> {
    @override
    final Iterable<Type> types = const [RatingObjectGetRatingResponse404, _$RatingObjectGetRatingResponse404];

    @override
    final String wireName = r'RatingObjectGetRatingResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingObjectGetRatingResponse404 object,
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
    RatingObjectGetRatingResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingObjectGetRatingResponse404Builder();

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

