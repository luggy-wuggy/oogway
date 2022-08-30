import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrganizationObjectApi
void main() {
  final instance = Openapi().getOrganizationObjectApi();

  group(OrganizationObjectApi, () {
    // Retrieve full detail of a single Organization. This is a composite set of information describing an organization that may engage in charitable work. Normally the Organization data structure includes a single legal entity, though legal entity information may be excluded in exceptional cases.
    //
    //Future<OrganizationObject> getOrganization(String ein, String appId, String appKey) async
    test('test getOrganization', () async {
      // TODO
    });

  });
}
