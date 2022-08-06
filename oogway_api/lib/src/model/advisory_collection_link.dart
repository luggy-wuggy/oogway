//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_collection_link.g.dart';

/// AdvisoryCollectionLink
///
/// Properties:
/// * [links] - A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
abstract class AdvisoryCollectionLink implements Built<AdvisoryCollectionLink, AdvisoryCollectionLinkBuilder> {
    /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    @BuiltValueField(wireName: r'_links')
    BuiltMap<String, JsonObject> get links;

    AdvisoryCollectionLink._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryCollectionLinkBuilder b) => b;

    factory AdvisoryCollectionLink([void updates(AdvisoryCollectionLinkBuilder b)]) = _$AdvisoryCollectionLink;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisoryCollectionLink> get serializer => _$AdvisoryCollectionLinkSerializer();
}

class _$AdvisoryCollectionLinkSerializer implements StructuredSerializer<AdvisoryCollectionLink> {
    @override
    final Iterable<Type> types = const [AdvisoryCollectionLink, _$AdvisoryCollectionLink];

    @override
    final String wireName = r'AdvisoryCollectionLink';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisoryCollectionLink object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'_links')
            ..add(serializers.serialize(object.links,
                specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])));
        return result;
    }

    @override
    AdvisoryCollectionLink deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryCollectionLinkBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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

