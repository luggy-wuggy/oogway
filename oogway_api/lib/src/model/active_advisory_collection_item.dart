//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/advisory_rollup.dart';
import 'package:oogway_api/src/model/active_advisory_collection_mailing_address.dart';
import 'package:oogway_api/src/model/active_advisory_collection_organization.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_advisory_collection_item.g.dart';

/// Represents the complete list of Organizations with active advisories.
///
/// Properties:
/// * [mailingAddress] 
/// * [organization] 
/// * [advisories] 
abstract class ActiveAdvisoryCollectionItem implements Built<ActiveAdvisoryCollectionItem, ActiveAdvisoryCollectionItemBuilder> {
    @BuiltValueField(wireName: r'mailingAddress')
    ActiveAdvisoryCollectionMailingAddress? get mailingAddress;

    @BuiltValueField(wireName: r'organization')
    ActiveAdvisoryCollectionOrganization get organization;

    @BuiltValueField(wireName: r'advisories')
    AdvisoryRollup? get advisories;

    ActiveAdvisoryCollectionItem._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ActiveAdvisoryCollectionItemBuilder b) => b;

    factory ActiveAdvisoryCollectionItem([void updates(ActiveAdvisoryCollectionItemBuilder b)]) = _$ActiveAdvisoryCollectionItem;

    @BuiltValueSerializer(custom: true)
    static Serializer<ActiveAdvisoryCollectionItem> get serializer => _$ActiveAdvisoryCollectionItemSerializer();
}

class _$ActiveAdvisoryCollectionItemSerializer implements StructuredSerializer<ActiveAdvisoryCollectionItem> {
    @override
    final Iterable<Type> types = const [ActiveAdvisoryCollectionItem, _$ActiveAdvisoryCollectionItem];

    @override
    final String wireName = r'ActiveAdvisoryCollectionItem';

    @override
    Iterable<Object?> serialize(Serializers serializers, ActiveAdvisoryCollectionItem object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.mailingAddress != null) {
            result
                ..add(r'mailingAddress')
                ..add(serializers.serialize(object.mailingAddress,
                    specifiedType: const FullType(ActiveAdvisoryCollectionMailingAddress)));
        }
        result
            ..add(r'organization')
            ..add(serializers.serialize(object.organization,
                specifiedType: const FullType(ActiveAdvisoryCollectionOrganization)));
        if (object.advisories != null) {
            result
                ..add(r'advisories')
                ..add(serializers.serialize(object.advisories,
                    specifiedType: const FullType(AdvisoryRollup)));
        }
        return result;
    }

    @override
    ActiveAdvisoryCollectionItem deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ActiveAdvisoryCollectionItemBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'mailingAddress':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ActiveAdvisoryCollectionMailingAddress)) as ActiveAdvisoryCollectionMailingAddress;
                    result.mailingAddress.replace(valueDes);
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(ActiveAdvisoryCollectionOrganization)) as ActiveAdvisoryCollectionOrganization;
                    result.organization.replace(valueDes);
                    break;
                case r'advisories':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AdvisoryRollup)) as AdvisoryRollup;
                    result.advisories.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

