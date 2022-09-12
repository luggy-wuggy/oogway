import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';


/// tests for AdvisoryCollectionApi
void main() {
  final instance = OogwayApi().getAdvisoryCollectionApi();

  group(AdvisoryCollectionApi, () {
    // Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
    //
    //Future<BuiltList<AdvisoryCollectionItem>> getAdvisories(String ein, String appId, String appKey, { int pageSize, int pageNum, String status }) async
    test('test getAdvisories', () async {
      // TODO
    });

  });
}
