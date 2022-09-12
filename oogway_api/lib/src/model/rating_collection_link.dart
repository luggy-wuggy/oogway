//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_collection_link.g.dart';

/// RatingCollectionLink
///
/// Properties:
/// * [links] - A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
abstract class RatingCollectionLink implements Built<RatingCollectionLink, RatingCollectionLinkBuilder> {
    /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    @BuiltValueField(wireName: r'_links')
    BuiltMap<String, JsonObject> get links;

    RatingCollectionLink._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingCollectionLinkBuilder b) => b;

    factory RatingCollectionLink([void updates(RatingCollectionLinkBuilder b)]) = _$RatingCollectionLink;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingCollectionLink> get serializer => _$RatingCollectionLinkSerializer();
}

class _$RatingCollectionLinkSerializer implements StructuredSerializer<RatingCollectionLink> {
    @override
    final Iterable<Type> types = const [RatingCollectionLink, _$RatingCollectionLink];

    @override
    final String wireName = r'RatingCollectionLink';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingCollectionLink object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'_links')
            ..add(serializers.serialize(object.links,
                specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])));
        return result;
    }

    @override
    RatingCollectionLink deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingCollectionLinkBuilder();

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

