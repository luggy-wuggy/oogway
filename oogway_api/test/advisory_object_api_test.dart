import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';


/// tests for AdvisoryObjectApi
void main() {
  final instance = OogwayApi().getAdvisoryObjectApi();

  group(AdvisoryObjectApi, () {
    // Retrieve full details of a single Advisory, under a given organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.
    //
    //Future<Advisory> getAdvisory(String ein, String advisoryID, String appId, String appKey) async
    test('test getAdvisory', () async {
      // TODO
    });

  });
}
