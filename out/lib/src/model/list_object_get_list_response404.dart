//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_object_get_list_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class ListObjectGetListResponse404 implements Built<ListObjectGetListResponse404, ListObjectGetListResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    ListObjectGetListResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListObjectGetListResponse404Builder b) => b;

    factory ListObjectGetListResponse404([void updates(ListObjectGetListResponse404Builder b)]) = _$ListObjectGetListResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListObjectGetListResponse404> get serializer => _$ListObjectGetListResponse404Serializer();
}

class _$ListObjectGetListResponse404Serializer implements StructuredSerializer<ListObjectGetListResponse404> {
    @override
    final Iterable<Type> types = const [ListObjectGetListResponse404, _$ListObjectGetListResponse404];

    @override
    final String wireName = r'ListObjectGetListResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListObjectGetListResponse404 object,
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
    ListObjectGetListResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListObjectGetListResponse404Builder();

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

