//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:oogway_api/src/model/category_collection_causes_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_collection_item.g.dart';

/// Charity Navigator's classification hierarchy for charitable Organizations, including Categories and Causes. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
///
/// Properties:
/// * [categoryID] - Charity Navigator's unique identifier for the category.
/// * [categoryName] - Name of the category.
/// * [image] - URL for an image representing the Category.
/// * [charityNavigatorURL] - URL to the Category page on Charity Navigator's website.
/// * [causes] - A list of specific causes, contained within this general category.
abstract class CategoryCollectionItem implements Built<CategoryCollectionItem, CategoryCollectionItemBuilder> {
    /// Charity Navigator's unique identifier for the category.
    @BuiltValueField(wireName: r'categoryID')
    String? get categoryID;

    /// Name of the category.
    @BuiltValueField(wireName: r'categoryName')
    String? get categoryName;

    /// URL for an image representing the Category.
    @BuiltValueField(wireName: r'image')
    String? get image;

    /// URL to the Category page on Charity Navigator's website.
    @BuiltValueField(wireName: r'charityNavigatorURL')
    String? get charityNavigatorURL;

    /// A list of specific causes, contained within this general category.
    @BuiltValueField(wireName: r'causes')
    BuiltList<CategoryCollectionCausesItem>? get causes;

    CategoryCollectionItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(CategoryCollectionItemBuilder b) => b;

    factory CategoryCollectionItem([void updates(CategoryCollectionItemBuilder b)]) = _$CategoryCollectionItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<CategoryCollectionItem> get serializer => _$CategoryCollectionItemSerializer();
}

class _$CategoryCollectionItemSerializer implements StructuredSerializer<CategoryCollectionItem> {
    @override
    final Iterable<Type> types = const [CategoryCollectionItem, _$CategoryCollectionItem];

    @override
    final String wireName = r'CategoryCollectionItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, CategoryCollectionItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.categoryID != null) {
            result
                ..add(r'categoryID')
                ..add(serializers.serialize(object.categoryID,
                    specifiedType: const FullType(String)));
        }
        if (object.categoryName != null) {
            result
                ..add(r'categoryName')
                ..add(serializers.serialize(object.categoryName,
                    specifiedType: const FullType(String)));
        }
        if (object.image != null) {
            result
                ..add(r'image')
                ..add(serializers.serialize(object.image,
                    specifiedType: const FullType(String)));
        }
        if (object.charityNavigatorURL != null) {
            result
                ..add(r'charityNavigatorURL')
                ..add(serializers.serialize(object.charityNavigatorURL,
                    specifiedType: const FullType(String)));
        }
        if (object.causes != null) {
            result
                ..add(r'causes')
                ..add(serializers.serialize(object.causes,
                    specifiedType: const FullType(BuiltList, [FullType(CategoryCollectionCausesItem)])));
        }
        return result;
    }

    @override
    CategoryCollectionItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CategoryCollectionItemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'categoryID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.categoryID = valueDes;
                    break;
                case r'categoryName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.categoryName = valueDes;
                    break;
                case r'image':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.image = valueDes;
                    break;
                case r'charityNavigatorURL':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.charityNavigatorURL = valueDes;
                    break;
                case r'causes':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CategoryCollectionCausesItem)])) as BuiltList<CategoryCollectionCausesItem>;
                    result.causes.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

