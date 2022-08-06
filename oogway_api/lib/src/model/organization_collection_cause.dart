//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_cause.g.dart';

/// The primary cause of this organization's charitable work as assigned by Charity Navigator.
///
/// Properties:
/// * [causeID] - Charity Navigator's unique identifier for the cause.
/// * [causeName] - Name of the cause.
abstract class OrganizationCollectionCause implements Built<OrganizationCollectionCause, OrganizationCollectionCauseBuilder> {
    /// Charity Navigator's unique identifier for the cause.
    @BuiltValueField(wireName: r'causeID')
    String? get causeID;

    /// Name of the cause.
    @BuiltValueField(wireName: r'causeName')
    String? get causeName;

    OrganizationCollectionCause._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionCauseBuilder b) => b;

    factory OrganizationCollectionCause([void updates(OrganizationCollectionCauseBuilder b)]) = _$OrganizationCollectionCause;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionCause> get serializer => _$OrganizationCollectionCauseSerializer();
}

class _$OrganizationCollectionCauseSerializer implements StructuredSerializer<OrganizationCollectionCause> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionCause, _$OrganizationCollectionCause];

    @override
    final String wireName = r'OrganizationCollectionCause';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionCause object,
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
        return result;
    }

    @override
    OrganizationCollectionCause deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionCauseBuilder();

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
            }
        }
        return result.build();
    }
}

