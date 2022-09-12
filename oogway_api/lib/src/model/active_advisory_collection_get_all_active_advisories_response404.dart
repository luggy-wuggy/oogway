//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_advisory_collection_get_all_active_advisories_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 implements Built<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404, ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder b) => b;

    factory ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404([void updates(ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder b)]) = _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404> get serializer => _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Serializer();
}

class _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Serializer implements StructuredSerializer<ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404> {
    @override
    final Iterable<Type> types = const [ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404, _$ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404];

    @override
    final String wireName = r'ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 object,
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
    ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ActiveAdvisoryCollectionGetAllActiveAdvisoriesResponse404Builder();

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

