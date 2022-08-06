//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_object_get_advisory_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class AdvisoryObjectGetAdvisoryResponse400 implements Built<AdvisoryObjectGetAdvisoryResponse400, AdvisoryObjectGetAdvisoryResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    AdvisoryObjectGetAdvisoryResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryObjectGetAdvisoryResponse400Builder b) => b;

    factory AdvisoryObjectGetAdvisoryResponse400([void updates(AdvisoryObjectGetAdvisoryResponse400Builder b)]) = _$AdvisoryObjectGetAdvisoryResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisoryObjectGetAdvisoryResponse400> get serializer => _$AdvisoryObjectGetAdvisoryResponse400Serializer();
}

class _$AdvisoryObjectGetAdvisoryResponse400Serializer implements StructuredSerializer<AdvisoryObjectGetAdvisoryResponse400> {
    @override
    final Iterable<Type> types = const [AdvisoryObjectGetAdvisoryResponse400, _$AdvisoryObjectGetAdvisoryResponse400];

    @override
    final String wireName = r'AdvisoryObjectGetAdvisoryResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisoryObjectGetAdvisoryResponse400 object,
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
    AdvisoryObjectGetAdvisoryResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryObjectGetAdvisoryResponse400Builder();

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

