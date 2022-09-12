import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';


/// tests for ActiveAdvisoryCollectionApi
void main() {
  final instance = OogwayApi().getActiveAdvisoryCollectionApi();

  group(ActiveAdvisoryCollectionApi, () {
    // Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
    //
    //Future<BuiltList<ActiveAdvisoryCollectionItem>> getAllActiveAdvisories(String appId, String appKey, { int pageSize, int pageNum }) async
    test('test getAllActiveAdvisories', () async {
      // TODO
    });

  });
}
