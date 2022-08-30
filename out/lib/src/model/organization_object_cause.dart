//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_object_cause.g.dart';

/// The primary cause of this organization's charitable work as assigned by Charity Navigator.
///
/// Properties:
/// * [causeID] - Charity Navigator's unique identifier for the cause.
/// * [causeName] - Name of the cause.
/// * [image] - URL for an image representing the Cause.
/// * [charityNavigatorURL] - URL to the Cause page on Charity Navigator's website.
abstract class OrganizationObjectCause implements Built<OrganizationObjectCause, OrganizationObjectCauseBuilder> {
    /// Charity Navigator's unique identifier for the cause.
    @BuiltValueField(wireName: r'causeID')
    String? get causeID;

    /// Name of the cause.
    @BuiltValueField(wireName: r'causeName')
    String? get causeName;

    /// URL for an image representing the Cause.
    @BuiltValueField(wireName: r'image')
    String? get image;

    /// URL to the Cause page on Charity Navigator's website.
    @BuiltValueField(wireName: r'charityNavigatorURL')
    String? get charityNavigatorURL;

    OrganizationObjectCause._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationObjectCauseBuilder b) => b;

    factory OrganizationObjectCause([void updates(OrganizationObjectCauseBuilder b)]) = _$OrganizationObjectCause;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationObjectCause> get serializer => _$OrganizationObjectCauseSerializer();
}

class _$OrganizationObjectCauseSerializer implements StructuredSerializer<OrganizationObjectCause> {
    @override
    final Iterable<Type> types = const [OrganizationObjectCause, _$OrganizationObjectCause];

    @override
    final String wireName = r'OrganizationObjectCause';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationObjectCause object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.causeID != null) {
            result
                ..add(r'causeID')
                ..add(serializers.serialize(object.causeID,
                    specifiedType: const FullType(String)));
        }
        if (object.causeName != null) {
            result
                ..add(r'causeName')
                ..add(serializers.serialize(object.causeName,
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
    OrganizationObjectCause deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationObjectCauseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'causeID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.causeID = valueDes;
                    break;
                case r'causeName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.causeName = valueDes;
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

