import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for OrganizationCollectionApi
void main() {
  final instance = Openapi().getOrganizationCollectionApi();

  group(OrganizationCollectionApi, () {
    // Retrieve a list of the organizations available in the Charity Navigator Data Store. Allows paged retrieval, simple and advanced searching.
    //
    //Future<BuiltList<OrganizationCollectionItem>> searchOrganizations(String appId, String appKey, { int pageSize, int pageNum, String search, String searchType, bool rated, String categoryID, String causeID, bool fundraisingOrgs, String state, String city, String zip, int minRating, int maxRating, int sizeRange, bool donorPrivacy, int scopeOfWork, bool cfcCharities, bool noGovSupport, String sort }) async
    test('test searchOrganizations', () async {
      // TODO
    });

  });
}
