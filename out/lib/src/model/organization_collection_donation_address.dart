//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_donation_address.g.dart';

/// Address to send donations to the organization.
///
/// Properties:
/// * [streetAddress1] - First line of the street address.
/// * [streetAddress2] - Second line of the street address.
/// * [city] - City.
/// * [stateOrProvince] - State or province.
/// * [postalCode] - Postal code.
/// * [country] - Country. Note that Charity Navigator currently covers only organizations based in the United States. If the Country is null, empty, or missing, it is safe to assume a US-based address.
abstract class OrganizationCollectionDonationAddress implements Built<OrganizationCollectionDonationAddress, OrganizationCollectionDonationAddressBuilder> {
    /// First line of the street address.
    @BuiltValueField(wireName: r'streetAddress1')
    String? get streetAddress1;

    /// Second line of the street address.
    @BuiltValueField(wireName: r'streetAddress2')
    String? get streetAddress2;

    /// City.
    @BuiltValueField(wireName: r'city')
    String? get city;

    /// State or province.
    @BuiltValueField(wireName: r'stateOrProvince')
    String? get stateOrProvince;

    /// Postal code.
    @BuiltValueField(wireName: r'postalCode')
    String? get postalCode;

    /// Country. Note that Charity Navigator currently covers only organizations based in the United States. If the Country is null, empty, or missing, it is safe to assume a US-based address.
    @BuiltValueField(wireName: r'country')
    String? get country;

    OrganizationCollectionDonationAddress._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionDonationAddressBuilder b) => b;

    factory OrganizationCollectionDonationAddress([void updates(OrganizationCollectionDonationAddressBuilder b)]) = _$OrganizationCollectionDonationAddress;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionDonationAddress> get serializer => _$OrganizationCollectionDonationAddressSerializer();
}

class _$OrganizationCollectionDonationAddressSerializer implements StructuredSerializer<OrganizationCollectionDonationAddress> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionDonationAddress, _$OrganizationCollectionDonationAddress];

    @override
    final String wireName = r'OrganizationCollectionDonationAddress';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionDonationAddress object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.streetAddress1 != null) {
            result
                ..add(r'streetAddress1')
                ..add(serializers.serialize(object.streetAddress1,
                    specifiedType: const FullType(String)));
        }
        if (object.streetAddress2 != null) {
            result
                ..add(r'streetAddress2')
                ..add(serializers.serialize(object.streetAddress2,
                    specifiedType: const FullType(String)));
        }
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
        if (object.postalCode != null) {
            result
                ..add(r'postalCode')
                ..add(serializers.serialize(object.postalCode,
                    specifiedType: const FullType(String)));
        }
        if (object.country != null) {
            result
                ..add(r'country')
                ..add(serializers.serialize(object.country,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    OrganizationCollectionDonationAddress deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionDonationAddressBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'streetAddress1':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.streetAddress1 = valueDes;
                    break;
                case r'streetAddress2':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.streetAddress2 = valueDes;
                    break;
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
                case r'postalCode':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.postalCode = valueDes;
                    break;
                case r'country':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.country = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

