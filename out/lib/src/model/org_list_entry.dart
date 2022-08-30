//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/organization_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'org_list_entry.g.dart';

/// The participation of a individual organization as a member of an OrganizationList.
///
/// Properties:
/// * [rank] - Rank of the organization within its containing group.
/// * [groupDescription] - Description of the group.
/// * [groupName] - Optional name of the group.
/// * [organization] 
abstract class OrgListEntry implements Built<OrgListEntry, OrgListEntryBuilder> {
    /// Rank of the organization within its containing group.
    @BuiltValueField(wireName: r'rank')
    int? get rank;

    /// Description of the group.
    @BuiltValueField(wireName: r'groupDescription')
    String? get groupDescription;

    /// Optional name of the group.
    @BuiltValueField(wireName: r'groupName')
    String? get groupName;

    @BuiltValueField(wireName: r'organization')
    OrganizationLink? get organization;

    OrgListEntry._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrgListEntryBuilder b) => b;

    factory OrgListEntry([void updates(OrgListEntryBuilder b)]) = _$OrgListEntry;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrgListEntry> get serializer => _$OrgListEntrySerializer();
}

class _$OrgListEntrySerializer implements StructuredSerializer<OrgListEntry> {
    @override
    final Iterable<Type> types = const [OrgListEntry, _$OrgListEntry];

    @override
    final String wireName = r'OrgListEntry';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrgListEntry object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.rank != null) {
            result
                ..add(r'rank')
                ..add(serializers.serialize(object.rank,
                    specifiedType: const FullType(int)));
        }
        if (object.groupDescription != null) {
            result
                ..add(r'groupDescription')
                ..add(serializers.serialize(object.groupDescription,
                    specifiedType: const FullType(String)));
        }
        if (object.groupName != null) {
            result
                ..add(r'groupName')
                ..add(serializers.serialize(object.groupName,
                    specifiedType: const FullType(String)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(OrganizationLink)));
        }
        return result;
    }

    @override
    OrgListEntry deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrgListEntryBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'rank':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.rank = valueDes;
                    break;
                case r'groupDescription':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.groupDescription = valueDes;
                    break;
                case r'groupName':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.groupName = valueDes;
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationLink)) as OrganizationLink;
                    result.organization.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

