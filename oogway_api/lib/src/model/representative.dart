//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'representative.g.dart';

/// An officer or other individual in a specified role within an Organization.
///
/// Properties:
/// * [name] - The name of the indivdual holding this position within the organization <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [title] - The title of this individual at this organization <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
abstract class Representative implements Built<Representative, RepresentativeBuilder> {
    /// The name of the indivdual holding this position within the organization <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'name')
    String? get name;

    /// The title of this individual at this organization <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'title')
    String? get title;

    Representative._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RepresentativeBuilder b) => b;

    factory Representative([void updates(RepresentativeBuilder b)]) = _$Representative;

    @BuiltValueSerializer(custom: true)
    static Serializer<Representative> get serializer => _$RepresentativeSerializer();
}

class _$RepresentativeSerializer implements StructuredSerializer<Representative> {
    @override
    final Iterable<Type> types = const [Representative, _$Representative];

    @override
    final String wireName = r'Representative';

    @override
    Iterable<Object?> serialize(Serializers serializers, Representative object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    Representative deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RepresentativeBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'name':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.name = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

