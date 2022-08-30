//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_search_organizations_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class OrganizationCollectionSearchOrganizationsResponse404 implements Built<OrganizationCollectionSearchOrganizationsResponse404, OrganizationCollectionSearchOrganizationsResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    OrganizationCollectionSearchOrganizationsResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionSearchOrganizationsResponse404Builder b) => b;

    factory OrganizationCollectionSearchOrganizationsResponse404([void updates(OrganizationCollectionSearchOrganizationsResponse404Builder b)]) = _$OrganizationCollectionSearchOrganizationsResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionSearchOrganizationsResponse404> get serializer => _$OrganizationCollectionSearchOrganizationsResponse404Serializer();
}

class _$OrganizationCollectionSearchOrganizationsResponse404Serializer implements StructuredSerializer<OrganizationCollectionSearchOrganizationsResponse404> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionSearchOrganizationsResponse404, _$OrganizationCollectionSearchOrganizationsResponse404];

    @override
    final String wireName = r'OrganizationCollectionSearchOrganizationsResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionSearchOrganizationsResponse404 object,
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
    OrganizationCollectionSearchOrganizationsResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionSearchOrganizationsResponse404Builder();

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

