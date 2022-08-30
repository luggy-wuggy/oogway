import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for Advisory
void main() {
  final instance = AdvisoryBuilder();
  // TODO add properties to the builder and call build()

  group(Advisory, () {
    // Unique identifier for this advisory.
    // String advisoryID
    test('to test the property `advisoryID`', () async {
      // TODO
    });

    // Severity severity
    test('to test the property `severity`', () async {
      // TODO
    });

    // Date when the Advisory was first published.
    // Date datePublished
    test('to test the property `datePublished`', () async {
      // TODO
    });

    // Date when the Advisory was removed. Advisory can be assumed to be active if dateRemoved is omitted.
    // Date dateRemoved
    test('to test the property `dateRemoved`', () async {
      // TODO
    });

    // Date when the Advisory most recently modified.
    // Date dateModified
    test('to test the property `dateModified`', () async {
      // TODO
    });

    // OrganizationLink organization
    test('to test the property `organization`', () async {
      // TODO
    });

    // Ordered list of Advisory Sources
    // BuiltList<AdvisorySource> sources
    test('to test the property `sources`', () async {
      // TODO
    });

  });
}
