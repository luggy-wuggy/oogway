//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:oogway_api/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'advisory_source.g.dart';

/// A synopsis of an event or reference that triggers or provides additional details for an Advisory.
///
/// Properties:
/// * [datePublished] - Date when the Advisory Source was published.
/// * [dateRemoved] - Date when the Advisory Source was removed.  The Advisory Source can be assumed to ba active if dateRemoved is omitted.
/// * [dateModified] - Date when the Advisory Source was most recently modified.
/// * [publisher] - Name of the Advisory Source publisher.
/// * [url] - URL referring to the Advisory Source.
/// * [summary] - A summary description of the Advisory Source.
abstract class AdvisorySource implements Built<AdvisorySource, AdvisorySourceBuilder> {
    /// Date when the Advisory Source was published.
    @BuiltValueField(wireName: r'datePublished')
    Date? get datePublished;

    /// Date when the Advisory Source was removed.  The Advisory Source can be assumed to ba active if dateRemoved is omitted.
    @BuiltValueField(wireName: r'dateRemoved')
    Date? get dateRemoved;

    /// Date when the Advisory Source was most recently modified.
    @BuiltValueField(wireName: r'dateModified')
    Date? get dateModified;

    /// Name of the Advisory Source publisher.
    @BuiltValueField(wireName: r'publisher')
    String? get publisher;

    /// URL referring to the Advisory Source.
    @BuiltValueField(wireName: r'url')
    String? get url;

    /// A summary description of the Advisory Source.
    @BuiltValueField(wireName: r'summary')
    String? get summary;

    AdvisorySource._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(AdvisorySourceBuilder b) => b;

    factory AdvisorySource([void updates(AdvisorySourceBuilder b)]) = _$AdvisorySource;

    @BuiltValueSerializer(custom: true)
    static Serializer<AdvisorySource> get serializer => _$AdvisorySourceSerializer();
}

class _$AdvisorySourceSerializer implements StructuredSerializer<AdvisorySource> {
    @override
    final Iterable<Type> types = const [AdvisorySource, _$AdvisorySource];

    @override
    final String wireName = r'AdvisorySource';

    @override
    Iterable<Object?> serialize(Serializers serializers, AdvisorySource object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
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
        if (object.publisher != null) {
            result
                ..add(r'publisher')
                ..add(serializers.serialize(object.publisher,
                    specifiedType: const FullType(String)));
        }
        if (object.url != null) {
            result
                ..add(r'url')
                ..add(serializers.serialize(object.url,
                    specifiedType: const FullType(String)));
        }
        if (object.summary != null) {
            result
                ..add(r'summary')
                ..add(serializers.serialize(object.summary,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    AdvisorySource deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AdvisorySourceBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
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
                case r'publisher':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.publisher = valueDes;
                    break;
                case r'url':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.url = valueDes;
                    break;
                case r'summary':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.summary = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

