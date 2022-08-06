//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'icon_set.g.dart';

/// A set of URLs different sized icons with the same underlying meaning.
///
/// Properties:
/// * [small] 
/// * [large] 
abstract class IconSet implements Built<IconSet, IconSetBuilder> {
    @BuiltValueField(wireName: r'small')
    String? get small;

    @BuiltValueField(wireName: r'large')
    String? get large;

    IconSet._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(IconSetBuilder b) => b;

    factory IconSet([void updates(IconSetBuilder b)]) = _$IconSet;

    @BuiltValueSerializer(custom: true)
    static Serializer<IconSet> get serializer => _$IconSetSerializer();
}

class _$IconSetSerializer implements StructuredSerializer<IconSet> {
    @override
    final Iterable<Type> types = const [IconSet, _$IconSet];

    @override
    final String wireName = r'IconSet';

    @override
    Iterable<Object?> serialize(Serializers serializers, IconSet object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.small != null) {
            result
                ..add(r'small')
                ..add(serializers.serialize(object.small,
                    specifiedType: const FullType(String)));
        }
        if (object.large != null) {
            result
                ..add(r'large')
                ..add(serializers.serialize(object.large,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    IconSet deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = IconSetBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'small':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.small = valueDes;
                    break;
                case r'large':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.large = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

