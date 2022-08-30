import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for RatingCollectionContentPlanApi
void main() {
  final instance = Openapi().getRatingCollectionContentPlanApi();

  group(RatingCollectionContentPlanApi, () {
    // Retrieve all Charity Navigator ratings for a single organization. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    //
    //Future<BuiltList<RatingLink>> getRatings(String ein, String appId, String appKey, { int pageSize, int pageNum }) async
    test('test getRatings', () async {
      // TODO
    });

  });
}
