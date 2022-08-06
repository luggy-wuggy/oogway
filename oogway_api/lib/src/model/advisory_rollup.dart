//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/severity.dart';
import 'package:oogway_api/src/model/advisory_collection_link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_rollup.g.dart';

/// A rolled up summary of the active advisory records of an organization. If the organization does not have any active advisory records, severity will have a NULL value
///
/// Properties:
/// * [severity] 
/// * [active] 
abstract class AdvisoryRollup implements Built<AdvisoryRollup, AdvisoryRollupBuilder> {
    @BuiltValueField(wireName: r'severity')
    Severity? get severity;
    // enum severityEnum {  High,  Moderate,  Low,  };

    @BuiltValueField(wireName: r'active')
    AdvisoryCollectionLink? get active;

    AdvisoryRollup._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryRollupBuilder b) => b;

    factory AdvisoryRollup([void updates(AdvisoryRollupBuilder b)]) = _$AdvisoryRollup;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisoryRollup> get serializer => _$AdvisoryRollupSerializer();
}

class _$AdvisoryRollupSerializer implements StructuredSerializer<AdvisoryRollup> {
    @override
    final Iterable<Type> types = const [AdvisoryRollup, _$AdvisoryRollup];

    @override
    final String wireName = r'AdvisoryRollup';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisoryRollup object,
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
    AdvisoryRollup deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryRollupBuilder();

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

