//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_collection_get_lists_response400.g.dart';

/// A generic structure to carry information about an error response from from the service.
///
/// Properties:
/// * [errorMessage] 
abstract class ListCollectionGetListsResponse400 implements Built<ListCollectionGetListsResponse400, ListCollectionGetListsResponse400Builder> {
    @BuiltValueField(wireName: r'errorMessage')
    String? get errorMessage;

    ListCollectionGetListsResponse400._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(ListCollectionGetListsResponse400Builder b) => b;

    factory ListCollectionGetListsResponse400([void updates(ListCollectionGetListsResponse400Builder b)]) = _$ListCollectionGetListsResponse400;

    @BuiltValueSerializer(custom: true)
    static Serializer<ListCollectionGetListsResponse400> get serializer => _$ListCollectionGetListsResponse400Serializer();
}

class _$ListCollectionGetListsResponse400Serializer implements StructuredSerializer<ListCollectionGetListsResponse400> {
    @override
    final Iterable<Type> types = const [ListCollectionGetListsResponse400, _$ListCollectionGetListsResponse400];

    @override
    final String wireName = r'ListCollectionGetListsResponse400';

    @override
    Iterable<Object?> serialize(Serializers serializers, ListCollectionGetListsResponse400 object,
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
    ListCollectionGetListsResponse400 deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ListCollectionGetListsResponse400Builder();

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

