import 'package:test/test.dart';
import 'package:oogway_api/oogway_api.dart';


/// tests for RatingObjectContentPlanApi
void main() {
  final instance = OogwayApi().getRatingObjectContentPlanApi();

  group(RatingObjectContentPlanApi, () {
    // Retrieve a single Rating object for an Organization. Each rating is listed once, under its primary `referenceOrganization`. Note that the rating may apply to other organizations, and this is represented by `includedOrganizations`, which is a collection of hyperlinks to all of the organizations to which the rating applies. The rating is a point-in-time assessment provided by Charity Navigator, along with related metrics and ratios taken from financial statements for a fiscal year, on which the rating is based. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")
    //
    //Future<RatingObject> getRating(String ein, String ratingID, String appId, String appKey) async
    test('test getRating', () async {
      // TODO
    });

  });
}