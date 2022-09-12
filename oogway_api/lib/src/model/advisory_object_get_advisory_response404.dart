//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_object_get_advisory_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class AdvisoryObjectGetAdvisoryResponse404 implements Built<AdvisoryObjectGetAdvisoryResponse404, AdvisoryObjectGetAdvisoryResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    AdvisoryObjectGetAdvisoryResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryObjectGetAdvisoryResponse404Builder b) => b;

    factory AdvisoryObjectGetAdvisoryResponse404([void updates(AdvisoryObjectGetAdvisoryResponse404Builder b)]) = _$AdvisoryObjectGetAdvisoryResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisoryObjectGetAdvisoryResponse404> get serializer => _$AdvisoryObjectGetAdvisoryResponse404Serializer();
}

class _$AdvisoryObjectGetAdvisoryResponse404Serializer implements StructuredSerializer<AdvisoryObjectGetAdvisoryResponse404> {
    @override
    final Iterable<Type> types = const [AdvisoryObjectGetAdvisoryResponse404, _$AdvisoryObjectGetAdvisoryResponse404];

    @override
    final String wireName = r'AdvisoryObjectGetAdvisoryResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisoryObjectGetAdvisoryResponse404 object,
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
    AdvisoryObjectGetAdvisoryResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryObjectGetAdvisoryResponse404Builder();

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

