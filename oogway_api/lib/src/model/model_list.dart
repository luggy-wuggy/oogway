//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:oogway_api/src/model/organization_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_list.g.dart';

/// A curated or generated list of organizations, published by Charity Navigator.
///
/// Properties:
/// * [listID] - Unique ID for the list, assigned by Charity Navigator.
/// * [listName] - Name of the list.
/// * [listType] - A general classification of the list.
/// * [isCurrentlyFeatured] - Boolean field, true is list is currently featured on site.
/// * [sortOrder] - If list is currently featured, the sort order it is currently displayed in.
/// * [listAbstract] - Short list description.
/// * [listExplanation] - Long list description.
/// * [listImageURL] - URL for an image representing the List.
/// * [charityNavigatorURL] - URL to the List page on Charity Navigator's website.
/// * [groups] - Groups of organizations within the list. May be a single, unnamed group in the case of a flat list.
abstract class ModelList implements Built<ModelList, ModelListBuilder> {
    /// Unique ID for the list, assigned by Charity Navigator.
    @BuiltValueField(wireName: r'listID')
    String? get listID;

    /// Name of the list.
    @BuiltValueField(wireName: r'listName')
    String? get listName;

    /// A general classification of the list.
    @BuiltValueField(wireName: r'listType')
    String? get listType;

    /// Boolean field, true is list is currently featured on site.
    @BuiltValueField(wireName: r'isCurrentlyFeatured')
    bool? get isCurrentlyFeatured;

    /// If list is currently featured, the sort order it is currently displayed in.
    @BuiltValueField(wireName: r'sortOrder')
    int? get sortOrder;

    /// Short list description.
    @BuiltValueField(wireName: r'listAbstract')
    String? get listAbstract;

    /// Long list description.
    @BuiltValueField(wireName: r'listExplanation')
    String? get listExplanation;

    /// URL for an image representing the List.
    @BuiltValueField(wireName: r'listImageURL')
    String? get listImageURL;

    /// URL to the List page on Charity Navigator's website.
    @BuiltValueField(wireName: r'charityNavigatorURL')
    String? get charityNavigatorURL;

    /// Groups of organizations within the list. May be a single, unnamed group in the case of a flat list.
    @BuiltValueField(wireName: r'groups')
    BuiltList<OrganizationGroup>? get groups;

    ModelList._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ModelListBuilder b) => b;

    factory ModelList([void updates(ModelListBuilder b)]) = _$ModelList;

    @BuiltValueSerializer(custom: true)
    static Serializer<ModelList> get serializer => _$ModelListSerializer();
}

class _$ModelListSerializer implements StructuredSerializer<ModelList> {
    @override
    final Iterable<Type> types = const [ModelList, _$ModelList];

    @override
    final String wireName = r'ModelList';

    @override
    Iterable<Object?> serialize(Serializers serializers, ModelList object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.listID != null) {
            result
                ..add(r'listID')
                ..add(serializers.serialize(object.listID,
                    specifiedType: const FullType(String)));
        }
        if (object.listName != null) {
            result
                ..add(r'listName')
                ..add(serializers.serialize(object.listName,
                    specifiedType: const FullType(String)));
        }
        if (object.listType != null) {
            result
                ..add(r'listType')
                ..add(serializers.serialize(object.listType,
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
        if (object.listAbstract != null) {
            result
                ..add(r'listAbstract')
                ..add(serializers.serialize(object.listAbstract,
                    specifiedType: const FullType(String)));
        }
        if (object.listExplanation != null) {
            result
                ..add(r'listExplanation')
                ..add(serializers.serialize(object.listExplanation,
                    specifiedType: const FullType(String)));
        }
        if (object.listImageURL != null) {
            result
                ..add(r'listImageURL')
                ..add(serializers.serialize(object.listImageURL,
                    specifiedType: const FullType(String)));
        }
        if (object.charityNavigatorURL != null) {
            result
                ..add(r'charityNavigatorURL')
                ..add(serializers.serialize(object.charityNavigatorURL,
                    specifiedType: const FullType(String)));
        }
        if (object.groups != null) {
            result
                ..add(r'groups')
                ..add(serializers.serialize(object.groups,
                    specifiedType: const FullType(BuiltList, [FullType(OrganizationGroup)])));
        }
        return result;
    }

    @override
    ModelList deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ModelListBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'listID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listID = valueDes;
                    break;
                case r'listName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listName = valueDes;
                    break;
                case r'listType':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listType = valueDes;
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
                case r'listAbstract':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listAbstract = valueDes;
                    break;
                case r'listExplanation':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listExplanation = valueDes;
                    break;
                case r'listImageURL':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.listImageURL = valueDes;
                    break;
                case r'charityNavigatorURL':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.charityNavigatorURL = valueDes;
                    break;
                case r'groups':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(OrganizationGroup)])) as BuiltList<OrganizationGroup>;
                    result.groups.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

