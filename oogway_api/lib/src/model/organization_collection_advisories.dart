//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/severity.dart';
import 'package:oogway_api/src/model/advisory_collection_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'organization_collection_advisories.g.dart';

/// Advisories related to the organization that are currently in effect.
///
/// Properties:
/// * [severity] 
/// * [active] 
abstract class OrganizationCollectionAdvisories implements Built<OrganizationCollectionAdvisories, OrganizationCollectionAdvisoriesBuilder> {
    @BuiltValueField(wireName: r'severity')
    Severity? get severity;
    // enum severityEnum {  High,  Moderate,  Low,  };

    @BuiltValueField(wireName: r'active')
    AdvisoryCollectionLink? get active;

    OrganizationCollectionAdvisories._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(OrganizationCollectionAdvisoriesBuilder b) => b;

    factory OrganizationCollectionAdvisories([void updates(OrganizationCollectionAdvisoriesBuilder b)]) = _$OrganizationCollectionAdvisories;

    @BuiltValueSerializer(custom: true)
    static Serializer<OrganizationCollectionAdvisories> get serializer => _$OrganizationCollectionAdvisoriesSerializer();
}

class _$OrganizationCollectionAdvisoriesSerializer implements StructuredSerializer<OrganizationCollectionAdvisories> {
    @override
    final Iterable<Type> types = const [OrganizationCollectionAdvisories, _$OrganizationCollectionAdvisories];

    @override
    final String wireName = r'OrganizationCollectionAdvisories';

    @override
    Iterable<Object?> serialize(Serializers serializers, OrganizationCollectionAdvisories object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.severity != null) {
            result
                ..add(r'severity')
                ..add(serializers.serialize(object.severity,
                    specifiedType: const FullType(Severity)));
        }
        if (object.active != null) {
            result
                ..add(r'active')
                ..add(serializers.serialize(object.active,
                    specifiedType: const FullType(AdvisoryCollectionLink)));
        }
        return result;
    }

    @override
    OrganizationCollectionAdvisories deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = OrganizationCollectionAdvisoriesBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'severity':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Severity)) as Severity;
                    result.severity = valueDes;
                    break;
                case r'active':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AdvisoryCollectionLink)) as AdvisoryCollectionLink;
                    result.active.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

