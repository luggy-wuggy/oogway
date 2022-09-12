//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'active_advisory_collection_mailing_address.g.dart';

/// Mailing address of the organization.
///
/// Properties:
/// * [city] - City.
/// * [stateOrProvince] - State or province.
abstract class ActiveAdvisoryCollectionMailingAddress implements Built<ActiveAdvisoryCollectionMailingAddress, ActiveAdvisoryCollectionMailingAddressBuilder> {
    /// City.
    @BuiltValueField(wireName: r'city')
    String? get city;

    /// State or province.
    @BuiltValueField(wireName: r'stateOrProvince')
    String? get stateOrProvince;

    ActiveAdvisoryCollectionMailingAddress._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ActiveAdvisoryCollectionMailingAddressBuilder b) => b;

    factory ActiveAdvisoryCollectionMailingAddress([void updates(ActiveAdvisoryCollectionMailingAddressBuilder b)]) = _$ActiveAdvisoryCollectionMailingAddress;

    @BuiltValueSerializer(custom: true)
    static Serializer<ActiveAdvisoryCollectionMailingAddress> get serializer => _$ActiveAdvisoryCollectionMailingAddressSerializer();
}

class _$ActiveAdvisoryCollectionMailingAddressSerializer implements StructuredSerializer<ActiveAdvisoryCollectionMailingAddress> {
    @override
    final Iterable<Type> types = const [ActiveAdvisoryCollectionMailingAddress, _$ActiveAdvisoryCollectionMailingAddress];

    @override
    final String wireName = r'ActiveAdvisoryCollectionMailingAddress';

    @override
    Iterable<Object?> serialize(Serializers serializers, ActiveAdvisoryCollectionMailingAddress object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.city != null) {
            result
                ..add(r'city')
                ..add(serializers.serialize(object.city,
                    specifiedType: const FullType(String)));
        }
        if (object.stateOrProvince != null) {
            result
                ..add(r'stateOrProvince')
                ..add(serializers.serialize(object.stateOrProvince,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ActiveAdvisoryCollectionMailingAddress deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ActiveAdvisoryCollectionMailingAddressBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'city':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.city = valueDes;
                    break;
                case r'stateOrProvince':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.stateOrProvince = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

