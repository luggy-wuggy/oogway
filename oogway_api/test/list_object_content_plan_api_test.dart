import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';


/// tests for ListObjectContentPlanApi
void main() {
  final instance = OogwayApi().getListObjectContentPlanApi();

  group(ListObjectContentPlanApi, () {
    // Retrieve a curated or generated list of organizations, published by Charity Navigator. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    //
    //Future<BuiltList> getList(String listID, String appId, String appKey) async
    test('test getList', () async {
      // TODO
    });

  });
}
