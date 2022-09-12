//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_object_get_list_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class ListObjectGetListResponse400 implements Built<ListObjectGetListResponse400, ListObjectGetListResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    ListObjectGetListResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListObjectGetListResponse400Builder b) => b;

    factory ListObjectGetListResponse400([void updates(ListObjectGetListResponse400Builder b)]) = _$ListObjectGetListResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListObjectGetListResponse400> get serializer => _$ListObjectGetListResponse400Serializer();
}

class _$ListObjectGetListResponse400Serializer implements StructuredSerializer<ListObjectGetListResponse400> {
    @override
    final Iterable<Type> types = const [ListObjectGetListResponse400, _$ListObjectGetListResponse400];

    @override
    final String wireName = r'ListObjectGetListResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListObjectGetListResponse400 object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.errorMessage != null) {
            result
                ..add(r'errorMessage')
                ..add(serializers.serialize(object.errorMessage,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ListObjectGetListResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListObjectGetListResponse400Builder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'errorMessage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.errorMessage = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

