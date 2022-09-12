//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_collection_get_advisories_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class AdvisoryCollectionGetAdvisoriesResponse404 implements Built<AdvisoryCollectionGetAdvisoriesResponse404, AdvisoryCollectionGetAdvisoriesResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    AdvisoryCollectionGetAdvisoriesResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryCollectionGetAdvisoriesResponse404Builder b) => b;

    factory AdvisoryCollectionGetAdvisoriesResponse404([void updates(AdvisoryCollectionGetAdvisoriesResponse404Builder b)]) = _$AdvisoryCollectionGetAdvisoriesResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisoryCollectionGetAdvisoriesResponse404> get serializer => _$AdvisoryCollectionGetAdvisoriesResponse404Serializer();
}

class _$AdvisoryCollectionGetAdvisoriesResponse404Serializer implements StructuredSerializer<AdvisoryCollectionGetAdvisoriesResponse404> {
    @override
    final Iterable<Type> types = const [AdvisoryCollectionGetAdvisoriesResponse404, _$AdvisoryCollectionGetAdvisoriesResponse404];

    @override
    final String wireName = r'AdvisoryCollectionGetAdvisoriesResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisoryCollectionGetAdvisoriesResponse404 object,
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
    AdvisoryCollectionGetAdvisoriesResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryCollectionGetAdvisoriesResponse404Builder();

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

