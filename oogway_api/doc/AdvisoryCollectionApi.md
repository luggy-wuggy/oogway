# oogway_api.api.AdvisoryCollectionApi

## Load the API package
```dart
import 'package:oogway_api/api.dart';
```

All URIs are relative to *https://api.data.charitynavigator.org/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAdvisories**](AdvisoryCollectionApi.md#getadvisories) | **GET** /Organizations/{ein}/Advisories | 


# **getAdvisories**
> BuiltList<AdvisoryCollectionItem> getAdvisories(ein, appId, appKey, pageSize, pageNum, status)



Retrieve the full set of Charity Navigator advisories for a specified organization. An advisory is a cautionary communication from Charity Navigator, advising of unusual events or behavior related to a known organization.

### Example
```dart
import 'package:oogway_api/api.dart';

final api = OogwayApi().getAdvisoryCollectionApi();
final String ein = ein_example; // String | 
final String appId = appId_example; // String | 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal.
final String appKey = appKey_example; // String | 3Scale App Key: a secret key to authenticate the assigned App ID.
final int pageSize = 56; // int | Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000.
final int pageNum = 56; // int | Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error.
final String status = status_example; // String | .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400.

try {
    final response = api.getAdvisories(ein, appId, appKey, pageSize, pageNum, status);
    print(response);
} catch on DioError (e) {
    print('Exception when calling AdvisoryCollectionApi->getAdvisories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ein** | **String**|  | 
 **appId** | **String**| 3Scale App ID: unique identifier for an application registered in the Charity Navigator  developer portal. | 
 **appKey** | **String**| 3Scale App Key: a secret key to authenticate the assigned App ID. | 
 **pageSize** | **int**| Number of objects to return in a single response message. Used in combination with `pageNum` for paged responses. Default value is 100.  If specified, must be an integer value between 1 and 1,000. | [optional] 
 **pageNum** | **int**| Page number to return, in case the number of available objects in the result set is greater than the specified or default `pageSize`. Default value is 1. If the value of pageNum is greater than the number of pages in the result set, the method will return a 404 error. If the requested starting position, computed as `((pageNum-1) * pageSize) + 1`, is greater than the maximum supported result size of 10,000 objects, the method will return a 400 error. | [optional] 
 **status** | **String**| .An optional filter parameter to limit the Advisories returned, based on .status: . .| Status Value | Advisories Included                                 | .| ------------ | --------------------------------------------------- | .| ALL | All advisories included, regardless of status.      | .| ACTIVE       | Includes only advisories that are currently active. | .| REMOVED      | Includes only advisories that have been removed.    | . .Omitting the status property is the equivalent of specifying ALL. Any value .other than the ones listed above will result in an HTTP error 400. | [optional] 

### Return type

[**BuiltList&lt;AdvisoryCollectionItem&gt;**](AdvisoryCollectionItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
