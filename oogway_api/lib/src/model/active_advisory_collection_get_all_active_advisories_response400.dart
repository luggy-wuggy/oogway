//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_advisory_collection_get_all_active_advisories_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 implements Built<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400, ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder b) => b;

    factory ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400([void updates(ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder b)]) = _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400> get serializer => _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Serializer();
}

class _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Serializer implements StructuredSerializer<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400> {
    @override
    final Iterable<Type> types = const [ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400, _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400];

    @override
    final String wireName = r'ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 object,
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
    ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse400Builder();

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

