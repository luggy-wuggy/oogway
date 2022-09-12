//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_link.g.dart';

/// OrganizationLink
///
/// Properties:
/// * [ein] - The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
/// * [charityName] - Name of the charitable organization.
/// * [links] - A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
abstract class OrganizationLink implements Built<OrganizationLink, OrganizationLinkBuilder> {
    /// The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
    @BuiltValueField(wireName: r'ein')
    String get ein;

    /// Name of the charitable organization.
    @BuiltValueField(wireName: r'charityName')
    String? get charityName;

    /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    @BuiltValueField(wireName: r'_links')
    BuiltMap<String, JsonObject> get links;

    OrganizationLink._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationLinkBuilder b) => b;

    factory OrganizationLink([void updates(OrganizationLinkBuilder b)]) = _$OrganizationLink;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationLink> get serializer => _$OrganizationLinkSerializer();
}

class _$OrganizationLinkSerializer implements StructuredSerializer<OrganizationLink> {
    @override
    final Iterable<Type> types = const [OrganizationLink, _$OrganizationLink];

    @override
    final String wireName = r'OrganizationLink';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationLink object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'ein')
            ..add(serializers.serialize(object.ein,
                specifiedType: const FullType(String)));
        if (object.charityName != null) {
            result
                ..add(r'charityName')
                ..add(serializers.serialize(object.charityName,
                    specifiedType: const FullType(String)));
        }
        result
            ..add(r'_links')
            ..add(serializers.serialize(object.links,
                specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])));
        return result;
    }

    @override
    OrganizationLink deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationLinkBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ein':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ein = valueDes;
                    break;
                case r'charityName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.charityName = valueDes;
                    break;
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])) as BuiltMap<String, JsonObject>;
                    result.links.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

