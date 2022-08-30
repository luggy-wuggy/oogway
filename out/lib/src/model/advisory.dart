//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/advisory_source.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/organization_link.dart';
import 'package:openapi/src/model/severity.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory.g.dart';

/// A cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
///
/// Properties:
/// * [advisoryID] - Unique identifier for this advisory.
/// * [severity] 
/// * [datePublished] - Date when the Advisory was first published.
/// * [dateRemoved] - Date when the Advisory was removed. Advisory can be assumed to be active if dateRemoved is omitted.
/// * [dateModified] - Date when the Advisory most recently modified.
/// * [organization] 
/// * [sources] - Ordered list of Advisory Sources
abstract class Advisory implements Built<Advisory, AdvisoryBuilder> {
    /// Unique identifier for this advisory.
    @BuiltValueField(wireName: r'advisoryID')
    String? get advisoryID;

    @BuiltValueField(wireName: r'severity')
    Severity? get severity;
    // enum severityEnum {  High,  Moderate,  Low,  };

    /// Date when the Advisory was first published.
    @BuiltValueField(wireName: r'datePublished')
    Date? get datePublished;

    /// Date when the Advisory was removed. Advisory can be assumed to be active if dateRemoved is omitted.
    @BuiltValueField(wireName: r'dateRemoved')
    Date? get dateRemoved;

    /// Date when the Advisory most recently modified.
    @BuiltValueField(wireName: r'dateModified')
    Date? get dateModified;

    @BuiltValueField(wireName: r'organization')
    OrganizationLink? get organization;

    /// Ordered list of Advisory Sources
    @BuiltValueField(wireName: r'sources')
    BuiltList<AdvisorySource> get sources;

    Advisory._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisoryBuilder b) => b;

    factory Advisory([void updates(AdvisoryBuilder b)]) = _$Advisory;

    @BuiltValueSerializer(custom: true)
    static Serializer<Advisory> get serializer => _$AdvisorySerializer();
}

class _$AdvisorySerializer implements StructuredSerializer<Advisory> {
    @override
    final Iterable<Type> types = const [Advisory, _$Advisory];

    @override
    final String wireName = r'Advisory';

    @override
    Iterable<Object?> serialize(Serializers serializers, Advisory object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.advisoryID != null) {
            result
                ..add(r'advisoryID')
                ..add(serializers.serialize(object.advisoryID,
                    specifiedType: const FullType(String)));
        }
        if (object.severity != null) {
            result
                ..add(r'severity')
                ..add(serializers.serialize(object.severity,
                    specifiedType: const FullType(Severity)));
        }
        if (object.datePublished != null) {
            result
                ..add(r'datePublished')
                ..add(serializers.serialize(object.datePublished,
                    specifiedType: const FullType(Date)));
        }
        if (object.dateRemoved != null) {
            result
                ..add(r'dateRemoved')
                ..add(serializers.serialize(object.dateRemoved,
                    specifiedType: const FullType(Date)));
        }
        if (object.dateModified != null) {
            result
                ..add(r'dateModified')
                ..add(serializers.serialize(object.dateModified,
                    specifiedType: const FullType(Date)));
        }
        if (object.organization != null) {
            result
                ..add(r'organization')
                ..add(serializers.serialize(object.organization,
                    specifiedType: const FullType(OrganizationLink)));
        }
        result
            ..add(r'sources')
            ..add(serializers.serialize(object.sources,
                specifiedType: const FullType(BuiltList, [FullType(AdvisorySource)])));
        return result;
    }

    @override
    Advisory deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisoryBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'advisoryID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.advisoryID = valueDes;
                    break;
                case r'severity':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Severity)) as Severity;
                    result.severity = valueDes;
                    break;
                case r'datePublished':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.datePublished = valueDes;
                    break;
                case r'dateRemoved':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.dateRemoved = valueDes;
                    break;
                case r'dateModified':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.dateModified = valueDes;
                    break;
                case r'organization':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(OrganizationLink)) as OrganizationLink;
                    result.organization.replace(valueDes);
                    break;
                case r'sources':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(AdvisorySource)])) as BuiltList<AdvisorySource>;
                    result.sources.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

