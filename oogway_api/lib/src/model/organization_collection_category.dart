//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_category.g.dart';

/// The primary category of this organization's charitable work as assigned by Charity Navigator.
///
/// Properties:
/// * [categoryID] - Charity Navigator's unique identifier for the category.
/// * [categoryName] - Name of the category.
abstract class OrganizationCollectionCategory implements Built<OrganizationCollectionCategory, OrganizationCollectionCategoryBuilder> {
    /// Charity Navigator's unique identifier for the category.
    @BuiltValueField(wireName: r'categoryID')
    String? get categoryID;

    /// Name of the category.
    @BuiltValueField(wireName: r'categoryName')
    String? get categoryName;

    OrganizationCollectionCategory._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionCategoryBuilder b) => b;

    factory OrganizationCollectionCategory([void updates(OrganizationCollectionCategoryBuilder b)]) = _$OrganizationCollectionCategory;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionCategory> get serializer => _$OrganizationCollectionCategorySerializer();
}

class _$OrganizationCollectionCategorySerializer implements StructuredSerializer<OrganizationCollectionCategory> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionCategory, _$OrganizationCollectionCategory];

    @override
    final String wireName = r'OrganizationCollectionCategory';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionCategory object,
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
        return result;
    }

    @override
    OrganizationCollectionCategory deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionCategoryBuilder();

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
            }
        }
        return result.build();
    }
}

