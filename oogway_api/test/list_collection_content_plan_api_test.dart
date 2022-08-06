import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';


/// tests for ListCollectionContentPlanApi
void main() {
  final instance = OogwayApi().getListCollectionContentPlanApi();

  group(ListCollectionContentPlanApi, () {
    // Retrieve a set of Lists defined in Charity Navigator. Each entry in this collection is a curated or generated list of organizations, published by Charity Navigator. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    //
    //Future<BuiltList<ListObjectLink>> getLists(String appId, String appKey, { int pageSize, int pageNum }) async
    test('test getLists', () async {
      // TODO
    });

  });
}
