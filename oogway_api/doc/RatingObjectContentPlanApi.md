# oogway_api.api.RatingObjectContentPlanApi

## Load the API package
```dart
import 'package:oogway_api/api.dart';
```

All URIs are relative to *https://api.data.charitynavigator.org/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRating**](RatingObjectContentPlanApi.md#getrating) | **GET** /Organizations/{ein}/Ratings/{RatingID} | 


# **getRating**
> RatingObject getRating(ein, ratingID, appId, appKey)



Retrieve a single Rating object for an Organization. Each rating is listed once, under its primary `referenceOrganization`. Note that the rating may apply to other organizations, and this is represented by `includedOrganizations`, which is a collection of hyperlinks to all of the organizations to which the rating applies. The rating is a point-in-time assessment provided by Charity Navigator, along with related metrics and ratios taken from financial statements for a fiscal year, on which the rating is based. <br/> ![Content Subscription](https://cdn2.hubspot.net/hubfs/597611/CharityNavigator/FA-Data-Table-16.png \"Included with the paid Content Subscription.\")

### Example
```dart
import 'package:oogway_api/api.dart';

final api = OogwayApi().getRatingObjectContentPlanApi();
final String ein = ein_example; // String | 
final String ratingID = ratingID_example; // String | 
final String appId = appId_example; // String | 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
final String appKey = appKey_example; // String | 3Scale App Key: a secret key to authenticate the assigned App ID.

try {
    final response = api.getRating(ein, ratingID, appId, appKey);
    print(response);
} catch on DioError (e) {
    print('Exception when calling RatingObjectContentPlanApi->getRating: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ein** | **String**|  | 
 **ratingID** | **String**|  | 
 **appId** | **String**| 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal. | 
 **appKey** | **String**| 3Scale App Key: a secret key to authenticate the assigned App ID. | 

### Return type

[**RatingObject**](RatingObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

