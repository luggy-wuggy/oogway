//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:openapi/src/model/form990.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/icon_set.dart';
import 'package:openapi/src/model/date.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rating_link.g.dart';

/// RatingLink
///
/// Properties:
/// * [ratingID] - Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [score] - Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
/// * [rating] - Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
/// * [publicationDate] - Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
/// * [ratingImage] 
/// * [form990] 
/// * [links] - A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
abstract class RatingLink implements Built<RatingLink, RatingLinkBuilder> {
    /// Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'ratingID')
    String? get ratingID;

    /// Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    @BuiltValueField(wireName: r'score')
    num? get score;

    /// Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
    @BuiltValueField(wireName: r'rating')
    int? get rating;

    /// Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
    @BuiltValueField(wireName: r'publicationDate')
    Date? get publicationDate;

    @BuiltValueField(wireName: r'ratingImage')
    IconSet? get ratingImage;

    @BuiltValueField(wireName: r'form990')
    Form990? get form990;

    /// A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    @BuiltValueField(wireName: r'_links')
    BuiltMap<String, JsonObject> get links;

    RatingLink._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(RatingLinkBuilder b) => b;

    factory RatingLink([void updates(RatingLinkBuilder b)]) = _$RatingLink;

    @BuiltValueSerializer(custom: true)
    static Serializer<RatingLink> get serializer => _$RatingLinkSerializer();
}

class _$RatingLinkSerializer implements StructuredSerializer<RatingLink> {
    @override
    final Iterable<Type> types = const [RatingLink, _$RatingLink];

    @override
    final String wireName = r'RatingLink';

    @override
    Iterable<Object?> serialize(Serializers serializers, RatingLink object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.ratingID != null) {
            result
                ..add(r'ratingID')
                ..add(serializers.serialize(object.ratingID,
                    specifiedType: const FullType(String)));
        }
        if (object.score != null) {
            result
                ..add(r'score')
                ..add(serializers.serialize(object.score,
                    specifiedType: const FullType(num)));
        }
        if (object.rating != null) {
            result
                ..add(r'rating')
                ..add(serializers.serialize(object.rating,
                    specifiedType: const FullType(int)));
        }
        if (object.publicationDate != null) {
            result
                ..add(r'publicationDate')
                ..add(serializers.serialize(object.publicationDate,
                    specifiedType: const FullType(Date)));
        }
        if (object.ratingImage != null) {
            result
                ..add(r'ratingImage')
                ..add(serializers.serialize(object.ratingImage,
                    specifiedType: const FullType(IconSet)));
        }
        if (object.form990 != null) {
            result
                ..add(r'form990')
                ..add(serializers.serialize(object.form990,
                    specifiedType: const FullType(Form990)));
        }
        result
            ..add(r'_links')
            ..add(serializers.serialize(object.links,
                specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])));
        return result;
    }

    @override
    RatingLink deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RatingLinkBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'ratingID':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.ratingID = valueDes;
                    break;
                case r'score':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(num)) as num;
                    result.score = valueDes;
                    break;
                case r'rating':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.rating = valueDes;
                    break;
                case r'publicationDate':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Date)) as Date;
                    result.publicationDate = valueDes;
                    break;
                case r'ratingImage':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(IconSet)) as IconSet;
                    result.ratingImage.replace(valueDes);
                    break;
                case r'form990':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Form990)) as Form990;
                    result.form990.replace(valueDes);
                    break;
                case r'_links':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(JsonObject)])) as BuiltMap<String, JsonObject>;
                    result.links.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

