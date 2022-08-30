import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for CategoryCollectionContentPlanApi
void main() {
  final instance = Openapi().getCategoryCollectionContentPlanApi();

  group(CategoryCollectionContentPlanApi, () {
    // Returns metadata for Charity Navigator's classification hierarchy for charitable Organizations. Category is the top-level classifier, and each category may contain a number of Causes. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    //
    //Future<BuiltList<CategoryCollectionItem>> getCategories(String appId, String appKey) async
    test('test getCategories', () async {
      // TODO
    });

  });
}
