//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_collection_get_lists_response404.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class ListCollectionGetListsResponse404 implements Built<ListCollectionGetListsResponse404, ListCollectionGetListsResponse404Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    ListCollectionGetListsResponse404._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListCollectionGetListsResponse404Builder b) => b;

    factory ListCollectionGetListsResponse404([void updates(ListCollectionGetListsResponse404Builder b)]) = _$ListCollectionGetListsResponse404;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListCollectionGetListsResponse404> get serializer => _$ListCollectionGetListsResponse404Serializer();
}

class _$ListCollectionGetListsResponse404Serializer implements StructuredSerializer<ListCollectionGetListsResponse404> {
    @override
    final Iterable<Type> types = const [ListCollectionGetListsResponse404, _$ListCollectionGetListsResponse404];

    @override
    final String wireName = r'ListCollectionGetListsResponse404';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListCollectionGetListsResponse404 object,
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
    ListCollectionGetListsResponse404 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListCollectionGetListsResponse404Builder();

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

