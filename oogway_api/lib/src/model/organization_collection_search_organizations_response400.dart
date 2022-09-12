//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_search_organizations_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class OrganizationCollectionSearchOrganizationsResponse400 implements Built<OrganizationCollectionSearchOrganizationsResponse400, OrganizationCollectionSearchOrganizationsResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    OrganizationCollectionSearchOrganizationsResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionSearchOrganizationsResponse400Builder b) => b;

    factory OrganizationCollectionSearchOrganizationsResponse400([void updates(OrganizationCollectionSearchOrganizationsResponse400Builder b)]) = _$OrganizationCollectionSearchOrganizationsResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionSearchOrganizationsResponse400> get serializer => _$OrganizationCollectionSearchOrganizationsResponse400Serializer();
}

class _$OrganizationCollectionSearchOrganizationsResponse400Serializer implements StructuredSerializer<OrganizationCollectionSearchOrganizationsResponse400> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionSearchOrganizationsResponse400, _$OrganizationCollectionSearchOrganizationsResponse400];

    @override
    final String wireName = r'OrganizationCollectionSearchOrganizationsResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionSearchOrganizationsResponse400 object,
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
    OrganizationCollectionSearchOrganizationsResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionSearchOrganizationsResponse400Builder();

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

