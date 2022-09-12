//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_collection_get_advisories_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class AdvisoryCollectionGetAdvisoriesResponse400 implements Built<AdvisoryCollectionGetAdvisoriesResponse400, AdvisoryCollectionGetAdvisoriesResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    AdvisoryCollectionGetAdvisoriesResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryCollectionGetAdvisoriesResponse400Builder b) => b;

    factory AdvisoryCollectionGetAdvisoriesResponse400([void updates(AdvisoryCollectionGetAdvisoriesResponse400Builder b)]) = _$AdvisoryCollectionGetAdvisoriesResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisoryCollectionGetAdvisoriesResponse400> get serializer => _$AdvisoryCollectionGetAdvisoriesResponse400Serializer();
}

class _$AdvisoryCollectionGetAdvisoriesResponse400Serializer implements StructuredSerializer<AdvisoryCollectionGetAdvisoriesResponse400> {
    @override
    final Iterable<Type> types = const [AdvisoryCollectionGetAdvisoriesResponse400, _$AdvisoryCollectionGetAdvisoriesResponse400];

    @override
    final String wireName = r'AdvisoryCollectionGetAdvisoriesResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisoryCollectionGetAdvisoriesResponse400 object,
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
    AdvisoryCollectionGetAdvisoriesResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryCollectionGetAdvisoriesResponse400Builder();

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

