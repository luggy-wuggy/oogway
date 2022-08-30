//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_object_link.g.dart';

/// ListObjectLink
///
/// Properties:
/// * [links] - A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
/// * [listID] - Unique ID for the list, assigned by Charity Navigator.
/// * [listType] - A general classification of the list.
/// * [listName] - Name of the list.
/// * [listAbstract] - Short list description.
/// * [listImageURL] - URL for an image representing the List.
/// * [isCurrentlyFeatured] - Boolean field, true is list is currently featured on site.
/// * [sortOrder] - If list is currently featured, the sort order it is currently displayed in.
abstract class ListObjectLink implements Built<ListObjectLink, ListObjectLinkBuilder> {
    /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    @BuiltValueField(wireName: r'_links')
    BuiltMap<String, JsonObject> get links;

    /// Unique ID for the list, assigned by Charity Navigator.
    @BuiltValueField(wireName: r'listID')
    String? get listID;

    /// A general classification of the list.
    @BuiltValueField(wireName: r'listType')
    String? get listType;

    /// Name of the list.
    @BuiltValueField(wireName: r'listName')
    String? get listName;

    /// Short list description.
    @BuiltValueField(wireName: r'listAbstract')
    String? get listAbstract;

    /// URL for an image representing the List.
    @BuiltValueField(wireName: r'listImageURL')
    String? get listImageURL;

    /// Boolean field, true is list is currently featured on site.
    @BuiltValueField(wireName: r'isCurrentlyFeatured')
    bool? get isCurrentlyFeatured;

    /// If list is currently featured, the sort order it is currently displayed in.
    @BuiltValueField(wireName: r'sortOrder')
    int? get sortOrder;

    ListObjectLink._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListObjectLinkBuilder b) => b;

    factory ListObjectLink([void updates(ListObjectLinkBuilder b)]) = _$ListObjectLink;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListObjectLink> get serializer => _$ListObjectLinkSerializer();
}

class _$ListObjectLinkSerializer implements StructuredSerializer<ListObjectLink> {
    @override
    final Iterable<Type> types = const [ListObjectLink, _$ListObjectLink];

    @override
    final String wireName = r'ListObjectLink';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListObjectLink object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'_links')
            ..add(serializers.serialize(object.links,
                specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])));
        if (object.listID != null) {
            result
                ..add(r'listID')
                ..add(serializers.serialize(object.listID,
                    specifiedType: const FullType(String)));
        }
        if (object.listType != null) {
            result
                ..add(r'listType')
                ..add(serializers.serialize(object.listType,
                    specifiedType: const FullType(String)));
        }
        if (object.listName != null) {
            result
                ..add(r'listName')
                ..add(serializers.serialize(object.listName,
                    specifiedType: const FullType(String)));
        }
        if (object.listAbstract != null) {
            result
                ..add(r'listAbstract')
                ..add(serializers.serialize(object.listAbstract,
                    specifiedType: const FullType(String)));
        }
        if (object.listImageURL != null) {
            result
                ..add(r'listImageURL')
                ..add(serializers.serialize(object.listImageURL,
                    specifiedType: const FullType(String)));
        }
        if (object.isCurrentlyFeatured != null) {
            result
                ..add(r'isCurrentlyFeatured')
                ..add(serializers.serialize(object.isCurrentlyFeatured,
                    specifiedType: const FullType(bool)));
        }
        if (object.sortOrder != null) {
            result
                ..add(r'sortOrder')
                ..add(serializers.serialize(object.sortOrder,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    ListObjectLink deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListObjectLinkBuilder();

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
                case r'listID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listID = valueDes;
                    break;
                case r'listType':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listType = valueDes;
                    break;
                case r'listName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listName = valueDes;
                    break;
                case r'listAbstract':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listAbstract = valueDes;
                    break;
                case r'listImageURL':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listImageURL = valueDes;
                    break;
                case r'isCurrentlyFeatured':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    result.isCurrentlyFeatured = valueDes;
                    break;
                case r'sortOrder':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.sortOrder = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

