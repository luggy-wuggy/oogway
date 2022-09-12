//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_object_category.g.dart';

/// The primary category of the charity.
///
/// Properties:
/// * [categoryID] - Charity Navigator's unique identifier for the category.
/// * [categoryName] - Name of the category.
/// * [image] - URL for an image representing the Category.
/// * [charityNavigatorURL] - URL to the Category page on Charity Navigator's website.
abstract class OrganizationObjectCategory implements Built<OrganizationObjectCategory, OrganizationObjectCategoryBuilder> {
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

    OrganizationObjectCategory._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationObjectCategoryBuilder b) => b;

    factory OrganizationObjectCategory([void updates(OrganizationObjectCategoryBuilder b)]) = _$OrganizationObjectCategory;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationObjectCategory> get serializer => _$OrganizationObjectCategorySerializer();
}

class _$OrganizationObjectCategorySerializer implements StructuredSerializer<OrganizationObjectCategory> {
    @override
    final Iterable<Type> types = const [OrganizationObjectCategory, _$OrganizationObjectCategory];

    @override
    final String wireName = r'OrganizationObjectCategory';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationObjectCategory object,
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
        return result;
    }

    @override
    OrganizationObjectCategory deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationObjectCategoryBuilder();

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
            }
        }
        return result.build();
    }
}

