import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for RatingLink
void main() {
  final instance = RatingLinkBuilder();
  // TODO add properties to the builder and call build()

  group(RatingLink, () {
    // Unique identifier for this Rating. <br/> ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    // String ratingID
    test('to test the property `ratingID`', () async {
      // TODO
    });

    // Overall score, out of a possible 100, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    // num score
    test('to test the property `score`', () async {
      // TODO
    });

    // Overall rating, on a four-star scale, based on a two-dimensional analysis of financial health and accountability. [Learn More](https://www.charitynavigator.org/index.cfm?bay=content.view&cpid=1287) ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\")
    // int rating
    test('to test the property `rating`', () async {
      // TODO
    });

    // Date the Rating was published ![Rated Charities Only](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/Blue_Star-16.png \"Only available for rated charities.\") ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\") <br/>
    // Date publicationDate
    test('to test the property `publicationDate`', () async {
      // TODO
    });

    // IconSet ratingImage
    test('to test the property `ratingImage`', () async {
      // TODO
    });

    // Form990 form990
    test('to test the property `form990`', () async {
      // TODO
    });

    // A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    // BuiltMap<String, JsonObject> links
    test('to test the property `links`', () async {
      // TODO
    });

  });
}
