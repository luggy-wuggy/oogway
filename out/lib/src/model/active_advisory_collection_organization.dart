//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_advisory_collection_organization.g.dart';

/// Link to the organization resource, with all available details.
///
/// Properties:
/// * [ein] - The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
/// * [charityName] - Name of the charitable organization.
/// * [charityNavigatorURL] 
abstract class ActiveAdvisoryCollectionOrganization implements Built<ActiveAdvisoryCollectionOrganization, ActiveAdvisoryCollectionOrganizationBuilder> {
    /// The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
    @BuiltValueField(wireName: r'ein')
    String? get ein;

    /// Name of the charitable organization.
    @BuiltValueField(wireName: r'charityName')
    String? get charityName;

    @BuiltValueField(wireName: r'charityNavigatorURL')
    String? get charityNavigatorURL;

    ActiveAdvisoryCollectionOrganization._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ActiveAdvisoryCollectionOrganizationBuilder b) => b;

    factory ActiveAdvisoryCollectionOrganization([void updates(ActiveAdvisoryCollectionOrganizationBuilder b)]) = _$ActiveAdvisoryCollectionOrganization;

    @BuiltValueSerializer(custom: true)
    static Serializer<ActiveAdvisoryCollectionOrganization> get serializer => _$ActiveAdvisoryCollectionOrganizationSerializer();
}

class _$ActiveAdvisoryCollectionOrganizationSerializer implements StructuredSerializer<ActiveAdvisoryCollectionOrganization> {
    @override
    final Iterable<Type> types = const [ActiveAdvisoryCollectionOrganization, _$ActiveAdvisoryCollectionOrganization];

    @override
    final String wireName = r'ActiveAdvisoryCollectionOrganization';

    @override
    Iterable<Object?> serialize(Serializers serializers, ActiveAdvisoryCollectionOrganization object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.ein != null) {
            result
                ..add(r'ein')
                ..add(serializers.serialize(object.ein,
                    specifiedType: const FullType(String)));
        }
        if (object.charityName != null) {
            result
                ..add(r'charityName')
                ..add(serializers.serialize(object.charityName,
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
    ActiveAdvisoryCollectionOrganization deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ActiveAdvisoryCollectionOrganizationBuilder();

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

