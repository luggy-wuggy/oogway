//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:oogway_api/src/model/org_list_entry.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_group.g.dart';

/// A group of organization entries contained within a List. A composite \"List of Lists\" will have multiple named groups. A flat List of organizations will have a single, unnamed group.
///
/// Properties:
/// * [groupName] - Optional name of the group.
/// * [groupDescription] - Description of the group.
/// * [organizations] - Organization entries in the list.
abstract class OrganizationGroup implements Built<OrganizationGroup, OrganizationGroupBuilder> {
    /// Optional name of the group.
    @BuiltValueField(wireName: r'groupName')
    String? get groupName;

    /// Description of the group.
    @BuiltValueField(wireName: r'groupDescription')
    String? get groupDescription;

    /// Organization entries in the list.
    @BuiltValueField(wireName: r'organizations')
    BuiltList<OrgListEntry>? get organizations;

    OrganizationGroup._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationGroupBuilder b) => b;

    factory OrganizationGroup([void updates(OrganizationGroupBuilder b)]) = _$OrganizationGroup;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationGroup> get serializer => _$OrganizationGroupSerializer();
}

class _$OrganizationGroupSerializer implements StructuredSerializer<OrganizationGroup> {
    @override
    final Iterable<Type> types = const [OrganizationGroup, _$OrganizationGroup];

    @override
    final String wireName = r'OrganizationGroup';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationGroup object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.groupName != null) {
            result
                ..add(r'groupName')
                ..add(serializers.serialize(object.groupName,
                    specifiedType: const FullType(String)));
        }
        if (object.groupDescription != null) {
            result
                ..add(r'groupDescription')
                ..add(serializers.serialize(object.groupDescription,
                    specifiedType: const FullType(String)));
        }
        if (object.organizations != null) {
            result
                ..add(r'organizations')
                ..add(serializers.serialize(object.organizations,
                    specifiedType: const FullType(BuiltList, [FullType(OrgListEntry)])));
        }
        return result;
    }

    @override
    OrganizationGroup deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationGroupBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'groupName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.groupName = valueDes;
                    break;
                case r'groupDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.groupDescription = valueDes;
                    break;
                case r'organizations':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(OrgListEntry)])) as BuiltList<OrgListEntry>;
                    result.organizations.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

