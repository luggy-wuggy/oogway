import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for ListObjectLink
void main() {
  final instance = ListObjectLinkBuilder();
  // TODO add properties to the builder and call build()

  group(ListObjectLink, () {
    // A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    // BuiltMap<String, JsonObject> links
    test('to test the property `links`', () async {
      // TODO
    });

    // Unique ID for the list, assigned by Charity Navigator.
    // String listID
    test('to test the property `listID`', () async {
      // TODO
    });

    // A general classification of the list.
    // String listType
    test('to test the property `listType`', () async {
      // TODO
    });

    // Name of the list.
    // String listName
    test('to test the property `listName`', () async {
      // TODO
    });

    // Short list description.
    // String listAbstract
    test('to test the property `listAbstract`', () async {
      // TODO
    });

    // URL for an image representing the List.
    // String listImageURL
    test('to test the property `listImageURL`', () async {
      // TODO
    });

    // Boolean field, true is list is currently featured on site.
    // bool isCurrentlyFeatured
    test('to test the property `isCurrentlyFeatured`', () async {
      // TODO
    });

    // If list is currently featured, the sort order it is currently displayed in.
    // int sortOrder
    test('to test the property `sortOrder`', () async {
      // TODO
    });

  });
}
