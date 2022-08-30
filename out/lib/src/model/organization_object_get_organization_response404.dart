//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_object_get_organization_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class OrganizationObjectGetOrganizationResponse404 implements Built<OrganizationObjectGetOrganizationResponse404, OrganizationObjectGetOrganizationResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    OrganizationObjectGetOrganizationResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationObjectGetOrganizationResponse404Builder b) => b;

    factory OrganizationObjectGetOrganizationResponse404([void updates(OrganizationObjectGetOrganizationResponse404Builder b)]) = _$OrganizationObjectGetOrganizationResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationObjectGetOrganizationResponse404> get serializer => _$OrganizationObjectGetOrganizationResponse404Serializer();
}

class _$OrganizationObjectGetOrganizationResponse404Serializer implements StructuredSerializer<OrganizationObjectGetOrganizationResponse404> {
    @override
    final Iterable<Type> types = const [OrganizationObjectGetOrganizationResponse404, _$OrganizationObjectGetOrganizationResponse404];

    @override
    final String wireName = r'OrganizationObjectGetOrganizationResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationObjectGetOrganizationResponse404 object,
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
    OrganizationObjectGetOrganizationResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationObjectGetOrganizationResponse404Builder();

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

