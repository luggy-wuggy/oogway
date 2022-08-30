import 'package:test/test.dart';
import 'package:openapi/openapi.dart';

// tests for OrganizationLink
void main() {
  final instance = OrganizationLinkBuilder();
  // TODO add properties to the builder and call build()

  group(OrganizationLink, () {
    // The federal Employer Identification Number for the charitable organization. May be set to a system-assigned value in cases where the organization is fictitious, or the real EIN is not available.
    // String ein
    test('to test the property `ein`', () async {
      // TODO
    });

    // Name of the charitable organization.
    // String charityName
    test('to test the property `charityName`', () async {
      // TODO
    });

    // A set of inbound hyperlinks to a domain object. Each property maps a [link relation](https://www.iana.org/assignments/link-relations/link-relations.xhtml) (the property name) to a hyperlink object (the property values). 
    // BuiltMap<String, JsonObject> links
    test('to test the property `links`', () async {
      // TODO
    });

  });
}
