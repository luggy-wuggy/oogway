//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_object_get_organization_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class OrganizationObjectGetOrganizationResponse400 implements Built<OrganizationObjectGetOrganizationResponse400, OrganizationObjectGetOrganizationResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    OrganizationObjectGetOrganizationResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationObjectGetOrganizationResponse400Builder b) => b;

    factory OrganizationObjectGetOrganizationResponse400([void updates(OrganizationObjectGetOrganizationResponse400Builder b)]) = _$OrganizationObjectGetOrganizationResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationObjectGetOrganizationResponse400> get serializer => _$OrganizationObjectGetOrganizationResponse400Serializer();
}

class _$OrganizationObjectGetOrganizationResponse400Serializer implements StructuredSerializer<OrganizationObjectGetOrganizationResponse400> {
    @override
    final Iterable<Type> types = const [OrganizationObjectGetOrganizationResponse400, _$OrganizationObjectGetOrganizationResponse400];

    @override
    final String wireName = r'OrganizationObjectGetOrganizationResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationObjectGetOrganizationResponse400 object,
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
    OrganizationObjectGetOrganizationResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationObjectGetOrganizationResponse400Builder();

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

