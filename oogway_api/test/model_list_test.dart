import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';

// tests for ModelList
void main() {
  final instance = ModelListBuilder();
  // TODO add properties to the builder and call build()

  group(ModelList, () {
    // Unique ID for the list, assigned by Charity Navigator.
    // String listID
    test('to test the property `listID`', () async {
      // TODO
    });

    // Name of the list.
    // String listName
    test('to test the property `listName`', () async {
      // TODO
    });

    // A general classification of the list.
    // String listType
    test('to test the property `listType`', () async {
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

    // Short list description.
    // String listAbstract
    test('to test the property `listAbstract`', () async {
      // TODO
    });

    // Long list description.
    // String listExplanation
    test('to test the property `listExplanation`', () async {
      // TODO
    });

    // URL for an image representing the List.
    // String listImageURL
    test('to test the property `listImageURL`', () async {
      // TODO
    });

    // URL to the List page on Charity Navigator's website.
    // String charityNavigatorURL
    test('to test the property `charityNavigatorURL`', () async {
      // TODO
    });

    // Groups of organizations within the list. May be a single, unnamed group in the case of a flat list.
    // BuiltList<OrganizationGroup> groups
    test('to test the property `groups`', () async {
      // TODO
    });

  });
}
